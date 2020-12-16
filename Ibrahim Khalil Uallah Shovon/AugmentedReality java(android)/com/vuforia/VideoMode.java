package com.vuforia;

public class VideoMode
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public VideoMode()
  {
    this(VuforiaJNI.new_VideoMode__SWIG_0(), true);
  }
  
  protected VideoMode(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public VideoMode(VideoMode paramVideoMode)
  {
    this(VuforiaJNI.new_VideoMode__SWIG_1(getCPtr(paramVideoMode), paramVideoMode), true);
  }
  
  protected static long getCPtr(VideoMode paramVideoMode)
  {
    if (paramVideoMode == null) {
      return 0L;
    }
    return paramVideoMode.swigCPtr;
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
          VuforiaJNI.delete_VideoMode(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof VideoMode;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VideoMode)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float getFramerate()
  {
    return VuforiaJNI.VideoMode_Framerate_get(this.swigCPtr, this);
  }
  
  public int getHeight()
  {
    return VuforiaJNI.VideoMode_Height_get(this.swigCPtr, this);
  }
  
  public int getWidth()
  {
    return VuforiaJNI.VideoMode_Width_get(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VideoMode
 * JD-Core Version:    0.7.0.1
 */