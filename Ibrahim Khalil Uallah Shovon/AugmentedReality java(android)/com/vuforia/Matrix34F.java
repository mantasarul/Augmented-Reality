package com.vuforia;

public class Matrix34F
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Matrix34F()
  {
    this(VuforiaJNI.new_Matrix34F__SWIG_0(), true);
  }
  
  protected Matrix34F(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Matrix34F(Matrix34F paramMatrix34F)
  {
    this(VuforiaJNI.new_Matrix34F__SWIG_1(getCPtr(paramMatrix34F), paramMatrix34F), true);
  }
  
  protected static long getCPtr(Matrix34F paramMatrix34F)
  {
    if (paramMatrix34F == null) {
      return 0L;
    }
    return paramMatrix34F.swigCPtr;
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
          VuforiaJNI.delete_Matrix34F(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Matrix34F;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Matrix34F)paramObject).swigCPtr < this.swigCPtr;
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
    return VuforiaJNI.Matrix34F_data_get(this.swigCPtr, this);
  }
  
  public void setData(float[] paramArrayOfFloat)
  {
    VuforiaJNI.Matrix34F_data_set(this.swigCPtr, this, paramArrayOfFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Matrix34F
 * JD-Core Version:    0.7.0.1
 */