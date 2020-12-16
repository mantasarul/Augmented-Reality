package com.vuforia;

public class TextureUnit
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TextureUnit(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TextureUnit paramTextureUnit)
  {
    if (paramTextureUnit == null) {
      return 0L;
    }
    return paramTextureUnit.swigCPtr;
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
    boolean bool1 = paramObject instanceof TextureUnit;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TextureUnit)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public int type()
  {
    return VuforiaJNI.TextureUnit_type(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TextureUnit
 * JD-Core Version:    0.7.0.1
 */