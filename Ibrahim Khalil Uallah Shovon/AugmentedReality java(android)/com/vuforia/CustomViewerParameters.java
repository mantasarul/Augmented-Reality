package com.vuforia;

public class CustomViewerParameters
  extends ViewerParameters
{
  private long swigCPtr;
  
  public CustomViewerParameters(float paramFloat, String paramString1, String paramString2)
  {
    this(VuforiaJNI.new_CustomViewerParameters__SWIG_0(paramFloat, paramString1, paramString2), true);
  }
  
  protected CustomViewerParameters(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.CustomViewerParameters_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  public CustomViewerParameters(CustomViewerParameters paramCustomViewerParameters)
  {
    this(VuforiaJNI.new_CustomViewerParameters__SWIG_1(getCPtr(paramCustomViewerParameters), paramCustomViewerParameters), true);
  }
  
  protected static long getCPtr(CustomViewerParameters paramCustomViewerParameters)
  {
    if (paramCustomViewerParameters == null) {
      return 0L;
    }
    return paramCustomViewerParameters.swigCPtr;
  }
  
  public void addDistortionCoefficient(float paramFloat)
  {
    VuforiaJNI.CustomViewerParameters_addDistortionCoefficient(this.swigCPtr, this, paramFloat);
  }
  
  public void clearDistortionCoefficients()
  {
    VuforiaJNI.CustomViewerParameters_clearDistortionCoefficients(this.swigCPtr, this);
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
          VuforiaJNI.delete_CustomViewerParameters(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof CustomViewerParameters;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CustomViewerParameters)paramObject).swigCPtr < this.swigCPtr;
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
  
  public void setButtonType(int paramInt)
  {
    VuforiaJNI.CustomViewerParameters_setButtonType(this.swigCPtr, this, paramInt);
  }
  
  public void setContainsMagnet(boolean paramBoolean)
  {
    VuforiaJNI.CustomViewerParameters_setContainsMagnet(this.swigCPtr, this, paramBoolean);
  }
  
  public void setFieldOfView(Vec4F paramVec4F)
  {
    VuforiaJNI.CustomViewerParameters_setFieldOfView(this.swigCPtr, this, Vec4F.getCPtr(paramVec4F), paramVec4F);
  }
  
  public void setInterLensDistance(float paramFloat)
  {
    VuforiaJNI.CustomViewerParameters_setInterLensDistance(this.swigCPtr, this, paramFloat);
  }
  
  public void setLensCentreToTrayDistance(float paramFloat)
  {
    VuforiaJNI.CustomViewerParameters_setLensCentreToTrayDistance(this.swigCPtr, this, paramFloat);
  }
  
  public void setScreenToLensDistance(float paramFloat)
  {
    VuforiaJNI.CustomViewerParameters_setScreenToLensDistance(this.swigCPtr, this, paramFloat);
  }
  
  public void setTrayAlignment(int paramInt)
  {
    VuforiaJNI.CustomViewerParameters_setTrayAlignment(this.swigCPtr, this, paramInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CustomViewerParameters
 * JD-Core Version:    0.7.0.1
 */