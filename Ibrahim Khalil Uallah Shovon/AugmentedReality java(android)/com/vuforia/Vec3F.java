package com.vuforia;

public class Vec3F
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec3F()
  {
    this(VuforiaJNI.new_Vec3F__SWIG_0(), true);
  }
  
  public Vec3F(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(VuforiaJNI.new_Vec3F__SWIG_2(paramFloat1, paramFloat2, paramFloat3), true);
  }
  
  protected Vec3F(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec3F(Vec3F paramVec3F)
  {
    this(VuforiaJNI.new_Vec3F__SWIG_3(getCPtr(paramVec3F), paramVec3F), true);
  }
  
  public Vec3F(float[] paramArrayOfFloat)
  {
    this(VuforiaJNI.new_Vec3F__SWIG_1(paramArrayOfFloat), true);
  }
  
  protected static long getCPtr(Vec3F paramVec3F)
  {
    if (paramVec3F == null) {
      return 0L;
    }
    return paramVec3F.swigCPtr;
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
          VuforiaJNI.delete_Vec3F(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec3F;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec3F)paramObject).swigCPtr < this.swigCPtr;
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
    return VuforiaJNI.Vec3F_data_get(this.swigCPtr, this);
  }
  
  public void setData(float[] paramArrayOfFloat)
  {
    VuforiaJNI.Vec3F_data_set(this.swigCPtr, this, paramArrayOfFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec3F
 * JD-Core Version:    0.7.0.1
 */