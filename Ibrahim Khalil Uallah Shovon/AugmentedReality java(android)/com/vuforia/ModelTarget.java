package com.vuforia;

public class ModelTarget
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected ModelTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ModelTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ModelTarget paramModelTarget)
  {
    if (paramModelTarget == null) {
      return 0L;
    }
    return paramModelTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ModelTarget_getClassType(), true);
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
          VuforiaJNI.delete_ModelTarget(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof ModelTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ModelTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Obb3D getBoundingBox()
  {
    return new Obb3D(VuforiaJNI.ModelTarget_getBoundingBox(this.swigCPtr, this), false);
  }
  
  public GuideView getGuideView(int paramInt)
  {
    long l = VuforiaJNI.ModelTarget_getGuideView(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new GuideView(l, false);
  }
  
  public int getNumGuideViews()
  {
    return VuforiaJNI.ModelTarget_getNumGuideViews(this.swigCPtr, this);
  }
  
  public Vec3F getSize()
  {
    return new Vec3F(VuforiaJNI.ModelTarget_getSize(this.swigCPtr, this), true);
  }
  
  public String getUniqueTargetId()
  {
    return VuforiaJNI.ModelTarget_getUniqueTargetId(this.swigCPtr, this);
  }
  
  public boolean setSize(Vec3F paramVec3F)
  {
    return VuforiaJNI.ModelTarget_setSize(this.swigCPtr, this, Vec3F.getCPtr(paramVec3F), paramVec3F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ModelTarget
 * JD-Core Version:    0.7.0.1
 */