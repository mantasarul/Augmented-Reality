package com.vuforia;

public class NonCopyable
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected NonCopyable(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(NonCopyable paramNonCopyable)
  {
    if (paramNonCopyable == null) {
      return 0L;
    }
    return paramNonCopyable.swigCPtr;
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
    boolean bool1 = paramObject instanceof NonCopyable;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((NonCopyable)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.NonCopyable
 * JD-Core Version:    0.7.0.1
 */