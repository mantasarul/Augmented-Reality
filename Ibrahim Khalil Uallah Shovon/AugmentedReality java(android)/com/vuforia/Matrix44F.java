package com.vuforia;

public class Matrix44F
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Matrix44F()
  {
    this(VuforiaJNI.new_Matrix44F__SWIG_0(), true);
  }
  
  protected Matrix44F(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Matrix44F(Matrix44F paramMatrix44F)
  {
    this(VuforiaJNI.new_Matrix44F__SWIG_1(getCPtr(paramMatrix44F), paramMatrix44F), true);
  }
  
  protected static long getCPtr(Matrix44F paramMatrix44F)
  {
    if (paramMatrix44F == null) {
      return 0L;
    }
    return paramMatrix44F.swigCPtr;
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
          VuforiaJNI.delete_Matrix44F(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Matrix44F;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Matrix44F)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float[] getData()
  {
    return VuforiaJNI.Matrix44F_data_get(this.swigCPtr, this);
  }
  
  public void setData(float[] paramArrayOfFloat)
  {
    VuforiaJNI.Matrix44F_data_set(this.swigCPtr, this, paramArrayOfFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Matrix44F
 * JD-Core Version:    0.7.0.1
 */