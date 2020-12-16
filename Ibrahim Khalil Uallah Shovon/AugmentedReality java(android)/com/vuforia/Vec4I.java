package com.vuforia;

public class Vec4I
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec4I()
  {
    this(VuforiaJNI.new_Vec4I__SWIG_0(), true);
  }
  
  protected Vec4I(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec4I(int[] paramArrayOfInt)
  {
    this(VuforiaJNI.new_Vec4I__SWIG_1(paramArrayOfInt), true);
  }
  
  protected static long getCPtr(Vec4I paramVec4I)
  {
    if (paramVec4I == null) {
      return 0L;
    }
    return paramVec4I.swigCPtr;
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
          VuforiaJNI.delete_Vec4I(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec4I;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec4I)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int[] getData()
  {
    return VuforiaJNI.Vec4I_data_get(this.swigCPtr, this);
  }
  
  public void setData(int[] paramArrayOfInt)
  {
    VuforiaJNI.Vec4I_data_set(this.swigCPtr, this, paramArrayOfInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec4I
 * JD-Core Version:    0.7.0.1
 */