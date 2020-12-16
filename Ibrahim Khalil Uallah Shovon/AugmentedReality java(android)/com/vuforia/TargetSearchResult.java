package com.vuforia;

public class TargetSearchResult
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TargetSearchResult(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TargetSearchResult paramTargetSearchResult)
  {
    if (paramTargetSearchResult == null) {
      return 0L;
    }
    return paramTargetSearchResult.swigCPtr;
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
          VuforiaJNI.delete_TargetSearchResult(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TargetSearchResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TargetSearchResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public String getMetaData()
  {
    return VuforiaJNI.TargetSearchResult_getMetaData(this.swigCPtr, this);
  }
  
  public String getTargetName()
  {
    return VuforiaJNI.TargetSearchResult_getTargetName(this.swigCPtr, this);
  }
  
  public float getTargetSize()
  {
    return VuforiaJNI.TargetSearchResult_getTargetSize(this.swigCPtr, this);
  }
  
  public short getTrackingRating()
  {
    return VuforiaJNI.TargetSearchResult_getTrackingRating(this.swigCPtr, this);
  }
  
  public String getUniqueTargetId()
  {
    return VuforiaJNI.TargetSearchResult_getUniqueTargetId(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TargetSearchResult
 * JD-Core Version:    0.7.0.1
 */