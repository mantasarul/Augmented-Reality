package com.vuforia;

public class VuMarkTargetResult
  extends ObjectTargetResult
{
  private long swigCPtr;
  
  protected VuMarkTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.VuMarkTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VuMarkTargetResult paramVuMarkTargetResult)
  {
    if (paramVuMarkTargetResult == null) {
      return 0L;
    }
    return paramVuMarkTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.VuMarkTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_VuMarkTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof VuMarkTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VuMarkTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
    return VuforiaJNI.VuMarkTargetResult_getId(this.swigCPtr, this);
  }
  
  public Trackable getTrackable()
  {
    return new VuMarkTarget(VuforiaJNI.VuMarkTargetResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VuMarkTargetResult
 * JD-Core Version:    0.7.0.1
 */