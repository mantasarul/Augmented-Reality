package com.vuforia;

public class VideoBackgroundTextureInfo
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public VideoBackgroundTextureInfo()
  {
    this(VuforiaJNI.new_VideoBackgroundTextureInfo(), true);
  }
  
  protected VideoBackgroundTextureInfo(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VideoBackgroundTextureInfo paramVideoBackgroundTextureInfo)
  {
    if (paramVideoBackgroundTextureInfo == null) {
      return 0L;
    }
    return paramVideoBackgroundTextureInfo.swigCPtr;
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
          VuforiaJNI.delete_VideoBackgroundTextureInfo(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof VideoBackgroundTextureInfo;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VideoBackgroundTextureInfo)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec2I getImageSize()
  {
    long l = VuforiaJNI.VideoBackgroundTextureInfo_ImageSize_get(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Vec2I(l, false);
  }
  
  public int getPixelFormat()
  {
    return VuforiaJNI.VideoBackgroundTextureInfo_PixelFormat_get(this.swigCPtr, this);
  }
  
  public Vec2I getTextureSize()
  {
    long l = VuforiaJNI.VideoBackgroundTextureInfo_TextureSize_get(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Vec2I(l, false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VideoBackgroundTextureInfo
 * JD-Core Version:    0.7.0.1
 */