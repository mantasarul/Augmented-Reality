package com.vuforia;

public class Area
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Area(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Area paramArea)
  {
    if (paramArea == null) {
      return 0L;
    }
    return paramArea.swigCPtr;
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
          VuforiaJNI.delete_Area(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Area;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Area)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getType()
  {
    return VuforiaJNI.Area_getType(this.swigCPtr, this);
  }
  
  public static final class TYPE
  {
    public static final int INVALID = 2;
    public static final int RECTANGLE = 0;
    public static final int RECTANGLE_INT = 1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Area
 * JD-Core Version:    0.7.0.1
 */