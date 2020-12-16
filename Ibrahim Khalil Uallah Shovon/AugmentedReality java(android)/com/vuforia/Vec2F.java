package com.vuforia;

public class Vec2F
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec2F()
  {
    this(VuforiaJNI.new_Vec2F__SWIG_0(), true);
  }
  
  public Vec2F(float paramFloat1, float paramFloat2)
  {
    this(VuforiaJNI.new_Vec2F__SWIG_2(paramFloat1, paramFloat2), true);
  }
  
  protected Vec2F(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec2F(Vec2F paramVec2F)
  {
    this(VuforiaJNI.new_Vec2F__SWIG_3(getCPtr(paramVec2F), paramVec2F), true);
  }
  
  public Vec2F(float[] paramArrayOfFloat)
  {
    this(VuforiaJNI.new_Vec2F__SWIG_1(paramArrayOfFloat), true);
  }
  
  protected static long getCPtr(Vec2F paramVec2F)
  {
    if (paramVec2F == null) {
      return 0L;
    }
    return paramVec2F.swigCPtr;
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
          VuforiaJNI.delete_Vec2F(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec2F;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec2F)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float[] getData()
  {
    return VuforiaJNI.Vec2F_data_get(this.swigCPtr, this);
  }
  
  public void setData(float[] paramArrayOfFloat)
  {
    VuforiaJNI.Vec2F_data_set(this.swigCPtr, this, paramArrayOfFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec2F
 * JD-Core Version:    0.7.0.1
 */