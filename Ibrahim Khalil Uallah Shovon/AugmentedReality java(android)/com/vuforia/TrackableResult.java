package com.vuforia;

public class TrackableResult
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TrackableResult(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TrackableResult paramTrackableResult)
  {
    if (paramTrackableResult == null) {
      return 0L;
    }
    return paramTrackableResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.TrackableResult_getClassType(), true);
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
          VuforiaJNI.delete_TrackableResult(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TrackableResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TrackableResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getCoordinateSystem()
  {
    return VuforiaJNI.TrackableResult_getCoordinateSystem(this.swigCPtr, this);
  }
  
  public Matrix34F getPose()
  {
    return new Matrix34F(VuforiaJNI.TrackableResult_getPose(this.swigCPtr, this), false);
  }
  
  public int getStatus()
  {
    return VuforiaJNI.TrackableResult_getStatus(this.swigCPtr, this);
  }
  
  public int getStatusInfo()
  {
    return VuforiaJNI.TrackableResult_getStatusInfo(this.swigCPtr, this);
  }
  
  public double getTimeStamp()
  {
    return VuforiaJNI.TrackableResult_getTimeStamp(this.swigCPtr, this);
  }
  
  public Trackable getTrackable()
  {
    long l = VuforiaJNI.TrackableResult_getTrackable(this.swigCPtr, this);
    if (l == 0L) {}
    Trackable localTrackable;
    do
    {
      return null;
      localTrackable = new Trackable(l, false);
      if (localTrackable.isOfType(ImageTarget.getClassType())) {
        return new ImageTarget(l, false);
      }
      if (localTrackable.isOfType(CylinderTarget.getClassType())) {
        return new CylinderTarget(l, false);
      }
      if (localTrackable.isOfType(MultiTarget.getClassType())) {
        return new MultiTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTarget.getClassType())) {
        return new VuMarkTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTemplate.getClassType())) {
        return new VuMarkTemplate(l, false);
      }
      if (localTrackable.isOfType(ModelTarget.getClassType())) {
        return new ModelTarget(l, false);
      }
      if (localTrackable.isOfType(ObjectTarget.getClassType())) {
        return new ObjectTarget(l, false);
      }
      if (localTrackable.isOfType(Anchor.getClassType())) {
        return new Anchor(l, false);
      }
    } while (!localTrackable.isOfType(DeviceTrackable.getClassType()));
    return new DeviceTrackable(l, false);
  }
  
  public Type getType()
  {
    return new Type(VuforiaJNI.TrackableResult_getType(this.swigCPtr, this), true);
  }
  
  public boolean isOfType(Type paramType)
  {
    return VuforiaJNI.TrackableResult_isOfType(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
  }
  
  public static final class STATUS
  {
    public static final int DETECTED = 2;
    public static final int EXTENDED_TRACKED = 4;
    public static final int LIMITED = 1;
    public static final int NO_POSE = 0;
    public static final int TRACKED = 3;
  }
  
  public static final class STATUS_INFO
  {
    public static final int EXCESSIVE_MOTION = 3;
    public static final int INITIALIZING = 2;
    public static final int INSUFFICIENT_FEATURES = 4;
    public static final int NORMAL = 0;
    public static final int UNKNOWN = 1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TrackableResult
 * JD-Core Version:    0.7.0.1
 */