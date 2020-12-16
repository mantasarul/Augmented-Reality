package com.vuforia;

public class Tool
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Tool()
  {
    this(VuforiaJNI.new_Tool(), true);
  }
  
  protected Tool(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public static Matrix44F convert2GLMatrix(Matrix34F paramMatrix34F)
  {
    return new Matrix44F(VuforiaJNI.Tool_convert2GLMatrix(Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F), true);
  }
  
  public static Matrix44F convertPerspectiveProjection2GLMatrix(Matrix34F paramMatrix34F, float paramFloat1, float paramFloat2)
  {
    return new Matrix44F(VuforiaJNI.Tool_convertPerspectiveProjection2GLMatrix(Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F, paramFloat1, paramFloat2), true);
  }
  
  public static Matrix44F convertPose2GLMatrix(Matrix34F paramMatrix34F)
  {
    return new Matrix44F(VuforiaJNI.Tool_convertPose2GLMatrix(Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F), true);
  }
  
  protected static long getCPtr(Tool paramTool)
  {
    if (paramTool == null) {
      return 0L;
    }
    return paramTool.swigCPtr;
  }
  
  public static Matrix44F getProjectionGL(CameraCalibration paramCameraCalibration, float paramFloat1, float paramFloat2)
  {
    return new Matrix44F(VuforiaJNI.Tool_getProjectionGL(CameraCalibration.getCPtr(paramCameraCalibration), paramCameraCalibration, paramFloat1, paramFloat2), true);
  }
  
  public static Matrix34F multiply(Matrix34F paramMatrix34F1, Matrix34F paramMatrix34F2)
  {
    return new Matrix34F(VuforiaJNI.Tool_multiply__SWIG_0(Matrix34F.getCPtr(paramMatrix34F1), paramMatrix34F1, Matrix34F.getCPtr(paramMatrix34F2), paramMatrix34F2), true);
  }
  
  public static Matrix44F multiply(Matrix44F paramMatrix44F1, Matrix44F paramMatrix44F2)
  {
    return new Matrix44F(VuforiaJNI.Tool_multiply__SWIG_1(Matrix44F.getCPtr(paramMatrix44F1), paramMatrix44F1, Matrix44F.getCPtr(paramMatrix44F2), paramMatrix44F2), true);
  }
  
  public static Vec4F multiply(Vec4F paramVec4F, Matrix44F paramMatrix44F)
  {
    return new Vec4F(VuforiaJNI.Tool_multiply__SWIG_2(Vec4F.getCPtr(paramVec4F), paramVec4F, Matrix44F.getCPtr(paramMatrix44F), paramMatrix44F), true);
  }
  
  public static Matrix44F multiplyGL(Matrix44F paramMatrix44F1, Matrix44F paramMatrix44F2)
  {
    return new Matrix44F(VuforiaJNI.Tool_multiplyGL(Matrix44F.getCPtr(paramMatrix44F1), paramMatrix44F1, Matrix44F.getCPtr(paramMatrix44F2), paramMatrix44F2), true);
  }
  
  public static Vec2F projectPoint(CameraCalibration paramCameraCalibration, Matrix34F paramMatrix34F, Vec3F paramVec3F)
  {
    return new Vec2F(VuforiaJNI.Tool_projectPoint(CameraCalibration.getCPtr(paramCameraCalibration), paramCameraCalibration, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F, Vec3F.getCPtr(paramVec3F), paramVec3F), true);
  }
  
  public static void setRotation(Matrix34F paramMatrix34F, Vec3F paramVec3F, float paramFloat)
  {
    VuforiaJNI.Tool_setRotation(Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F, Vec3F.getCPtr(paramVec3F), paramVec3F, paramFloat);
  }
  
  public static void setTranslation(Matrix34F paramMatrix34F, Vec3F paramVec3F)
  {
    VuforiaJNI.Tool_setTranslation(Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F, Vec3F.getCPtr(paramVec3F), paramVec3F);
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
          VuforiaJNI.delete_Tool(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Tool;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Tool)paramObject).swigCPtr < this.swigCPtr;
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
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Tool
 * JD-Core Version:    0.7.0.1
 */