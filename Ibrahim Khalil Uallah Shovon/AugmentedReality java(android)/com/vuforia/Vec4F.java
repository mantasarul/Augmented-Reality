package com.vuforia;

public class Vec4F
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec4F()
  {
    this(VuforiaJNI.new_Vec4F__SWIG_0(), true);
  }
  
  public Vec4F(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this(VuforiaJNI.new_Vec4F__SWIG_2(paramFloat1, paramFloat2, paramFloat3, paramFloat4), true);
  }
  
  protected Vec4F(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec4F(Vec4F paramVec4F)
  {
    this(VuforiaJNI.new_Vec4F__SWIG_3(getCPtr(paramVec4F), paramVec4F), true);
  }
  
  public Vec4F(float[] paramArrayOfFloat)
  {
    this(VuforiaJNI.new_Vec4F__SWIG_1(paramArrayOfFloat), true);
  }
  
  protected static long getCPtr(Vec4F paramVec4F)
  {
    if (paramVec4F == null) {
      return 0L;
    }
    return paramVec4F.swigCPtr;
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
          VuforiaJNI.delete_Vec4F(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec4F;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec4F)paramObject).swigCPtr < this.swigCPtr;
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
    return VuforiaJNI.Vec4F_data_get(this.swigCPtr, this);
  }
  
  public void setData(float[] paramArrayOfFloat)
  {
    VuforiaJNI.Vec4F_data_set(this.swigCPtr, this, paramArrayOfFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec4F
 * JD-Core Version:    0.7.0.1
 */