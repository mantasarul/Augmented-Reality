package com.vuforia;

public class Anchor
  extends Trackable
{
  private long swigCPtr;
  
  protected Anchor(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.Anchor_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Anchor paramAnchor)
  {
    if (paramAnchor == null) {
      return 0L;
    }
    return paramAnchor.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.Anchor_getClassType(), true);
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
          VuforiaJNI.delete_Anchor(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof Anchor;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Anchor)paramObject).swigCPtr < this.swigCPtr;
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
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Anchor
 * JD-Core Version:    0.7.0.1
 */