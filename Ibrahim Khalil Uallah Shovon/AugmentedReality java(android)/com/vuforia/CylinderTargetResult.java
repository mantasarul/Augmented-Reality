package com.vuforia;

public class CylinderTargetResult
  extends ObjectTargetResult
{
  private long swigCPtr;
  
  protected CylinderTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.CylinderTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(CylinderTargetResult paramCylinderTargetResult)
  {
    if (paramCylinderTargetResult == null) {
      return 0L;
    }
    return paramCylinderTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.CylinderTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_CylinderTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof CylinderTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CylinderTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
    return new CylinderTarget(VuforiaJNI.CylinderTargetResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CylinderTargetResult
 * JD-Core Version:    0.7.0.1
 */