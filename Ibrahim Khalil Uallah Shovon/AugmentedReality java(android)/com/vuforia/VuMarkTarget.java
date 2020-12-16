package com.vuforia;

public class VuMarkTarget
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected VuMarkTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.VuMarkTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VuMarkTarget paramVuMarkTarget)
  {
    if (paramVuMarkTarget == null) {
      return 0L;
    }
    return paramVuMarkTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.VuMarkTarget_getClassType(), true);
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
          VuforiaJNI.delete_VuMarkTarget(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof VuMarkTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VuMarkTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public InstanceId getInstanceId()
  {
    return new InstanceId(VuforiaJNI.VuMarkTarget_getInstanceId(this.swigCPtr, this), false);
  }
  
  public Image getInstanceImage()
  {
    return new Image(VuforiaJNI.VuMarkTarget_getInstanceImage(this.swigCPtr, this), false);
  }
  
  public VuMarkTemplate getTemplate()
  {
    return new VuMarkTemplate(VuforiaJNI.VuMarkTarget_getTemplate(this.swigCPtr, this), false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VuMarkTarget
 * JD-Core Version:    0.7.0.1
 */