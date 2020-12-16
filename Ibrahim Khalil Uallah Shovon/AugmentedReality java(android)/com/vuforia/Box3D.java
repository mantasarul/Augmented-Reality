package com.vuforia;

public class Box3D
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Box3D()
  {
    this(VuforiaJNI.new_Box3D__SWIG_0(), true);
  }
  
  protected Box3D(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Box3D(Box3D paramBox3D)
  {
    this(VuforiaJNI.new_Box3D__SWIG_1(getCPtr(paramBox3D), paramBox3D), true);
  }
  
  public Box3D(Vec3F paramVec3F1, Vec3F paramVec3F2)
  {
    this(VuforiaJNI.new_Box3D__SWIG_2(Vec3F.getCPtr(paramVec3F1), paramVec3F1, Vec3F.getCPtr(paramVec3F2), paramVec3F2), true);
  }
  
  protected static long getCPtr(Box3D paramBox3D)
  {
    if (paramBox3D == null) {
      return 0L;
    }
    return paramBox3D.swigCPtr;
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
          VuforiaJNI.delete_Box3D(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Box3D;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Box3D)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec3F getMaximumPosition()
  {
    return new Vec3F(VuforiaJNI.Box3D_getMaximumPosition(this.swigCPtr, this), false);
  }
  
  public Vec3F getMinimumPosition()
  {
    return new Vec3F(VuforiaJNI.Box3D_getMinimumPosition(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Box3D
 * JD-Core Version:    0.7.0.1
 */