package com.vuforia;

public class EyewearCalibrationProfileManager
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected EyewearCalibrationProfileManager(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(EyewearCalibrationProfileManager paramEyewearCalibrationProfileManager)
  {
    if (paramEyewearCalibrationProfileManager == null) {
      return 0L;
    }
    return paramEyewearCalibrationProfileManager.swigCPtr;
  }
  
  public boolean clearProfile(int paramInt)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_clearProfile(this.swigCPtr, this, paramInt);
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
          VuforiaJNI.delete_EyewearCalibrationProfileManager(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof EyewearCalibrationProfileManager;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((EyewearCalibrationProfileManager)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getActiveProfile()
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_getActiveProfile(this.swigCPtr, this);
  }
  
  public Matrix34F getCameraToEyePose(int paramInt1, int paramInt2)
  {
    return new Matrix34F(VuforiaJNI.EyewearCalibrationProfileManager_getCameraToEyePose(this.swigCPtr, this, paramInt1, paramInt2), true);
  }
  
  public Matrix34F getEyeProjection(int paramInt1, int paramInt2)
  {
    return new Matrix34F(VuforiaJNI.EyewearCalibrationProfileManager_getEyeProjection(this.swigCPtr, this, paramInt1, paramInt2), true);
  }
  
  public long getMaxCount()
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_getMaxCount(this.swigCPtr, this);
  }
  
  public String getProfileName(int paramInt)
  {
    short[] arrayOfShort = VuforiaJNI.EyewearCalibrationProfileManager_getProfileName(this.swigCPtr, this, paramInt);
    if (arrayOfShort == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(arrayOfShort.length);
    int i = arrayOfShort.length;
    for (int j = 0; j < i; j++) {
      localStringBuilder.appendCodePoint(arrayOfShort[j]);
    }
    return localStringBuilder.toString();
  }
  
  public long getUsedCount()
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_getUsedCount(this.swigCPtr, this);
  }
  
  public boolean isProfileUsed(int paramInt)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_isProfileUsed(this.swigCPtr, this, paramInt);
  }
  
  public boolean setActiveProfile(int paramInt)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_setActiveProfile(this.swigCPtr, this, paramInt);
  }
  
  public boolean setCameraToEyePose(int paramInt1, int paramInt2, Matrix34F paramMatrix34F)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_setCameraToEyePose(this.swigCPtr, this, paramInt1, paramInt2, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
  
  public boolean setEyeProjection(int paramInt1, int paramInt2, Matrix34F paramMatrix34F)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_setEyeProjection(this.swigCPtr, this, paramInt1, paramInt2, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
  
  public boolean setProfileName(int paramInt, String paramString)
  {
    return VuforiaJNI.EyewearCalibrationProfileManager_setProfileName(this.swigCPtr, this, paramInt, Vuforia.convertStringToShortArray(paramString));
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.EyewearCalibrationProfileManager
 * JD-Core Version:    0.7.0.1
 */