package com.vuforia;

public class Vec2I
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec2I()
  {
    this(VuforiaJNI.new_Vec2I__SWIG_0(), true);
  }
  
  public Vec2I(int paramInt1, int paramInt2)
  {
    this(VuforiaJNI.new_Vec2I__SWIG_2(paramInt1, paramInt2), true);
  }
  
  protected Vec2I(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec2I(Vec2I paramVec2I)
  {
    this(VuforiaJNI.new_Vec2I__SWIG_3(getCPtr(paramVec2I), paramVec2I), true);
  }
  
  public Vec2I(int[] paramArrayOfInt)
  {
    this(VuforiaJNI.new_Vec2I__SWIG_1(paramArrayOfInt), true);
  }
  
  protected static long getCPtr(Vec2I paramVec2I)
  {
    if (paramVec2I == null) {
      return 0L;
    }
    return paramVec2I.swigCPtr;
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
          VuforiaJNI.delete_Vec2I(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec2I;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec2I)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int[] getData()
  {
    return VuforiaJNI.Vec2I_data_get(this.swigCPtr, this);
  }
  
  public void setData(int[] paramArrayOfInt)
  {
    VuforiaJNI.Vec2I_data_set(this.swigCPtr, this, paramArrayOfInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec2I
 * JD-Core Version:    0.7.0.1
 */