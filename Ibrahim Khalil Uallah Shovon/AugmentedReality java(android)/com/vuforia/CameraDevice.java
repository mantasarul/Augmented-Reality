package com.vuforia;

public class CameraDevice
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected CameraDevice(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(CameraDevice paramCameraDevice)
  {
    if (paramCameraDevice == null) {
      return 0L;
    }
    return paramCameraDevice.swigCPtr;
  }
  
  public static CameraDevice getInstance()
  {
    if (!Vuforia.wasInitializedJava()) {
      throw new RuntimeException("Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class");
    }
    return new CameraDevice(VuforiaJNI.CameraDevice_getInstance(), false);
  }
  
  public boolean deinit()
  {
    return VuforiaJNI.CameraDevice_deinit(this.swigCPtr, this);
  }
  
  protected void delete()
  {
    try
    {
      if (this.swigCPtr != 0L)
      {
        if (this.swigCMemOwn)
        {
          this.swigCMemOwn = false;
          VuforiaJNI.delete_CameraDevice(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof CameraDevice;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CameraDevice)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  protected void finalize()
  {
    delete();
  }
  
  public CameraCalibration getCameraCalibration()
  {
    return new CameraCalibration(VuforiaJNI.CameraDevice_getCameraCalibration(this.swigCPtr, this), false);
  }
  
  public int getCameraDirection()
  {
    return VuforiaJNI.CameraDevice_getCameraDirection(this.swigCPtr, this);
  }
  
  public boolean getCameraField(int paramInt, CameraField paramCameraField)
  {
    return VuforiaJNI.CameraDevice_getCameraField(this.swigCPtr, this, paramInt, CameraField.getCPtr(paramCameraField), paramCameraField);
  }
  
  public boolean getFieldBool(String paramString, boolean[] paramArrayOfBoolean)
  {
    return VuforiaJNI.CameraDevice_getFieldBool(this.swigCPtr, this, paramString, paramArrayOfBoolean);
  }
  
  public boolean getFieldFloat(String paramString, float[] paramArrayOfFloat)
  {
    return VuforiaJNI.CameraDevice_getFieldFloat(this.swigCPtr, this, paramString, paramArrayOfFloat);
  }
  
  public boolean getFieldInt64(String paramString, long[] paramArrayOfLong)
  {
    return VuforiaJNI.CameraDevice_getFieldInt64(this.swigCPtr, this, paramString, paramArrayOfLong);
  }
  
  public boolean getFieldInt64Range(String paramString, long[] paramArrayOfLong)
  {
    return VuforiaJNI.CameraDevice_getFieldInt64Range(this.swigCPtr, this, paramString, paramArrayOfLong);
  }
  
  public String getFieldString(String paramString)
  {
    return VuforiaJNI.CameraDevice_getFieldString(this.swigCPtr, this, paramString);
  }
  
  public int getNumFields()
  {
    return VuforiaJNI.CameraDevice_getNumFields(this.swigCPtr, this);
  }
  
  public int getNumVideoModes()
  {
    return VuforiaJNI.CameraDevice_getNumVideoModes(this.swigCPtr, this);
  }
  
  public VideoMode getVideoMode(int paramInt)
  {
    return new VideoMode(VuforiaJNI.CameraDevice_getVideoMode(this.swigCPtr, this, paramInt), true);
  }
  
  public boolean init()
  {
    return VuforiaJNI.CameraDevice_init__SWIG_0(this.swigCPtr, this);
  }
  
  public boolean init(int paramInt)
  {
    return VuforiaJNI.CameraDevice_init__SWIG_1(this.swigCPtr, this, paramInt);
  }
  
  public boolean selectVideoMode(int paramInt)
  {
    return VuforiaJNI.CameraDevice_selectVideoMode(this.swigCPtr, this, paramInt);
  }
  
  public boolean setField(String paramString, float paramFloat)
  {
    return VuforiaJNI.CameraDevice_setField__SWIG_2(this.swigCPtr, this, paramString, paramFloat);
  }
  
  public boolean setField(String paramString, long paramLong)
  {
    return VuforiaJNI.CameraDevice_setField__SWIG_1(this.swigCPtr, this, paramString, paramLong);
  }
  
  public boolean setField(String paramString1, String paramString2)
  {
    return VuforiaJNI.CameraDevice_setField__SWIG_0(this.swigCPtr, this, paramString1, paramString2);
  }
  
  public boolean setField(String paramString, boolean paramBoolean)
  {
    return VuforiaJNI.CameraDevice_setField__SWIG_3(this.swigCPtr, this, paramString, paramBoolean);
  }
  
  public boolean setField(String paramString, long[] paramArrayOfLong)
  {
    return VuforiaJNI.CameraDevice_setField__SWIG_4(this.swigCPtr, this, paramString, paramArrayOfLong);
  }
  
  public boolean setFlashTorchMode(boolean paramBoolean)
  {
    return VuforiaJNI.CameraDevice_setFlashTorchMode(this.swigCPtr, this, paramBoolean);
  }
  
  public boolean setFocusMode(int paramInt)
  {
    return VuforiaJNI.CameraDevice_setFocusMode(this.swigCPtr, this, paramInt);
  }
  
  public boolean start()
  {
    return VuforiaJNI.CameraDevice_start(this.swigCPtr, this);
  }
  
  public boolean stop()
  {
    return VuforiaJNI.CameraDevice_stop(this.swigCPtr, this);
  }
  
  public static final class CAMERA_DIRECTION
  {
    public static final int CAMERA_DIRECTION_BACK = 1;
    public static final int CAMERA_DIRECTION_DEFAULT = 0;
    public static final int CAMERA_DIRECTION_FRONT = 2;
  }
  
  public static final class FOCUS_MODE
  {
    public static final int FOCUS_MODE_CONTINUOUSAUTO = 2;
    public static final int FOCUS_MODE_INFINITY = 3;
    public static final int FOCUS_MODE_MACRO = 4;
    public static final int FOCUS_MODE_NORMAL = 0;
    public static final int FOCUS_MODE_TRIGGERAUTO = 1;
  }
  
  public static final class MODE
  {
    public static final int MODE_DEFAULT = -1;
    public static final int MODE_OPTIMIZE_QUALITY = -3;
    public static final int MODE_OPTIMIZE_SPEED = -2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CameraDevice
 * JD-Core Version:    0.7.0.1
 */