package com.vuforia;

public class DeviceTracker
  extends Tracker
{
  private long swigCPtr;
  
  protected DeviceTracker(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.DeviceTracker_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(DeviceTracker paramDeviceTracker)
  {
    if (paramDeviceTracker == null) {
      return 0L;
    }
    return paramDeviceTracker.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.DeviceTracker_getClassType(), true);
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
          VuforiaJNI.delete_DeviceTracker(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof DeviceTracker;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((DeviceTracker)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Matrix34F getWorldToDeviceBaseTransform()
  {
    return new Matrix34F(VuforiaJNI.DeviceTracker_getWorldToDeviceBaseTransform(this.swigCPtr, this), true);
  }
  
  public boolean setWorldToDeviceBaseTransform(Matrix34F paramMatrix34F)
  {
    return VuforiaJNI.DeviceTracker_setWorldToDeviceBaseTransform(this.swigCPtr, this, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.DeviceTracker
 * JD-Core Version:    0.7.0.1
 */