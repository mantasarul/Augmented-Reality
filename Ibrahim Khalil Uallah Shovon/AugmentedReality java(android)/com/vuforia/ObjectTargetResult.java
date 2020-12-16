package com.vuforia;

public class ObjectTargetResult
  extends TrackableResult
{
  private long swigCPtr;
  
  protected ObjectTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ObjectTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ObjectTargetResult paramObjectTargetResult)
  {
    if (paramObjectTargetResult == null) {
      return 0L;
    }
    return paramObjectTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ObjectTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_ObjectTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof ObjectTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ObjectTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
    return new ObjectTarget(VuforiaJNI.ObjectTargetResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ObjectTargetResult
 * JD-Core Version:    0.7.0.1
 */