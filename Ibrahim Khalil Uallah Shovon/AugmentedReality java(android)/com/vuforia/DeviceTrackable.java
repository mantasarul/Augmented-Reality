package com.vuforia;

public class DeviceTrackable
  extends Trackable
{
  private long swigCPtr;
  
  protected DeviceTrackable(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.DeviceTrackable_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(DeviceTrackable paramDeviceTrackable)
  {
    if (paramDeviceTrackable == null) {
      return 0L;
    }
    return paramDeviceTrackable.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.DeviceTrackable_getClassType(), true);
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
          VuforiaJNI.delete_DeviceTrackable(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof DeviceTrackable;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((DeviceTrackable)paramObject).swigCPtr < this.swigCPtr;
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
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.DeviceTrackable
 * JD-Core Version:    0.7.0.1
 */