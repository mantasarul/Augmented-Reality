package com.vuforia;

public class Frame
  implements Cloneable
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Frame()
  {
    this(VuforiaJNI.new_Frame__SWIG_0(), true);
  }
  
  protected Frame(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Frame(Frame paramFrame)
  {
    this(VuforiaJNI.new_Frame__SWIG_1(getCPtr(paramFrame), paramFrame), true);
  }
  
  protected static long getCPtr(Frame paramFrame)
  {
    if (paramFrame == null) {
      return 0L;
    }
    return paramFrame.swigCPtr;
  }
  
  public Frame clone()
  {
    return new Frame(this);
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
          VuforiaJNI.delete_Frame(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Frame;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Frame)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Image getImage(int paramInt)
  {
    long l = VuforiaJNI.Frame_getImage(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new Image(l, false);
  }
  
  public int getIndex()
  {
    return VuforiaJNI.Frame_getIndex(this.swigCPtr, this);
  }
  
  public long getNumImages()
  {
    return VuforiaJNI.Frame_getNumImages(this.swigCPtr, this);
  }
  
  public double getTimeStamp()
  {
    return VuforiaJNI.Frame_getTimeStamp(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Frame
 * JD-Core Version:    0.7.0.1
 */