package com.vuforia;

public class Rectangle
  extends Area
{
  private long swigCPtr;
  
  public Rectangle()
  {
    this(VuforiaJNI.new_Rectangle__SWIG_0(), true);
  }
  
  public Rectangle(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this(VuforiaJNI.new_Rectangle__SWIG_2(paramFloat1, paramFloat2, paramFloat3, paramFloat4), true);
  }
  
  protected Rectangle(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.Rectangle_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  public Rectangle(Rectangle paramRectangle)
  {
    this(VuforiaJNI.new_Rectangle__SWIG_1(getCPtr(paramRectangle), paramRectangle), true);
  }
  
  protected static long getCPtr(Rectangle paramRectangle)
  {
    if (paramRectangle == null) {
      return 0L;
    }
    return paramRectangle.swigCPtr;
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
          VuforiaJNI.delete_Rectangle(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof Rectangle;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Rectangle)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float getAreaSize()
  {
    return VuforiaJNI.Rectangle_getAreaSize(this.swigCPtr, this);
  }
  
  public float getHeight()
  {
    return VuforiaJNI.Rectangle_getHeight(this.swigCPtr, this);
  }
  
  public float getLeftTopX()
  {
    return VuforiaJNI.Rectangle_getLeftTopX(this.swigCPtr, this);
  }
  
  public float getLeftTopY()
  {
    return VuforiaJNI.Rectangle_getLeftTopY(this.swigCPtr, this);
  }
  
  public float getRightBottomX()
  {
    return VuforiaJNI.Rectangle_getRightBottomX(this.swigCPtr, this);
  }
  
  public float getRightBottomY()
  {
    return VuforiaJNI.Rectangle_getRightBottomY(this.swigCPtr, this);
  }
  
  public int getType()
  {
    return VuforiaJNI.Rectangle_getType(this.swigCPtr, this);
  }
  
  public float getWidth()
  {
    return VuforiaJNI.Rectangle_getWidth(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Rectangle
 * JD-Core Version:    0.7.0.1
 */