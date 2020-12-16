package com.vuforia.ar.pl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public class SensorController
  extends HandlerThread
  implements SensorEventListener
{
  private static final int AR_SENSOR_CONFIDENCE_HIGH = 4;
  private static final int AR_SENSOR_CONFIDENCE_LOW = 2;
  private static final int AR_SENSOR_CONFIDENCE_MEDIUM = 3;
  private static final int AR_SENSOR_CONFIDENCE_UNKNOWN = 0;
  private static final int AR_SENSOR_CONFIDENCE_UNRELIABLE = 1;
  private static int AR_SENSOR_INDEX_DONTCARE = -1;
  private static final int AR_SENSOR_PARAMTYPE_ACCURACY = -2147483640;
  private static final int AR_SENSOR_PARAMTYPE_BASE = -2147483648;
  private static final int AR_SENSOR_PARAMTYPE_DATARANGE_MAX = -2147483646;
  private static final int AR_SENSOR_PARAMTYPE_DATARANGE_MIN = -2147483647;
  private static final int AR_SENSOR_PARAMTYPE_RESOLUTION = -2147483644;
  private static final int AR_SENSOR_PARAMTYPE_SENSITIVITY = -2147483632;
  private static final int AR_SENSOR_PARAMTYPE_UPDATEINTERVAL = -2147483616;
  private static final int AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_ABSTRACT = -2147483584;
  private static final int AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_ENFORCED = -2147483392;
  private static final int AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_MIN = -2147483520;
  private static final int AR_SENSOR_STATUS_IDLE = 1342242818;
  private static final int AR_SENSOR_STATUS_RUNNING = 1342242819;
  private static final int AR_SENSOR_STATUS_UNINITIALIZED = 1342242817;
  private static final int AR_SENSOR_STATUS_UNKNOWN = 1342242816;
  private static final int AR_SENSOR_TYPE_ACCELEROMETER = 1342177282;
  private static final int AR_SENSOR_TYPE_AMBIENT_LIGHT = 1342177286;
  private static final int AR_SENSOR_TYPE_DEVICE_ROTATION = 1342177288;
  private static final int AR_SENSOR_TYPE_GYROSCOPE = 1342177281;
  private static final int AR_SENSOR_TYPE_MAGNETOMETER = 1342177283;
  private static final int AR_SENSOR_TYPE_PROXIMITY = 1342177285;
  private static final int AR_SENSOR_TYPE_STEP_DETECTOR = 1342177287;
  private static final int AR_SENSOR_TYPE_UNKNOWN = 1342177280;
  private static final int AR_SENSOR_UPDATEINTERVAL_HIGHESTRATE = 4;
  private static final int AR_SENSOR_UPDATEINTERVAL_HIGHRATE = 3;
  private static final int AR_SENSOR_UPDATEINTERVAL_LOWRATE = 1;
  private static final int AR_SENSOR_UPDATEINTERVAL_MEDIUMRATE = 2;
  private static final int AR_SENSOR_UPDATEINTERVAL_UNKNOWN = 0;
  private static boolean CONVERT_FORMAT_TO_ANDROID = false;
  private static boolean CONVERT_FORMAT_TO_PL = false;
  private static final String MODULENAME = "SensorController";
  private static final int SENSORINFO_VALUE_ANDROIDSENSORTYPE = 1;
  private static final int SENSORINFO_VALUE_ISDEFAULT = 2;
  private static final int SENSORINFO_VALUE_PLSENSORTYPE = 0;
  private static final int[] SENSOR_TYPE_CONVERSIONTABLE = { 4, 1342177281, 1, 1342177282, 2, 1342177283, 8, 1342177285, 5, 1342177286, 18, 1342177287, 11, 1342177288 };
  private static final int _NUM_SENSORINFO_VALUE_ = 3;
  private Vector<SensorCacheInfo> sensorCacheInfo = null;
  private Handler sensorEventHandler;
  private HashMap<Sensor, Integer> sensorIndexMap = null;
  private SensorManager sensorManager;
  
  static
  {
    CONVERT_FORMAT_TO_PL = true;
    CONVERT_FORMAT_TO_ANDROID = false;
  }
  
  public SensorController()
  {
    super("SensorController");
  }
  
  private SensorCacheInfo getSensorCacheInfo(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.sensorCacheInfo.size())) {
      return null;
    }
    return (SensorCacheInfo)this.sensorCacheInfo.get(paramInt);
  }
  
  private native void newDataAvailable(int paramInt1, long paramLong, int paramInt2, float[] paramArrayOfFloat);
  
  private int translateSensorType(int paramInt, boolean paramBoolean)
  {
    for (int i = 0; i < SENSOR_TYPE_CONVERSIONTABLE.length / 2; i++)
    {
      int k;
      if (paramBoolean == CONVERT_FORMAT_TO_PL) {
        k = SENSOR_TYPE_CONVERSIONTABLE[(i * 2)];
      }
      while (paramInt == k) {
        if (paramBoolean == CONVERT_FORMAT_TO_PL)
        {
          return SENSOR_TYPE_CONVERSIONTABLE[(1 + i * 2)];
          k = SENSOR_TYPE_CONVERSIONTABLE[(1 + i * 2)];
        }
        else
        {
          return SENSOR_TYPE_CONVERSIONTABLE[(i * 2)];
        }
      }
    }
    boolean bool = CONVERT_FORMAT_TO_PL;
    int j = 0;
    if (paramBoolean == bool) {
      j = 1342177280;
    }
    return j;
  }
  
  private int translateSensorUpdateIntervalToAndroid(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 1: 
      return 3;
    case 2: 
      return 2;
    case 3: 
      return 1;
    }
    return 0;
  }
  
  boolean close(int paramInt)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt);
    if (localSensorCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      SystemTools.logSystemError("Sensor handle is invalid");
      return false;
    }
    try
    {
      this.sensorManager.unregisterListener(this, localSensorCacheInfo.sensor);
      bool = true;
      System.gc();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        SystemTools.setSystemErrorCode(6);
        SystemTools.logSystemError("Failed to unregister sensor event listerer");
        boolean bool = false;
      }
    }
    return bool;
  }
  
  public int getAllSupportedSensors()
  {
    Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null)
    {
      SystemTools.logSystemError("No valid activity set in native!");
      return -1;
    }
    Application localApplication = localActivity.getApplication();
    if (localApplication == null) {
      return -1;
    }
    this.sensorManager = ((SensorManager)localApplication.getSystemService("sensor"));
    if (this.sensorManager == null)
    {
      SystemTools.setSystemErrorCode(6);
      SystemTools.logSystemError("Failed to retrieve Context's Sensor Service");
      return -1;
    }
    if (this.sensorCacheInfo.size() > 0) {
      return this.sensorCacheInfo.size();
    }
    Iterator localIterator = this.sensorManager.getSensorList(-1).iterator();
    while (localIterator.hasNext())
    {
      Sensor localSensor = (Sensor)localIterator.next();
      int i = localSensor.getType();
      boolean bool = localSensor.equals(this.sensorManager.getDefaultSensor(i));
      int j = translateSensorType(i, CONVERT_FORMAT_TO_PL);
      if (j != 1342177280)
      {
        SensorCacheInfo localSensorCacheInfo = new SensorCacheInfo();
        localSensorCacheInfo.sensor = localSensor;
        localSensorCacheInfo.plSensorType = j;
        localSensorCacheInfo.isDefaultSensor = bool;
        localSensorCacheInfo.cacheIndex = this.sensorCacheInfo.size();
        localSensorCacheInfo.requestedAbstractUpdateRate = 0;
        this.sensorCacheInfo.add(localSensorCacheInfo);
        this.sensorIndexMap.put(localSensorCacheInfo.sensor, Integer.valueOf(localSensorCacheInfo.cacheIndex));
      }
    }
    return this.sensorCacheInfo.size();
  }
  
  int[] getSensorInfoValues(int paramInt)
  {
    int i = 1;
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt);
    if (localSensorCacheInfo == null) {
      return null;
    }
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = localSensorCacheInfo.plSensorType;
    arrayOfInt[i] = localSensorCacheInfo.sensor.getType();
    if (localSensorCacheInfo.isDefaultSensor) {}
    for (;;)
    {
      arrayOfInt[2] = i;
      return arrayOfInt;
      i = 0;
    }
  }
  
  String getSensorName(int paramInt)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt);
    if (localSensorCacheInfo == null) {
      return null;
    }
    return localSensorCacheInfo.sensor.getName();
  }
  
  Object getTypedSensorParameter(int paramInt1, int paramInt2)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt1);
    if (localSensorCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      SystemTools.logSystemError("Sensor handle is invalid");
      return null;
    }
    StringBuilder localStringBuilder;
    switch (paramInt2)
    {
    default: 
      try
      {
        SystemTools.setSystemErrorCode(3);
        SystemTools.logSystemError("Unknown sensor parameter");
        return null;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        SystemTools.logSystemError("Failed to get sensor parameter: " + localException.toString());
        return null;
      }
    case -2147483647: 
    case -2147483640: 
    case -2147483632: 
    case -2147483616: 
      SystemTools.setSystemErrorCode(3);
      localStringBuilder = new StringBuilder().append("Querying sensor parameter ").append(paramInt2).append(" is not supported for sensor type ").append(localSensorCacheInfo.plSensorType);
      if (paramInt2 != -2147483616) {}
      break;
    }
    for (String str = " when using the Java-based sensor API";; str = "")
    {
      SystemTools.logSystemError(str);
      return null;
      return Float.valueOf(localSensorCacheInfo.sensor.getMaximumRange());
      return Float.valueOf(localSensorCacheInfo.sensor.getResolution());
      if (SystemTools.checkMinimumApiLevel(9)) {
        return Integer.valueOf(localSensorCacheInfo.sensor.getMinDelay());
      }
      SystemTools.setSystemErrorCode(3);
      SystemTools.logSystemError("Unknown sensor parameter");
      return null;
      Integer localInteger = Integer.valueOf(localSensorCacheInfo.requestedAbstractUpdateRate);
      return localInteger;
    }
  }
  
  public boolean init()
  {
    this.sensorManager = null;
    this.sensorCacheInfo = new Vector();
    this.sensorIndexMap = new HashMap();
    return true;
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    Object localObject = this.sensorIndexMap.get(paramSensorEvent.sensor);
    if (localObject == null) {}
    SensorCacheInfo localSensorCacheInfo;
    do
    {
      return;
      localSensorCacheInfo = getSensorCacheInfo(((Integer)localObject).intValue());
    } while (localSensorCacheInfo == null);
    int i = paramSensorEvent.accuracy;
    int j = 0;
    switch (i)
    {
    }
    for (;;)
    {
      newDataAvailable(localSensorCacheInfo.cacheIndex, paramSensorEvent.timestamp, j, paramSensorEvent.values);
      return;
      j = 1;
      continue;
      j = 2;
      continue;
      j = 3;
      continue;
      j = 4;
    }
  }
  
  boolean open(int paramInt1, int paramInt2)
  {
    int i;
    SensorCacheInfo localSensorCacheInfo;
    if (paramInt2 == AR_SENSOR_INDEX_DONTCARE)
    {
      i = 0;
      if (i >= this.sensorCacheInfo.size()) {
        break label186;
      }
      localSensorCacheInfo = (SensorCacheInfo)this.sensorCacheInfo.get(i);
      if ((localSensorCacheInfo.plSensorType != paramInt1) || (!localSensorCacheInfo.isDefaultSensor)) {}
    }
    for (;;)
    {
      if (localSensorCacheInfo == null)
      {
        SystemTools.setSystemErrorCode(2);
        SystemTools.logSystemError("No sensor matching the requested sensor device info has been found");
        return false;
        i++;
        break;
        localSensorCacheInfo = (SensorCacheInfo)this.sensorCacheInfo.get(paramInt2);
        continue;
      }
      if (this.sensorEventHandler == null) {}
      StringBuilder localStringBuilder;
      try
      {
        start();
        this.sensorEventHandler = new Handler(getLooper());
        return true;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        localStringBuilder = new StringBuilder().append("Failed to ");
        if (!isAlive()) {}
      }
      for (String str = "retrieve a handler for the sensor event handler thread";; str = "start Java handler thread for sensor events")
      {
        SystemTools.logSystemError(str + ": " + localException.toString());
        return false;
      }
      label186:
      localSensorCacheInfo = null;
    }
  }
  
  boolean setTypedSensorParameter(int paramInt1, int paramInt2, Object paramObject)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt1);
    if (localSensorCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      SystemTools.logSystemError("Sensor handle is invalid");
      return false;
    }
    StringBuilder localStringBuilder;
    switch (paramInt2)
    {
    default: 
      try
      {
        SystemTools.setSystemErrorCode(3);
        SystemTools.logSystemError("Unknown sensor parameter");
        return false;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        SystemTools.logSystemError("Failed to get sensor parameter: " + localException.toString());
        return false;
      }
    case -2147483647: 
    case -2147483646: 
    case -2147483644: 
    case -2147483640: 
    case -2147483632: 
    case -2147483616: 
    case -2147483520: 
      SystemTools.setSystemErrorCode(3);
      localStringBuilder = new StringBuilder().append("Sensor parameter ").append(paramInt2).append(" cannot be set for sensor type ").append(localSensorCacheInfo.plSensorType);
      if (paramInt2 != -2147483616) {}
      break;
    }
    for (String str = " when using the Java-based sensor API";; str = "")
    {
      SystemTools.logSystemError(str);
      return false;
      int i = ((Number)paramObject).intValue();
      if ((i < 1) || (i > 4))
      {
        SystemTools.setSystemErrorCode(2);
        SystemTools.logSystemError("Invalid abstract sensor update interval (" + i + ")");
        return false;
      }
      localSensorCacheInfo.requestedAbstractUpdateRate = i;
      return true;
    }
  }
  
  boolean start(int paramInt)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt);
    if (localSensorCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      SystemTools.logSystemError("Sensor handle is invalid");
      bool1 = false;
    }
    do
    {
      return bool1;
      int i = translateSensorUpdateIntervalToAndroid(localSensorCacheInfo.requestedAbstractUpdateRate);
      if (i < 0) {
        i = 1;
      }
      try
      {
        boolean bool2 = this.sensorManager.registerListener(this, localSensorCacheInfo.sensor, i, this.sensorEventHandler);
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          bool1 = false;
        }
      }
    } while (bool1);
    SystemTools.setSystemErrorCode(6);
    SystemTools.logSystemError("Failed to start sensor, could not register sensor event listerer");
    return bool1;
  }
  
  boolean stop(int paramInt)
  {
    SensorCacheInfo localSensorCacheInfo = getSensorCacheInfo(paramInt);
    if (localSensorCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      SystemTools.logSystemError("Sensor handle is invalid");
      return false;
    }
    try
    {
      this.sensorManager.unregisterListener(this, localSensorCacheInfo.sensor);
      return true;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
      SystemTools.logSystemError("Failed to stop sensor, could not unregister sensor event listerer");
    }
    return false;
  }
  
  public class SensorCacheInfo
  {
    int cacheIndex;
    boolean isDefaultSensor;
    int plSensorType;
    int requestedAbstractUpdateRate;
    Sensor sensor;
    float[] valuesForForcedSensorEvent;
    
    public SensorCacheInfo() {}
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.SensorController
 * JD-Core Version:    0.7.0.1
 */