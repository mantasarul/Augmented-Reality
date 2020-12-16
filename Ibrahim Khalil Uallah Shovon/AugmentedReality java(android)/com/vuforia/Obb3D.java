package com.vuforia;

public class Obb3D
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Obb3D()
  {
    this(VuforiaJNI.new_Obb3D__SWIG_0(), true);
  }
  
  protected Obb3D(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Obb3D(Obb3D paramObb3D)
  {
    this(VuforiaJNI.new_Obb3D__SWIG_1(getCPtr(paramObb3D), paramObb3D), true);
  }
  
  public Obb3D(Vec3F paramVec3F1, Vec3F paramVec3F2, float paramFloat)
  {
    this(VuforiaJNI.new_Obb3D__SWIG_2(Vec3F.getCPtr(paramVec3F1), paramVec3F1, Vec3F.getCPtr(paramVec3F2), paramVec3F2, paramFloat), true);
  }
  
  protected static long getCPtr(Obb3D paramObb3D)
  {
    if (paramObb3D == null) {
      return 0L;
    }
    return paramObb3D.swigCPtr;
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
          VuforiaJNI.delete_Obb3D(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Obb3D;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Obb3D)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec3F getCenter()
  {
    return new Vec3F(VuforiaJNI.Obb3D_getCenter(this.swigCPtr, this), false);
  }
  
  public Vec3F getHalfExtents()
  {
    return new Vec3F(VuforiaJNI.Obb3D_getHalfExtents(this.swigCPtr, this), false);
  }
  
  public float getRotationZ()
  {
    return VuforiaJNI.Obb3D_getRotationZ(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Obb3D
 * JD-Core Version:    0.7.0.1
 */