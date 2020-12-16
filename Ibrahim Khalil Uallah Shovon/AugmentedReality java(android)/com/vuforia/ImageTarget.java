package com.vuforia;

public class ImageTarget
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected ImageTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ImageTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ImageTarget paramImageTarget)
  {
    if (paramImageTarget == null) {
      return 0L;
    }
    return paramImageTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ImageTarget_getClassType(), true);
  }
  
  public VirtualButton createVirtualButton(String paramString, Area paramArea)
  {
    long l = VuforiaJNI.ImageTarget_createVirtualButton(this.swigCPtr, this, paramString, Area.getCPtr(paramArea), paramArea);
    if (l == 0L) {
      return null;
    }
    return new VirtualButton(l, false);
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
          VuforiaJNI.delete_ImageTarget(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      super.delete();
      return;
    }
    finally {}
  }
  
  public boolean destroyVirtualButton(VirtualButton paramVirtualButton)
  {
    return VuforiaJNI.ImageTarget_destroyVirtualButton(this.swigCPtr, this, VirtualButton.getCPtr(paramVirtualButton), paramVirtualButton);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ImageTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ImageTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public String getMetaData()
  {
    return VuforiaJNI.ImageTarget_getMetaData(this.swigCPtr, this);
  }
  
  public int getNumVirtualButtons()
  {
    return VuforiaJNI.ImageTarget_getNumVirtualButtons(this.swigCPtr, this);
  }
  
  public VirtualButton getVirtualButton(int paramInt)
  {
    long l = VuforiaJNI.ImageTarget_getVirtualButton__SWIG_0(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new VirtualButton(l, false);
  }
  
  public VirtualButton getVirtualButton(String paramString)
  {
    long l = VuforiaJNI.ImageTarget_getVirtualButton__SWIG_1(this.swigCPtr, this, paramString);
    if (l == 0L) {
      return null;
    }
    return new VirtualButton(l, false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ImageTarget
 * JD-Core Version:    0.7.0.1
 */