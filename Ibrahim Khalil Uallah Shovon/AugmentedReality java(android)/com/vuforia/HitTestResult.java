package com.vuforia;

public class HitTestResult
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected HitTestResult(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(HitTestResult paramHitTestResult)
  {
    if (paramHitTestResult == null) {
      return 0L;
    }
    return paramHitTestResult.swigCPtr;
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
          VuforiaJNI.delete_HitTestResult(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof HitTestResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((HitTestResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Matrix34F getPose()
  {
    return new Matrix34F(VuforiaJNI.HitTestResult_getPose(this.swigCPtr, this), true);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.HitTestResult
 * JD-Core Version:    0.7.0.1
 */