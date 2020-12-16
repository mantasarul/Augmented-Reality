package com.vuforia;

public class MultiTargetResult
  extends ObjectTargetResult
{
  private long swigCPtr;
  
  protected MultiTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.MultiTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(MultiTargetResult paramMultiTargetResult)
  {
    if (paramMultiTargetResult == null) {
      return 0L;
    }
    return paramMultiTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.MultiTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_MultiTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof MultiTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((MultiTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getNumPartResults()
  {
    return VuforiaJNI.MultiTargetResult_getNumPartResults(this.swigCPtr, this);
  }
  
  public TrackableResult getPartResult(int paramInt)
  {
    long l = VuforiaJNI.MultiTargetResult_getPartResult__SWIG_0(this.swigCPtr, this, paramInt);
    if (l == 0L) {}
    TrackableResult localTrackableResult;
    do
    {
      return null;
      localTrackableResult = new TrackableResult(l, false);
      if (localTrackableResult.isOfType(ImageTargetResult.getClassType())) {
        return new ImageTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(CylinderTargetResult.getClassType())) {
        return new CylinderTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(getClassType())) {
        return new MultiTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(VuMarkTargetResult.getClassType())) {
        return new VuMarkTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ModelTargetResult.getClassType())) {
        return new ModelTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ObjectTargetResult.getClassType())) {
        return new ObjectTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(AnchorResult.getClassType())) {
        return new AnchorResult(l, false);
      }
    } while (!localTrackableResult.isOfType(DeviceTrackableResult.getClassType()));
    return new DeviceTrackableResult(l, false);
  }
  
  public TrackableResult getPartResult(String paramString)
  {
    long l = VuforiaJNI.MultiTargetResult_getPartResult__SWIG_1(this.swigCPtr, this, paramString);
    if (l == 0L) {}
    TrackableResult localTrackableResult;
    do
    {
      return null;
      localTrackableResult = new TrackableResult(l, false);
      if (localTrackableResult.isOfType(ImageTargetResult.getClassType())) {
        return new ImageTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(CylinderTargetResult.getClassType())) {
        return new CylinderTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(getClassType())) {
        return new MultiTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(VuMarkTargetResult.getClassType())) {
        return new VuMarkTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ModelTargetResult.getClassType())) {
        return new ModelTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ObjectTargetResult.getClassType())) {
        return new ObjectTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(AnchorResult.getClassType())) {
        return new AnchorResult(l, false);
      }
    } while (!localTrackableResult.isOfType(DeviceTrackableResult.getClassType()));
    return new DeviceTrackableResult(l, false);
  }
  
  public Trackable getTrackable()
  {
    return new MultiTarget(VuforiaJNI.MultiTargetResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.MultiTargetResult
 * JD-Core Version:    0.7.0.1
 */