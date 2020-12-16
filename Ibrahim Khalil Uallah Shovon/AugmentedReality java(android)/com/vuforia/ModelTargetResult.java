package com.vuforia;

public class ModelTargetResult
  extends ObjectTargetResult
{
  private long swigCPtr;
  
  protected ModelTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ModelTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ModelTargetResult paramModelTargetResult)
  {
    if (paramModelTargetResult == null) {
      return 0L;
    }
    return paramModelTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ModelTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_ModelTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof ModelTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ModelTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
    return new ModelTarget(VuforiaJNI.ModelTargetResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ModelTargetResult
 * JD-Core Version:    0.7.0.1
 */