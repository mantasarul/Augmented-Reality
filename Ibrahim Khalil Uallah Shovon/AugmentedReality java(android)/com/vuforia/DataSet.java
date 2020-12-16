package com.vuforia;

public class DataSet
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected DataSet(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public static boolean exists(String paramString, int paramInt)
  {
    return VuforiaJNI.DataSet_exists(paramString, paramInt);
  }
  
  protected static long getCPtr(DataSet paramDataSet)
  {
    if (paramDataSet == null) {
      return 0L;
    }
    return paramDataSet.swigCPtr;
  }
  
  public MultiTarget createMultiTarget(String paramString)
  {
    long l = VuforiaJNI.DataSet_createMultiTarget(this.swigCPtr, this, paramString);
    if (l == 0L) {
      return null;
    }
    return new MultiTarget(l, false);
  }
  
  public Trackable createTrackable(TrackableSource paramTrackableSource)
  {
    long l = VuforiaJNI.DataSet_createTrackable(this.swigCPtr, this, TrackableSource.getCPtr(paramTrackableSource), paramTrackableSource);
    if (l == 0L) {
      return null;
    }
    Trackable localTrackable = new Trackable(l, false);
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
    if (localTrackable.isOfType(DeviceTrackable.getClassType())) {
      return new DeviceTrackable(l, false);
    }
    return null;
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
          VuforiaJNI.delete_DataSet(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean destroy(Trackable paramTrackable)
  {
    return VuforiaJNI.DataSet_destroy(this.swigCPtr, this, Trackable.getCPtr(paramTrackable), paramTrackable);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof DataSet;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((DataSet)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getNumTrackables()
  {
    return VuforiaJNI.DataSet_getNumTrackables(this.swigCPtr, this);
  }
  
  public Trackable getTrackable(int paramInt)
  {
    long l = VuforiaJNI.DataSet_getTrackable(this.swigCPtr, this, paramInt);
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
  
  public boolean hasReachedTrackableLimit()
  {
    return VuforiaJNI.DataSet_hasReachedTrackableLimit(this.swigCPtr, this);
  }
  
  public boolean isActive()
  {
    return VuforiaJNI.DataSet_isActive(this.swigCPtr, this);
  }
  
  public boolean load(String paramString, int paramInt)
  {
    return VuforiaJNI.DataSet_load(this.swigCPtr, this, paramString, paramInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.DataSet
 * JD-Core Version:    0.7.0.1
 */