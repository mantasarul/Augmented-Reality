package com.vuforia;

public class ViewerParameters
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected ViewerParameters(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public ViewerParameters(ViewerParameters paramViewerParameters)
  {
    this(VuforiaJNI.new_ViewerParameters(getCPtr(paramViewerParameters), paramViewerParameters), true);
  }
  
  protected static long getCPtr(ViewerParameters paramViewerParameters)
  {
    if (paramViewerParameters == null) {
      return 0L;
    }
    return paramViewerParameters.swigCPtr;
  }
  
  public boolean containsMagnet()
  {
    return VuforiaJNI.ViewerParameters_containsMagnet(this.swigCPtr, this);
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
          VuforiaJNI.delete_ViewerParameters(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ViewerParameters;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ViewerParameters)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getButtonType()
  {
    return VuforiaJNI.ViewerParameters_getButtonType(this.swigCPtr, this);
  }
  
  public float getDistortionCoefficient(int paramInt)
  {
    return VuforiaJNI.ViewerParameters_getDistortionCoefficient(this.swigCPtr, this, paramInt);
  }
  
  public Vec4F getFieldOfView()
  {
    return new Vec4F(VuforiaJNI.ViewerParameters_getFieldOfView(this.swigCPtr, this), true);
  }
  
  public float getInterLensDistance()
  {
    return VuforiaJNI.ViewerParameters_getInterLensDistance(this.swigCPtr, this);
  }
  
  public float getLensCentreToTrayDistance()
  {
    return VuforiaJNI.ViewerParameters_getLensCentreToTrayDistance(this.swigCPtr, this);
  }
  
  public String getManufacturer()
  {
    return VuforiaJNI.ViewerParameters_getManufacturer(this.swigCPtr, this);
  }
  
  public String getName()
  {
    return VuforiaJNI.ViewerParameters_getName(this.swigCPtr, this);
  }
  
  public long getNumDistortionCoefficients()
  {
    return VuforiaJNI.ViewerParameters_getNumDistortionCoefficients(this.swigCPtr, this);
  }
  
  public float getScreenToLensDistance()
  {
    return VuforiaJNI.ViewerParameters_getScreenToLensDistance(this.swigCPtr, this);
  }
  
  public int getTrayAlignment()
  {
    return VuforiaJNI.ViewerParameters_getTrayAlignment(this.swigCPtr, this);
  }
  
  public float getVersion()
  {
    return VuforiaJNI.ViewerParameters_getVersion(this.swigCPtr, this);
  }
  
  public static final class BUTTON_TYPE
  {
    public static final int BUTTON_TYPE_BUTTON_TOUCH = 3;
    public static final int BUTTON_TYPE_FINGER_TOUCH = 2;
    public static final int BUTTON_TYPE_MAGNET = 1;
    public static final int BUTTON_TYPE_NONE;
  }
  
  public static final class TRAY_ALIGNMENT
  {
    public static final int TRAY_ALIGN_BOTTOM = 0;
    public static final int TRAY_ALIGN_CENTRE = 1;
    public static final int TRAY_ALIGN_TOP = 2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ViewerParameters
 * JD-Core Version:    0.7.0.1
 */