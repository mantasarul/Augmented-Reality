package com.vuforia;

public class TrackerManager
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TrackerManager(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TrackerManager paramTrackerManager)
  {
    if (paramTrackerManager == null) {
      return 0L;
    }
    return paramTrackerManager.swigCPtr;
  }
  
  public static TrackerManager getInstance()
  {
    if (!Vuforia.wasInitializedJava()) {
      throw new RuntimeException("Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class");
    }
    return new TrackerManager(VuforiaJNI.TrackerManager_getInstance(), false);
  }
  
  public boolean deinitTracker(Type paramType)
  {
    return VuforiaJNI.TrackerManager_deinitTracker(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
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
          VuforiaJNI.delete_TrackerManager(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TrackerManager;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TrackerManager)paramObject).swigCPtr < this.swigCPtr;
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
  
  public StateUpdater getStateUpdater()
  {
    return new StateUpdater(VuforiaJNI.TrackerManager_getStateUpdater(this.swigCPtr, this), false);
  }
  
  public Tracker getTracker(Type paramType)
  {
    long l = VuforiaJNI.TrackerManager_getTracker(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
    if (l == 0L) {
      return null;
    }
    Tracker localTracker = new Tracker(l, false);
    if (localTracker.isOfType(ObjectTracker.getClassType())) {
      return new ObjectTracker(l, false);
    }
    if (localTracker.isOfType(SmartTerrain.getClassType())) {
      return new SmartTerrain(l, false);
    }
    if (localTracker.isOfType(RotationalDeviceTracker.getClassType())) {
      return new RotationalDeviceTracker(l, false);
    }
    if (localTracker.isOfType(PositionalDeviceTracker.getClassType())) {
      return new PositionalDeviceTracker(l, false);
    }
    return null;
  }
  
  public Tracker initTracker(Type paramType)
  {
    long l = VuforiaJNI.TrackerManager_initTracker(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
    if (l == 0L) {
      return null;
    }
    Tracker localTracker = new Tracker(l, false);
    if (localTracker.isOfType(ObjectTracker.getClassType())) {
      return new ObjectTracker(l, false);
    }
    if (localTracker.isOfType(SmartTerrain.getClassType())) {
      return new SmartTerrain(l, false);
    }
    if (localTracker.isOfType(RotationalDeviceTracker.getClassType())) {
      return new RotationalDeviceTracker(l, false);
    }
    if (localTracker.isOfType(PositionalDeviceTracker.getClassType())) {
      return new PositionalDeviceTracker(l, false);
    }
    return null;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TrackerManager
 * JD-Core Version:    0.7.0.1
 */