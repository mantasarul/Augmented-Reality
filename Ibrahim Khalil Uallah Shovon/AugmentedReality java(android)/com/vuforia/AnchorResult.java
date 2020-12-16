package com.vuforia;

public class AnchorResult
  extends TrackableResult
{
  private long swigCPtr;
  
  protected AnchorResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.AnchorResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(AnchorResult paramAnchorResult)
  {
    if (paramAnchorResult == null) {
      return 0L;
    }
    return paramAnchorResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.AnchorResult_getClassType(), true);
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
          VuforiaJNI.delete_AnchorResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof AnchorResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((AnchorResult)paramObject).swigCPtr < this.swigCPtr;
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
    return new Anchor(VuforiaJNI.AnchorResult_getTrackable(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.AnchorResult
 * JD-Core Version:    0.7.0.1
 */