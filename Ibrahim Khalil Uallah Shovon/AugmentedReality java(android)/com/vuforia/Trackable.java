package com.vuforia;

public class Trackable
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Trackable(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Trackable paramTrackable)
  {
    if (paramTrackable == null) {
      return 0L;
    }
    return paramTrackable.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.Trackable_getClassType(), true);
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
          VuforiaJNI.delete_Trackable(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Trackable;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Trackable)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getId()
  {
    return VuforiaJNI.Trackable_getId(this.swigCPtr, this);
  }
  
  public String getName()
  {
    return VuforiaJNI.Trackable_getName(this.swigCPtr, this);
  }
  
  public Type getType()
  {
    return new Type(VuforiaJNI.Trackable_getType(this.swigCPtr, this), true);
  }
  
  public Object getUserData()
  {
    return Vuforia.retrieveFromUserDataMap(Integer.valueOf(getId()));
  }
  
  public boolean isExtendedTrackingStarted()
  {
    return VuforiaJNI.Trackable_isExtendedTrackingStarted(this.swigCPtr, this);
  }
  
  public boolean isOfType(Type paramType)
  {
    return VuforiaJNI.Trackable_isOfType(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
  }
  
  public boolean setUserData(Object paramObject)
  {
    return Vuforia.updateUserDataMap(Integer.valueOf(getId()), paramObject);
  }
  
  public boolean startExtendedTracking()
  {
    return VuforiaJNI.Trackable_startExtendedTracking(this.swigCPtr, this);
  }
  
  public boolean stopExtendedTracking()
  {
    return VuforiaJNI.Trackable_stopExtendedTracking(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Trackable
 * JD-Core Version:    0.7.0.1
 */