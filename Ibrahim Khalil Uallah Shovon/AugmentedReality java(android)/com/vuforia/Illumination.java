package com.vuforia;

public class Illumination
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Illumination(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public static float getAMBIENT_COLOR_TEMPERATURE_UNAVAILABLE()
  {
    return VuforiaJNI.Illumination_AMBIENT_COLOR_TEMPERATURE_UNAVAILABLE_get();
  }
  
  public static float getAMBIENT_INTENSITY_UNAVAILABLE()
  {
    return VuforiaJNI.Illumination_AMBIENT_INTENSITY_UNAVAILABLE_get();
  }
  
  protected static long getCPtr(Illumination paramIllumination)
  {
    if (paramIllumination == null) {
      return 0L;
    }
    return paramIllumination.swigCPtr;
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
          VuforiaJNI.delete_Illumination(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Illumination;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Illumination)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float getAmbientColorTemperature()
  {
    return VuforiaJNI.Illumination_getAmbientColorTemperature(this.swigCPtr, this);
  }
  
  public float getAmbientIntensity()
  {
    return VuforiaJNI.Illumination_getAmbientIntensity(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Illumination
 * JD-Core Version:    0.7.0.1
 */