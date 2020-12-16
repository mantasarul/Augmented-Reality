package com.vuforia;

public class ObjectTracker
  extends Tracker
{
  private long swigCPtr;
  
  protected ObjectTracker(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ObjectTracker_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ObjectTracker paramObjectTracker)
  {
    if (paramObjectTracker == null) {
      return 0L;
    }
    return paramObjectTracker.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ObjectTracker_getClassType(), true);
  }
  
  public boolean activateDataSet(DataSet paramDataSet)
  {
    return VuforiaJNI.ObjectTracker_activateDataSet(this.swigCPtr, this, DataSet.getCPtr(paramDataSet), paramDataSet);
  }
  
  public DataSet createDataSet()
  {
    long l = VuforiaJNI.ObjectTracker_createDataSet(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new DataSet(l, false);
  }
  
  public boolean deactivateDataSet(DataSet paramDataSet)
  {
    return VuforiaJNI.ObjectTracker_deactivateDataSet(this.swigCPtr, this, DataSet.getCPtr(paramDataSet), paramDataSet);
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
          VuforiaJNI.delete_ObjectTracker(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      super.delete();
      return;
    }
    finally {}
  }
  
  public boolean destroyDataSet(DataSet paramDataSet)
  {
    return VuforiaJNI.ObjectTracker_destroyDataSet(this.swigCPtr, this, DataSet.getCPtr(paramDataSet), paramDataSet);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ObjectTracker;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ObjectTracker)paramObject).swigCPtr < this.swigCPtr;
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
  
  public DataSet getActiveDataSet(int paramInt)
  {
    long l = VuforiaJNI.ObjectTracker_getActiveDataSet(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new DataSet(l, false);
  }
  
  public int getActiveDataSetCount()
  {
    return VuforiaJNI.ObjectTracker_getActiveDataSetCount(this.swigCPtr, this);
  }
  
  public ImageTargetBuilder getImageTargetBuilder()
  {
    long l = VuforiaJNI.ObjectTracker_getImageTargetBuilder(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new ImageTargetBuilder(l, false);
  }
  
  public TargetFinder getTargetFinder()
  {
    long l = VuforiaJNI.ObjectTracker_getTargetFinder(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new TargetFinder(l, false);
  }
  
  public boolean persistExtendedTracking(boolean paramBoolean)
  {
    return VuforiaJNI.ObjectTracker_persistExtendedTracking(this.swigCPtr, this, paramBoolean);
  }
  
  public boolean resetExtendedTracking()
  {
    return VuforiaJNI.ObjectTracker_resetExtendedTracking(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ObjectTracker
 * JD-Core Version:    0.7.0.1
 */