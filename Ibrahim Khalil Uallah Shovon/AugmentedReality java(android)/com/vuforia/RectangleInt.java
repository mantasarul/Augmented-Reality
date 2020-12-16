package com.vuforia;

public class RectangleInt
  extends Area
{
  private long swigCPtr;
  
  public RectangleInt()
  {
    this(VuforiaJNI.new_RectangleInt__SWIG_0(), true);
  }
  
  public RectangleInt(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(VuforiaJNI.new_RectangleInt__SWIG_2(paramInt1, paramInt2, paramInt3, paramInt4), true);
  }
  
  protected RectangleInt(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.RectangleInt_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  public RectangleInt(RectangleInt paramRectangleInt)
  {
    this(VuforiaJNI.new_RectangleInt__SWIG_1(getCPtr(paramRectangleInt), paramRectangleInt), true);
  }
  
  protected static long getCPtr(RectangleInt paramRectangleInt)
  {
    if (paramRectangleInt == null) {
      return 0L;
    }
    return paramRectangleInt.swigCPtr;
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
          VuforiaJNI.delete_RectangleInt(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof RectangleInt;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((RectangleInt)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getAreaSize()
  {
    return VuforiaJNI.RectangleInt_getAreaSize(this.swigCPtr, this);
  }
  
  public int getHeight()
  {
    return VuforiaJNI.RectangleInt_getHeight(this.swigCPtr, this);
  }
  
  public int getLeftTopX()
  {
    return VuforiaJNI.RectangleInt_getLeftTopX(this.swigCPtr, this);
  }
  
  public int getLeftTopY()
  {
    return VuforiaJNI.RectangleInt_getLeftTopY(this.swigCPtr, this);
  }
  
  public int getRightBottomX()
  {
    return VuforiaJNI.RectangleInt_getRightBottomX(this.swigCPtr, this);
  }
  
  public int getRightBottomY()
  {
    return VuforiaJNI.RectangleInt_getRightBottomY(this.swigCPtr, this);
  }
  
  public int getType()
  {
    return VuforiaJNI.RectangleInt_getType(this.swigCPtr, this);
  }
  
  public int getWidth()
  {
    return VuforiaJNI.RectangleInt_getWidth(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.RectangleInt
 * JD-Core Version:    0.7.0.1
 */