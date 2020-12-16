package com.vuforia;

public class HeadTransformModel
  extends TransformModel
{
  private long swigCPtr;
  
  public HeadTransformModel()
  {
    this(VuforiaJNI.new_HeadTransformModel__SWIG_0(), true);
  }
  
  protected HeadTransformModel(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.HeadTransformModel_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  public HeadTransformModel(HeadTransformModel paramHeadTransformModel)
  {
    this(VuforiaJNI.new_HeadTransformModel__SWIG_1(getCPtr(paramHeadTransformModel), paramHeadTransformModel), true);
  }
  
  public HeadTransformModel(Vec3F paramVec3F)
  {
    this(VuforiaJNI.new_HeadTransformModel__SWIG_2(Vec3F.getCPtr(paramVec3F), paramVec3F), true);
  }
  
  protected static long getCPtr(HeadTransformModel paramHeadTransformModel)
  {
    if (paramHeadTransformModel == null) {
      return 0L;
    }
    return paramHeadTransformModel.swigCPtr;
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
          VuforiaJNI.delete_HeadTransformModel(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof HeadTransformModel;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((HeadTransformModel)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec3F getPivotPoint()
  {
    return new Vec3F(VuforiaJNI.HeadTransformModel_getPivotPoint(this.swigCPtr, this), false);
  }
  
  public int getType()
  {
    return VuforiaJNI.HeadTransformModel_getType(this.swigCPtr, this);
  }
  
  public boolean setPivotPoint(Vec3F paramVec3F)
  {
    return VuforiaJNI.HeadTransformModel_setPivotPoint(this.swigCPtr, this, Vec3F.getCPtr(paramVec3F), paramVec3F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.HeadTransformModel
 * JD-Core Version:    0.7.0.1
 */