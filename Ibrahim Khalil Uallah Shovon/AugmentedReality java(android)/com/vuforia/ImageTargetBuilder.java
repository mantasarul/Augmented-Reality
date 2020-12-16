package com.vuforia;

public class ImageTargetBuilder
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected ImageTargetBuilder(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ImageTargetBuilder paramImageTargetBuilder)
  {
    if (paramImageTargetBuilder == null) {
      return 0L;
    }
    return paramImageTargetBuilder.swigCPtr;
  }
  
  public boolean build(String paramString, float paramFloat)
  {
    return VuforiaJNI.ImageTargetBuilder_build(this.swigCPtr, this, paramString, paramFloat);
  }
  
  protected void delete()
  {
    try
    {
      if (this.swigCPtr == 0L) {
        break label43;
      }
      if (this.swigCMemOwn)
      {
        this.swigCMemOwn = false;
        throw new UnsupportedOperationException("C++ destructor does not have public access");
      }
    }
    finally {}
    this.swigCPtr = 0L;
    label43:
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ImageTargetBuilder;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ImageTargetBuilder)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public int getFrameQuality()
  {
    return VuforiaJNI.ImageTargetBuilder_getFrameQuality(this.swigCPtr, this);
  }
  
  public TrackableSource getTrackableSource()
  {
    long l = VuforiaJNI.ImageTargetBuilder_getTrackableSource(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new TrackableSource(l, false);
  }
  
  public void startScan()
  {
    VuforiaJNI.ImageTargetBuilder_startScan(this.swigCPtr, this);
  }
  
  public void stopScan()
  {
    VuforiaJNI.ImageTargetBuilder_stopScan(this.swigCPtr, this);
  }
  
  public static final class FRAME_QUALITY
  {
    public static final int FRAME_QUALITY_HIGH = 2;
    public static final int FRAME_QUALITY_LOW = 0;
    public static final int FRAME_QUALITY_MEDIUM = 1;
    public static final int FRAME_QUALITY_NONE = -1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ImageTargetBuilder
 * JD-Core Version:    0.7.0.1
 */