package com.vuforia;

public class PositionalDeviceTracker
  extends DeviceTracker
{
  private long swigCPtr;
  
  protected PositionalDeviceTracker(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.PositionalDeviceTracker_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(PositionalDeviceTracker paramPositionalDeviceTracker)
  {
    if (paramPositionalDeviceTracker == null) {
      return 0L;
    }
    return paramPositionalDeviceTracker.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.PositionalDeviceTracker_getClassType(), true);
  }
  
  public Anchor createAnchor(String paramString, HitTestResult paramHitTestResult)
  {
    long l = VuforiaJNI.PositionalDeviceTracker_createAnchor__SWIG_1(this.swigCPtr, this, paramString, HitTestResult.getCPtr(paramHitTestResult), paramHitTestResult);
    if (l == 0L) {
      return null;
    }
    return new Anchor(l, false);
  }
  
  public Anchor createAnchor(String paramString, Matrix34F paramMatrix34F)
  {
    long l = VuforiaJNI.PositionalDeviceTracker_createAnchor__SWIG_0(this.swigCPtr, this, paramString, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
    if (l == 0L) {
      return null;
    }
    return new Anchor(l, false);
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
          VuforiaJNI.delete_PositionalDeviceTracker(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      super.delete();
      return;
    }
    finally {}
  }
  
  public boolean destroyAnchor(Anchor paramAnchor)
  {
    return VuforiaJNI.PositionalDeviceTracker_destroyAnchor(this.swigCPtr, this, Anchor.getCPtr(paramAnchor), paramAnchor);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof PositionalDeviceTracker;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((PositionalDeviceTracker)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Anchor getAnchor(int paramInt)
  {
    long l = VuforiaJNI.PositionalDeviceTracker_getAnchor(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new Anchor(l, false);
  }
  
  public int getNumAnchors()
  {
    return VuforiaJNI.PositionalDeviceTracker_getNumAnchors(this.swigCPtr, this);
  }
  
  public boolean reset()
  {
    return VuforiaJNI.PositionalDeviceTracker_reset(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.PositionalDeviceTracker
 * JD-Core Version:    0.7.0.1
 */