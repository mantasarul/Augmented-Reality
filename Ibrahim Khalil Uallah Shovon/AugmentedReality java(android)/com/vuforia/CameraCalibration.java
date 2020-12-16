package com.vuforia;

public class CameraCalibration
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected CameraCalibration(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(CameraCalibration paramCameraCalibration)
  {
    if (paramCameraCalibration == null) {
      return 0L;
    }
    return paramCameraCalibration.swigCPtr;
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
          VuforiaJNI.delete_CameraCalibration(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof CameraCalibration;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CameraCalibration)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec4F getDistortionParameters()
  {
    return new Vec4F(VuforiaJNI.CameraCalibration_getDistortionParameters(this.swigCPtr, this), true);
  }
  
  public Vec2F getFieldOfViewRads()
  {
    return new Vec2F(VuforiaJNI.CameraCalibration_getFieldOfViewRads(this.swigCPtr, this), true);
  }
  
  public Vec2F getFocalLength()
  {
    return new Vec2F(VuforiaJNI.CameraCalibration_getFocalLength(this.swigCPtr, this), true);
  }
  
  public Vec2F getPrincipalPoint()
  {
    return new Vec2F(VuforiaJNI.CameraCalibration_getPrincipalPoint(this.swigCPtr, this), true);
  }
  
  public Vec2F getSize()
  {
    return new Vec2F(VuforiaJNI.CameraCalibration_getSize(this.swigCPtr, this), true);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CameraCalibration
 * JD-Core Version:    0.7.0.1
 */