package com.vuforia;

public class TrackableSource
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public TrackableSource()
  {
    this(VuforiaJNI.new_TrackableSource(), true);
  }
  
  protected TrackableSource(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TrackableSource paramTrackableSource)
  {
    if (paramTrackableSource == null) {
      return 0L;
    }
    return paramTrackableSource.swigCPtr;
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
          VuforiaJNI.delete_TrackableSource(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TrackableSource;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TrackableSource)paramObject).swigCPtr < this.swigCPtr;
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
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TrackableSource
 * JD-Core Version:    0.7.0.1
 */