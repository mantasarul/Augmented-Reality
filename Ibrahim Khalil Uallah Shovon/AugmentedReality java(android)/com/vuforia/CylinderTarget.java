package com.vuforia;

public class CylinderTarget
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected CylinderTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.CylinderTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(CylinderTarget paramCylinderTarget)
  {
    if (paramCylinderTarget == null) {
      return 0L;
    }
    return paramCylinderTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.CylinderTarget_getClassType(), true);
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
          VuforiaJNI.delete_CylinderTarget(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof CylinderTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CylinderTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public float getBottomDiameter()
  {
    return VuforiaJNI.CylinderTarget_getBottomDiameter(this.swigCPtr, this);
  }
  
  public float getSideLength()
  {
    return VuforiaJNI.CylinderTarget_getSideLength(this.swigCPtr, this);
  }
  
  public float getTopDiameter()
  {
    return VuforiaJNI.CylinderTarget_getTopDiameter(this.swigCPtr, this);
  }
  
  public boolean setBottomDiameter(float paramFloat)
  {
    return VuforiaJNI.CylinderTarget_setBottomDiameter(this.swigCPtr, this, paramFloat);
  }
  
  public boolean setSideLength(float paramFloat)
  {
    return VuforiaJNI.CylinderTarget_setSideLength(this.swigCPtr, this, paramFloat);
  }
  
  public boolean setTopDiameter(float paramFloat)
  {
    return VuforiaJNI.CylinderTarget_setTopDiameter(this.swigCPtr, this, paramFloat);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CylinderTarget
 * JD-Core Version:    0.7.0.1
 */