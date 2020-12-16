package com.vuforia;

public class EyewearDevice
  extends Device
{
  private long swigCPtr;
  
  protected EyewearDevice(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.EyewearDevice_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(EyewearDevice paramEyewearDevice)
  {
    if (paramEyewearDevice == null) {
      return 0L;
    }
    return paramEyewearDevice.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.EyewearDevice_getClassType(), true);
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
          VuforiaJNI.delete_EyewearDevice(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      super.delete();
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof EyewearDevice;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((EyewearDevice)paramObject).swigCPtr < this.swigCPtr;
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
  
  public EyewearCalibrationProfileManager getCalibrationProfileManager()
  {
    return new EyewearCalibrationProfileManager(VuforiaJNI.EyewearDevice_getCalibrationProfileManager(this.swigCPtr, this), false);
  }
  
  public int getScreenOrientation()
  {
    return VuforiaJNI.EyewearDevice_getScreenOrientation(this.swigCPtr, this);
  }
  
  public EyewearUserCalibrator getUserCalibrator()
  {
    return new EyewearUserCalibrator(VuforiaJNI.EyewearDevice_getUserCalibrator(this.swigCPtr, this), false);
  }
  
  public boolean isDisplayExtended()
  {
    return VuforiaJNI.EyewearDevice_isDisplayExtended(this.swigCPtr, this);
  }
  
  public boolean isDisplayExtendedGLOnly()
  {
    return VuforiaJNI.EyewearDevice_isDisplayExtendedGLOnly(this.swigCPtr, this);
  }
  
  public boolean isDualDisplay()
  {
    return VuforiaJNI.EyewearDevice_isDualDisplay(this.swigCPtr, this);
  }
  
  public boolean isPredictiveTrackingEnabled()
  {
    return VuforiaJNI.EyewearDevice_isPredictiveTrackingEnabled(this.swigCPtr, this);
  }
  
  public boolean isSeeThru()
  {
    return VuforiaJNI.EyewearDevice_isSeeThru(this.swigCPtr, this);
  }
  
  public boolean setDisplayExtended(boolean paramBoolean)
  {
    return VuforiaJNI.EyewearDevice_setDisplayExtended(this.swigCPtr, this, paramBoolean);
  }
  
  public boolean setPredictiveTracking(boolean paramBoolean)
  {
    return VuforiaJNI.EyewearDevice_setPredictiveTracking(this.swigCPtr, this, paramBoolean);
  }
  
  public static final class ORIENTATION
  {
    public static final int ORIENTATION_LANDSCAPE_LEFT = 2;
    public static final int ORIENTATION_LANDSCAPE_RIGHT = 3;
    public static final int ORIENTATION_PORTRAIT = 1;
    public static final int ORIENTATION_UNDEFINED;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.EyewearDevice
 * JD-Core Version:    0.7.0.1
 */