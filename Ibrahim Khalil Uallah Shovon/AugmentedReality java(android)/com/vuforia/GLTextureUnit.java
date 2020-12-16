package com.vuforia;

public class GLTextureUnit
  extends TextureUnit
{
  private long swigCPtr;
  
  public GLTextureUnit()
  {
    this(VuforiaJNI.new_GLTextureUnit__SWIG_1(), true);
  }
  
  public GLTextureUnit(int paramInt)
  {
    this(VuforiaJNI.new_GLTextureUnit__SWIG_0(paramInt), true);
  }
  
  protected GLTextureUnit(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.GLTextureUnit_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(GLTextureUnit paramGLTextureUnit)
  {
    if (paramGLTextureUnit == null) {
      return 0L;
    }
    return paramGLTextureUnit.swigCPtr;
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
          VuforiaJNI.delete_GLTextureUnit(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof GLTextureUnit;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((GLTextureUnit)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getTextureUnit()
  {
    return VuforiaJNI.GLTextureUnit_TextureUnit_get(this.swigCPtr, this);
  }
  
  public void setTextureUnit(int paramInt)
  {
    VuforiaJNI.GLTextureUnit_TextureUnit_set(this.swigCPtr, this, paramInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.GLTextureUnit
 * JD-Core Version:    0.7.0.1
 */