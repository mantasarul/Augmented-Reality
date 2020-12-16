package com.vuforia;

public class HandheldTransformModel
  extends TransformModel
{
  private long swigCPtr;
  
  public HandheldTransformModel()
  {
    this(VuforiaJNI.new_HandheldTransformModel__SWIG_0(), true);
  }
  
  protected HandheldTransformModel(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.HandheldTransformModel_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  public HandheldTransformModel(HandheldTransformModel paramHandheldTransformModel)
  {
    this(VuforiaJNI.new_HandheldTransformModel__SWIG_1(getCPtr(paramHandheldTransformModel), paramHandheldTransformModel), true);
  }
  
  public HandheldTransformModel(Vec3F paramVec3F)
  {
    this(VuforiaJNI.new_HandheldTransformModel__SWIG_2(Vec3F.getCPtr(paramVec3F), paramVec3F), true);
  }
  
  protected static long getCPtr(HandheldTransformModel paramHandheldTransformModel)
  {
    if (paramHandheldTransformModel == null) {
      return 0L;
    }
    return paramHandheldTransformModel.swigCPtr;
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
          VuforiaJNI.delete_HandheldTransformModel(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof HandheldTransformModel;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((HandheldTransformModel)paramObject).swigCPtr < this.swigCPtr;
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
    return new Vec3F(VuforiaJNI.HandheldTransformModel_getPivotPoint(this.swigCPtr, this), false);
  }
  
  public int getType()
  {
    return VuforiaJNI.HandheldTransformModel_getType(this.swigCPtr, this);
  }
  
  public boolean setPivotPoint(Vec3F paramVec3F)
  {
    return VuforiaJNI.HandheldTransformModel_setPivotPoint(this.swigCPtr, this, Vec3F.getCPtr(paramVec3F), paramVec3F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.HandheldTransformModel
 * JD-Core Version:    0.7.0.1
 */