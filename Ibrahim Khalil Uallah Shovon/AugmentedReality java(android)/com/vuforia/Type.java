package com.vuforia;

public class Type
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public Type()
  {
    this(VuforiaJNI.new_Type__SWIG_0(), true);
  }
  
  protected Type(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public Type(short paramShort)
  {
    this(VuforiaJNI.new_Type__SWIG_1(paramShort), true);
  }
  
  protected static long getCPtr(Type paramType)
  {
    if (paramType == null) {
      return 0L;
    }
    return paramType.swigCPtr;
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
          VuforiaJNI.delete_Type(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Type;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Type)paramObject).swigCPtr < this.swigCPtr;
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
  
  public boolean isOfType(Type paramType)
  {
    return VuforiaJNI.Type_isOfType(this.swigCPtr, this, getCPtr(paramType), paramType);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Type
 * JD-Core Version:    0.7.0.1
 */