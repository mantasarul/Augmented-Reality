package com.vuforia;

public class EyewearCalibrationReading
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public EyewearCalibrationReading()
  {
    this(VuforiaJNI.new_EyewearCalibrationReading(), true);
  }
  
  protected EyewearCalibrationReading(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long[] cArrayUnwrap(EyewearCalibrationReading[] paramArrayOfEyewearCalibrationReading)
  {
    long[] arrayOfLong = new long[paramArrayOfEyewearCalibrationReading.length];
    for (int i = 0; i < paramArrayOfEyewearCalibrationReading.length; i++) {
      arrayOfLong[i] = getCPtr(paramArrayOfEyewearCalibrationReading[i]);
    }
    return arrayOfLong;
  }
  
  protected static EyewearCalibrationReading[] cArrayWrap(long[] paramArrayOfLong, boolean paramBoolean)
  {
    EyewearCalibrationReading[] arrayOfEyewearCalibrationReading = new EyewearCalibrationReading[paramArrayOfLong.length];
    for (int i = 0; i < paramArrayOfLong.length; i++) {
      arrayOfEyewearCalibrationReading[i] = new EyewearCalibrationReading(paramArrayOfLong[i], paramBoolean);
    }
    return arrayOfEyewearCalibrationReading;
  }
  
  protected static long getCPtr(EyewearCalibrationReading paramEyewearCalibrationReading)
  {
    if (paramEyewearCalibrationReading == null) {
      return 0L;
    }
    return paramEyewearCalibrationReading.swigCPtr;
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
          VuforiaJNI.delete_EyewearCalibrationReading(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  protected void finalize()
  {
    delete();
  }
  
  public float getCenterX()
  {
    return VuforiaJNI.EyewearCalibrationReading_CenterX_get(this.swigCPtr, this);
  }
  
  public float getCenterY()
  {
    return VuforiaJNI.EyewearCalibrationReading_CenterY_get(this.swigCPtr, this);
  }
  
  public Matrix34F getPose()
  {
    long l = VuforiaJNI.EyewearCalibrationReading_Pose_get(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Matrix34F(l, false);
  }
  
  public float getScale()
  {
    return VuforiaJNI.EyewearCalibrationReading_Scale_get(this.swigCPtr, this);
  }
  
  public int getType()
  {
    return VuforiaJNI.EyewearCalibrationReading_Type_get(this.swigCPtr, this);
  }
  
  public void setCenterX(float paramFloat)
  {
    VuforiaJNI.EyewearCalibrationReading_CenterX_set(this.swigCPtr, this, paramFloat);
  }
  
  public void setCenterY(float paramFloat)
  {
    VuforiaJNI.EyewearCalibrationReading_CenterY_set(this.swigCPtr, this, paramFloat);
  }
  
  public void setPose(Matrix34F paramMatrix34F)
  {
    VuforiaJNI.EyewearCalibrationReading_Pose_set(this.swigCPtr, this, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
  
  public void setScale(float paramFloat)
  {
    VuforiaJNI.EyewearCalibrationReading_Scale_set(this.swigCPtr, this, paramFloat);
  }
  
  public void setType(int paramInt)
  {
    VuforiaJNI.EyewearCalibrationReading_Type_set(this.swigCPtr, this, paramInt);
  }
  
  public static final class AlignmentType
  {
    public static final int HORIZONTAL_LINE = 1;
    public static final int RECTANGLE = 0;
    public static final int VERTICAL_LINE = 2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.EyewearCalibrationReading
 * JD-Core Version:    0.7.0.1
 */