package com.vuforia;

public class RotationalDeviceTracker
  extends DeviceTracker
{
  private long swigCPtr;
  
  protected RotationalDeviceTracker(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.RotationalDeviceTracker_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(RotationalDeviceTracker paramRotationalDeviceTracker)
  {
    if (paramRotationalDeviceTracker == null) {
      return 0L;
    }
    return paramRotationalDeviceTracker.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.RotationalDeviceTracker_getClassType(), true);
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
          VuforiaJNI.delete_RotationalDeviceTracker(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof RotationalDeviceTracker;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((RotationalDeviceTracker)paramObject).swigCPtr < this.swigCPtr;
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
  
  public HandheldTransformModel getDefaultHandheldModel()
  {
    long l = VuforiaJNI.RotationalDeviceTracker_getDefaultHandheldModel(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new HandheldTransformModel(l, false);
  }
  
  public HeadTransformModel getDefaultHeadModel()
  {
    long l = VuforiaJNI.RotationalDeviceTracker_getDefaultHeadModel(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new HeadTransformModel(l, false);
  }
  
  public TransformModel getModelCorrection()
  {
    long l = VuforiaJNI.RotationalDeviceTracker_getModelCorrection(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    switch (new TransformModel(l, false).getType())
    {
    default: 
      return null;
    case 0: 
      return new HeadTransformModel(l, false);
    }
    return new HandheldTransformModel(l, false);
  }
  
  public boolean getPosePrediction()
  {
    return VuforiaJNI.RotationalDeviceTracker_getPosePrediction(this.swigCPtr, this);
  }
  
  public boolean recenter()
  {
    return VuforiaJNI.RotationalDeviceTracker_recenter(this.swigCPtr, this);
  }
  
  public boolean setModelCorrection(TransformModel paramTransformModel)
  {
    return VuforiaJNI.RotationalDeviceTracker_setModelCorrection(this.swigCPtr, this, TransformModel.getCPtr(paramTransformModel), paramTransformModel);
  }
  
  public boolean setPosePrediction(boolean paramBoolean)
  {
    return VuforiaJNI.RotationalDeviceTracker_setPosePrediction(this.swigCPtr, this, paramBoolean);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.RotationalDeviceTracker
 * JD-Core Version:    0.7.0.1
 */