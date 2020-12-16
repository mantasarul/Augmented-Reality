package com.vuforia;

public class DeviceTrackableResult
  extends TrackableResult
{
  private long swigCPtr;
  
  protected DeviceTrackableResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.DeviceTrackableResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(DeviceTrackableResult paramDeviceTrackableResult)
  {
    if (paramDeviceTrackableResult == null) {
      return 0L;
    }
    return paramDeviceTrackableResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.DeviceTrackableResult_getClassType(), true);
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
          VuforiaJNI.delete_DeviceTrackableResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof DeviceTrackableResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((DeviceTrackableResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Trackable getTrackable()
  {
    return new DeviceTrackable(VuforiaJNI.DeviceTrackableResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.DeviceTrackableResult
 * JD-Core Version:    0.7.0.1
 */