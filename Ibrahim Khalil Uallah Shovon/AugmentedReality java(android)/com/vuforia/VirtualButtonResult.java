package com.vuforia;

public class VirtualButtonResult
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected VirtualButtonResult(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VirtualButtonResult paramVirtualButtonResult)
  {
    if (paramVirtualButtonResult == null) {
      return 0L;
    }
    return paramVirtualButtonResult.swigCPtr;
  }
  
  protected void delete()
  {
    try
    {
      if (this.swigCPtr == 0L) {
        break label43;
      }
      if (this.swigCMemOwn)
      {
        this.swigCMemOwn = false;
        throw new UnsupportedOperationException("C++ destructor does not have public access");
      }
    }
    finally {}
    this.swigCPtr = 0L;
    label43:
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof VirtualButtonResult;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VirtualButtonResult)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public VirtualButton getVirtualButton()
  {
    return new VirtualButton(VuforiaJNI.VirtualButtonResult_getVirtualButton(this.swigCPtr, this), false);
  }
  
  public boolean isPressed()
  {
    return VuforiaJNI.VirtualButtonResult_isPressed(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VirtualButtonResult
 * JD-Core Version:    0.7.0.1
 */