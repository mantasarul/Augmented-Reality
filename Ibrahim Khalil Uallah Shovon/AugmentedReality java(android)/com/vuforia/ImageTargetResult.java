package com.vuforia;

public class ImageTargetResult
  extends ObjectTargetResult
{
  private long swigCPtr;
  
  protected ImageTargetResult(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ImageTargetResult_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ImageTargetResult paramImageTargetResult)
  {
    if (paramImageTargetResult == null) {
      return 0L;
    }
    return paramImageTargetResult.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ImageTargetResult_getClassType(), true);
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
          VuforiaJNI.delete_ImageTargetResult(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof ImageTargetResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ImageTargetResult)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getNumVirtualButtons()
  {
    return VuforiaJNI.ImageTargetResult_getNumVirtualButtons(this.swigCPtr, this);
  }
  
  public Trackable getTrackable()
  {
    return new ImageTarget(VuforiaJNI.ImageTargetResult_getTrackable(this.swigCPtr, this), false);
  }
  
  public VirtualButtonResult getVirtualButtonResult(int paramInt)
  {
    long l = VuforiaJNI.ImageTargetResult_getVirtualButtonResult__SWIG_0(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new VirtualButtonResult(l, false);
  }
  
  public VirtualButtonResult getVirtualButtonResult(String paramString)
  {
    long l = VuforiaJNI.ImageTargetResult_getVirtualButtonResult__SWIG_1(this.swigCPtr, this, paramString);
    if (l == 0L) {
      return null;
    }
    return new VirtualButtonResult(l, false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ImageTargetResult
 * JD-Core Version:    0.7.0.1
 */