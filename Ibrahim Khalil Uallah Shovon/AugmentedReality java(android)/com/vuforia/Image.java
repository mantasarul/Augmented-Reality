package com.vuforia;

import java.nio.ByteBuffer;

public class Image
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Image(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Image paramImage)
  {
    if (paramImage == null) {
      return 0L;
    }
    return paramImage.swigCPtr;
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
    boolean bool1 = paramObject instanceof Image;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Image)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public int getBufferHeight()
  {
    return VuforiaJNI.Image_getBufferHeight(this.swigCPtr, this);
  }
  
  public int getBufferWidth()
  {
    return VuforiaJNI.Image_getBufferWidth(this.swigCPtr, this);
  }
  
  public int getFormat()
  {
    return VuforiaJNI.Image_getFormat(this.swigCPtr, this);
  }
  
  public int getHeight()
  {
    return VuforiaJNI.Image_getHeight(this.swigCPtr, this);
  }
  
  public ByteBuffer getPixels()
  {
    return VuforiaJNI.Image_getPixels(this.swigCPtr, this);
  }
  
  public int getStride()
  {
    return VuforiaJNI.Image_getStride(this.swigCPtr, this);
  }
  
  public int getWidth()
  {
    return VuforiaJNI.Image_getWidth(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Image
 * JD-Core Version:    0.7.0.1
 */