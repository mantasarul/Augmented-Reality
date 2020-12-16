package com.vuforia;

public class Vec3I
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Vec3I()
  {
    this(VuforiaJNI.new_Vec3I__SWIG_0(), true);
  }
  
  protected Vec3I(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Vec3I(int[] paramArrayOfInt)
  {
    this(VuforiaJNI.new_Vec3I__SWIG_1(paramArrayOfInt), true);
  }
  
  protected static long getCPtr(Vec3I paramVec3I)
  {
    if (paramVec3I == null) {
      return 0L;
    }
    return paramVec3I.swigCPtr;
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
          VuforiaJNI.delete_Vec3I(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Vec3I;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Vec3I)paramObject).swigCPtr < this.swigCPtr;
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
    return VuforiaJNI.Vec3I_data_get(this.swigCPtr, this);
  }
  
  public void setData(int[] paramArrayOfInt)
  {
    VuforiaJNI.Vec3I_data_set(this.swigCPtr, this, paramArrayOfInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vec3I
 * JD-Core Version:    0.7.0.1
 */