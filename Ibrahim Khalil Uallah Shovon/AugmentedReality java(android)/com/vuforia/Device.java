package com.vuforia;

public class Device
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Device(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Device paramDevice)
  {
    if (paramDevice == null) {
      return 0L;
    }
    return paramDevice.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.Device_getClassType(), true);
  }
  
  public static Device getInstance()
  {
    if (!Vuforia.wasInitializedJava()) {
      throw new RuntimeException("Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class");
    }
    long l = VuforiaJNI.Device_getInstance();
    if (VuforiaJNI.Device_isOfType(l, null, Type.getCPtr(EyewearDevice.getClassType()), EyewearDevice.getClassType())) {
      return new EyewearDevice(l, false);
    }
    return new Device(l, false);
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
          VuforiaJNI.delete_Device(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Device;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Device)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getMode()
  {
    return VuforiaJNI.Device_getMode(this.swigCPtr, this);
  }
  
  public RenderingPrimitives getRenderingPrimitives()
  {
    return new RenderingPrimitives(VuforiaJNI.Device_getRenderingPrimitives(this.swigCPtr, this), true);
  }
  
  public ViewerParameters getSelectedViewer()
  {
    return new ViewerParameters(VuforiaJNI.Device_getSelectedViewer(this.swigCPtr, this), true);
  }
  
  public Type getType()
  {
    return new Type(VuforiaJNI.Device_getType(this.swigCPtr, this), true);
  }
  
  public ViewerParametersList getViewerList()
  {
    return new ViewerParametersList(VuforiaJNI.Device_getViewerList(this.swigCPtr, this), false);
  }
  
  public boolean isOfType(Type paramType)
  {
    return VuforiaJNI.Device_isOfType(this.swigCPtr, this, Type.getCPtr(paramType), paramType);
  }
  
  public boolean isViewerActive()
  {
    return VuforiaJNI.Device_isViewerActive(this.swigCPtr, this);
  }
  
  public boolean selectViewer(ViewerParameters paramViewerParameters)
  {
    return VuforiaJNI.Device_selectViewer(this.swigCPtr, this, ViewerParameters.getCPtr(paramViewerParameters), paramViewerParameters);
  }
  
  public void setConfigurationChanged()
  {
    VuforiaJNI.Device_setConfigurationChanged(this.swigCPtr, this);
  }
  
  public boolean setMode(int paramInt)
  {
    return VuforiaJNI.Device_setMode(this.swigCPtr, this, paramInt);
  }
  
  public void setViewerActive(boolean paramBoolean)
  {
    VuforiaJNI.Device_setViewerActive(this.swigCPtr, this, paramBoolean);
  }
  
  public static final class MODE
  {
    public static final int MODE_AR = 0;
    public static final int MODE_VR = 1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Device
 * JD-Core Version:    0.7.0.1
 */