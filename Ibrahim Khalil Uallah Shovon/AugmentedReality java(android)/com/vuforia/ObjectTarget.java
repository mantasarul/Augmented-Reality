package com.vuforia;

public class ObjectTarget
  extends Trackable
{
  private long swigCPtr;
  
  protected ObjectTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.ObjectTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(ObjectTarget paramObjectTarget)
  {
    if (paramObjectTarget == null) {
      return 0L;
    }
    return paramObjectTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.ObjectTarget_getClassType(), true);
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
          VuforiaJNI.delete_ObjectTarget(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof ObjectTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((ObjectTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec3F getSize()
  {
    return new Vec3F(VuforiaJNI.ObjectTarget_getSize(this.swigCPtr, this), true);
  }
  
  public String getUniqueTargetId()
  {
    return VuforiaJNI.ObjectTarget_getUniqueTargetId(this.swigCPtr, this);
  }
  
  public boolean setSize(Vec3F paramVec3F)
  {
    return VuforiaJNI.ObjectTarget_setSize(this.swigCPtr, this, Vec3F.getCPtr(paramVec3F), paramVec3F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ObjectTarget
 * JD-Core Version:    0.7.0.1
 */