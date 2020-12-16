package com.vuforia;

public class Obb2D
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Obb2D()
  {
    this(VuforiaJNI.new_Obb2D__SWIG_0(), true);
  }
  
  protected Obb2D(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Obb2D(Obb2D paramObb2D)
  {
    this(VuforiaJNI.new_Obb2D__SWIG_1(getCPtr(paramObb2D), paramObb2D), true);
  }
  
  public Obb2D(Vec2F paramVec2F1, Vec2F paramVec2F2, float paramFloat)
  {
    this(VuforiaJNI.new_Obb2D__SWIG_2(Vec2F.getCPtr(paramVec2F1), paramVec2F1, Vec2F.getCPtr(paramVec2F2), paramVec2F2, paramFloat), true);
  }
  
  protected static long getCPtr(Obb2D paramObb2D)
  {
    if (paramObb2D == null) {
      return 0L;
    }
    return paramObb2D.swigCPtr;
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
          VuforiaJNI.delete_Obb2D(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Obb2D;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Obb2D)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec2F getCenter()
  {
    return new Vec2F(VuforiaJNI.Obb2D_getCenter(this.swigCPtr, this), false);
  }
  
  public Vec2F getHalfExtents()
  {
    return new Vec2F(VuforiaJNI.Obb2D_getHalfExtents(this.swigCPtr, this), false);
  }
  
  public float getRotation()
  {
    return VuforiaJNI.Obb2D_getRotation(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Obb2D
 * JD-Core Version:    0.7.0.1
 */