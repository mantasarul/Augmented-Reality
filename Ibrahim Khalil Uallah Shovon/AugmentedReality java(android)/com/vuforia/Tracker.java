package com.vuforia;

public class Tracker
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Tracker(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Tracker paramTracker)
  {
    if (paramTracker == null) {
      return 0L;
    }
    return paramTracker.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.Tracker_getClassType(), true);
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
          VuforiaJNI.delete_Tracker(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Tracker;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Tracker)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Type getType()
  {
    return new Type(VuforiaJNI.Tracker_getType(this.swigCPtr, this), true);
  }
  
  public boolean isOfType(Type paramType)
  {
    return VuforiaJNI.Tracker_isOfType(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
  }
  
  public boolean start()
  {
    return VuforiaJNI.Tracker_start(this.swigCPtr, this);
  }
  
  public void stop()
  {
    VuforiaJNI.Tracker_stop(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Tracker
 * JD-Core Version:    0.7.0.1
 */