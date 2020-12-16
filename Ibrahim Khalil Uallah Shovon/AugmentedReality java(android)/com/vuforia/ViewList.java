package com.vuforia;

public class ViewList
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected ViewList(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ViewList paramViewList)
  {
    if (paramViewList == null) {
      return 0L;
    }
    return paramViewList.swigCPtr;
  }
  
  public boolean contains(int paramInt)
  {
    return VuforiaJNI.ViewList_contains(this.swigCPtr, this, paramInt);
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
          VuforiaJNI.delete_ViewList(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ViewList;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ViewList)paramObject).swigCPtr < this.swigCPtr;
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
  
  public long getNumViews()
  {
    return VuforiaJNI.ViewList_getNumViews(this.swigCPtr, this);
  }
  
  public int getView(int paramInt)
  {
    return VuforiaJNI.ViewList_getView(this.swigCPtr, this, paramInt);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ViewList
 * JD-Core Version:    0.7.0.1
 */