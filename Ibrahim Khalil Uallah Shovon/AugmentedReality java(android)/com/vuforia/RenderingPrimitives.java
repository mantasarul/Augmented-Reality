package com.vuforia;

public class RenderingPrimitives
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected RenderingPrimitives(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public RenderingPrimitives(RenderingPrimitives paramRenderingPrimitives)
  {
    this(VuforiaJNI.new_RenderingPrimitives(getCPtr(paramRenderingPrimitives), paramRenderingPrimitives), true);
  }
  
  protected static long getCPtr(RenderingPrimitives paramRenderingPrimitives)
  {
    if (paramRenderingPrimitives == null) {
      return 0L;
    }
    return paramRenderingPrimitives.swigCPtr;
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
          VuforiaJNI.delete_RenderingPrimitives(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof RenderingPrimitives;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((RenderingPrimitives)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Mesh getDistortionTextureMesh(int paramInt)
  {
    return new Mesh(VuforiaJNI.RenderingPrimitives_getDistortionTextureMesh(this.swigCPtr, this, paramInt), false);
  }
  
  public Vec2I getDistortionTextureSize(int paramInt)
  {
    return new Vec2I(VuforiaJNI.RenderingPrimitives_getDistortionTextureSize(this.swigCPtr, this, paramInt), true);
  }
  
  public Vec4I getDistortionTextureViewport(int paramInt)
  {
    return new Vec4I(VuforiaJNI.RenderingPrimitives_getDistortionTextureViewport(this.swigCPtr, this, paramInt), true);
  }
  
  public Vec4F getEffectiveFov(int paramInt)
  {
    return new Vec4F(VuforiaJNI.RenderingPrimitives_getEffectiveFov(this.swigCPtr, this, paramInt), true);
  }
  
  public Matrix34F getEyeDisplayAdjustmentMatrix(int paramInt)
  {
    return new Matrix34F(VuforiaJNI.RenderingPrimitives_getEyeDisplayAdjustmentMatrix(this.swigCPtr, this, paramInt), true);
  }
  
  public Vec4F getNormalizedViewport(int paramInt)
  {
    return new Vec4F(VuforiaJNI.RenderingPrimitives_getNormalizedViewport(this.swigCPtr, this, paramInt), true);
  }
  
  public Matrix34F getProjectionMatrix(int paramInt, CameraCalibration paramCameraCalibration)
  {
    return new Matrix34F(VuforiaJNI.RenderingPrimitives_getProjectionMatrix__SWIG_1(this.swigCPtr, this, paramInt, CameraCalibration.getCPtr(paramCameraCalibration), paramCameraCalibration), true);
  }
  
  public Matrix34F getProjectionMatrix(int paramInt, CameraCalibration paramCameraCalibration, boolean paramBoolean)
  {
    return new Matrix34F(VuforiaJNI.RenderingPrimitives_getProjectionMatrix__SWIG_0(this.swigCPtr, this, paramInt, CameraCalibration.getCPtr(paramCameraCalibration), paramCameraCalibration, paramBoolean), true);
  }
  
  public ViewList getRenderingViews()
  {
    return new ViewList(VuforiaJNI.RenderingPrimitives_getRenderingViews(this.swigCPtr, this), false);
  }
  
  public Mesh getVideoBackgroundMesh(int paramInt)
  {
    return new Mesh(VuforiaJNI.RenderingPrimitives_getVideoBackgroundMesh(this.swigCPtr, this, paramInt), false);
  }
  
  public Matrix34F getVideoBackgroundProjectionMatrix(int paramInt)
  {
    return new Matrix34F(VuforiaJNI.RenderingPrimitives_getVideoBackgroundProjectionMatrix__SWIG_1(this.swigCPtr, this, paramInt), true);
  }
  
  public Matrix34F getVideoBackgroundProjectionMatrix(int paramInt, boolean paramBoolean)
  {
    return new Matrix34F(VuforiaJNI.RenderingPrimitives_getVideoBackgroundProjectionMatrix__SWIG_0(this.swigCPtr, this, paramInt, paramBoolean), true);
  }
  
  public Vec2I getVideoBackgroundTextureSize()
  {
    return new Vec2I(VuforiaJNI.RenderingPrimitives_getVideoBackgroundTextureSize(this.swigCPtr, this), true);
  }
  
  public Vec4I getViewport(int paramInt)
  {
    return new Vec4I(VuforiaJNI.RenderingPrimitives_getViewport(this.swigCPtr, this, paramInt), true);
  }
  
  public Vec2F getViewportCentreToEyeAxis(int paramInt)
  {
    return new Vec2F(VuforiaJNI.RenderingPrimitives_getViewportCentreToEyeAxis(this.swigCPtr, this, paramInt), true);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.RenderingPrimitives
 * JD-Core Version:    0.7.0.1
 */