package com.vuforia;

public class GLTextureData
  extends TextureData
{
  private long swigCPtr;
  
  public GLTextureData()
  {
    this(VuforiaJNI.new_GLTextureData__SWIG_1(), true);
  }
  
  public GLTextureData(int paramInt)
  {
    this(VuforiaJNI.new_GLTextureData__SWIG_0(paramInt), true);
  }
  
  protected GLTextureData(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.GLTextureData_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(GLTextureData paramGLTextureData)
  {
    if (paramGLTextureData == null) {
      return 0L;
    }
    return paramGLTextureData.swigCPtr;
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
          VuforiaJNI.delete_GLTextureData(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof GLTextureData;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((GLTextureData)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getVideoBackgroundTextureID()
  {
    return VuforiaJNI.GLTextureData_VideoBackgroundTextureID_get(this.swigCPtr, this);
  }
  
  public void setVideoBackgroundTextureID(int paramInt)
  {
    VuforiaJNI.GLTextureData_VideoBackgroundTextureID_set(this.swigCPtr, this, paramInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.GLTextureData
 * JD-Core Version:    0.7.0.1
 */