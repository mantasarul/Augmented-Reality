package com.vuforia.ar.pl;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.vuforia.eyewear.Calibration.service.ICalibrationProfileService;
import com.vuforia.eyewear.Calibration.service.ICalibrationProfileService.Stub;
import java.nio.charset.Charset;

public class CalibrationProfileServiceConnection
{
  private static final ComponentName CPS_COMPONENT_NAME = new ComponentName("com.vuforia.eyewear.Calibration", "com.vuforia.eyewear.Calibration.service.CalibrationProfileService");
  private static final String SUBTAG = "CalibrationProfileServiceConn";
  private VuforiaServiceConnection mConnection = new VuforiaServiceConnection();
  
  public boolean bind(Context paramContext)
  {
    if (paramContext == null)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "Activity is null");
      return false;
    }
    return this.mConnection.bindService(paramContext, CPS_COMPONENT_NAME);
  }
  
  boolean clearProfile(int paramInt)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().clearProfile(paramInt);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "clearProfile; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  int getActiveProfile()
  {
    try
    {
      int i = getCalibrationProfileClient().getActiveProfile();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getActiveProfile; Remote Exception" + localRemoteException.getCause());
    }
    return 0;
  }
  
  public ICalibrationProfileService getCalibrationProfileClient()
  {
    IBinder localIBinder = this.mConnection.awaitService();
    if (localIBinder == null)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getCalibrationProfileClient IBinder is null; returning null");
      return null;
    }
    return ICalibrationProfileService.Stub.asInterface(localIBinder);
  }
  
  float[] getCameraToEyePose(int paramInt1, int paramInt2)
  {
    try
    {
      float[] arrayOfFloat = getCalibrationProfileClient().getCameraToEyePose(paramInt1, paramInt2);
      return arrayOfFloat;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getCameraToEyePose; Remote Exception" + localRemoteException.getCause());
    }
    return null;
  }
  
  float[] getEyeProjection(int paramInt1, int paramInt2)
  {
    try
    {
      float[] arrayOfFloat = getCalibrationProfileClient().getEyeProjection(paramInt1, paramInt2);
      return arrayOfFloat;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getEyeProjection; Remote Exception" + localRemoteException.getCause());
    }
    return null;
  }
  
  int getMaxProfileCount()
  {
    try
    {
      int i = getCalibrationProfileClient().getMaxProfileCount();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getMaxProfileCount; Remote Exception" + localRemoteException.getCause());
    }
    return 0;
  }
  
  byte[] getProfileName(int paramInt)
  {
    try
    {
      byte[] arrayOfByte = getCalibrationProfileClient().getProfileName(paramInt).getBytes(Charset.forName("UTF-16LE"));
      return arrayOfByte;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getProfileName; Remote Exception" + localRemoteException.getCause());
    }
    return null;
  }
  
  int getUsedProfileCount()
  {
    try
    {
      int i = getCalibrationProfileClient().getUsedProfileCount();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "getUsedProfileCount; Remote Exception" + localRemoteException.getCause());
    }
    return 0;
  }
  
  boolean isProfileUsed(int paramInt)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().isProfileUsed(paramInt);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "isProfileUsed; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  boolean setActiveProfile(int paramInt)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().setActiveProfile(paramInt);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "setActiveProfile; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  boolean setCameraToEyePose(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().setCameraToEyePose(paramInt1, paramInt2, paramArrayOfFloat);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "setCameraToEyePose; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  boolean setEyeProjection(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().setEyeProjection(paramInt1, paramInt2, paramArrayOfFloat);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "setEyeProjection; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  boolean setProfileName(int paramInt, byte[] paramArrayOfByte)
  {
    try
    {
      boolean bool = getCalibrationProfileClient().setProfileName(paramInt, new String(paramArrayOfByte, Charset.forName("UTF-16LE")));
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "setProfileName; Remote Exception" + localRemoteException.getCause());
    }
    return false;
  }
  
  public boolean unbind(Context paramContext)
  {
    if (paramContext == null)
    {
      DebugLog.LOGD("CalibrationProfileServiceConn", "Activity is null");
      return false;
    }
    return this.mConnection.unbindService(paramContext);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.CalibrationProfileServiceConnection
 * JD-Core Version:    0.7.0.1
 */