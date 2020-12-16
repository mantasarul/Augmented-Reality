package com.vuforia;

public class VuMarkTemplate
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected VuMarkTemplate(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.VuMarkTemplate_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VuMarkTemplate paramVuMarkTemplate)
  {
    if (paramVuMarkTemplate == null) {
      return 0L;
    }
    return paramVuMarkTemplate.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.VuMarkTemplate_getClassType(), true);
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
          VuforiaJNI.delete_VuMarkTemplate(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof VuMarkTemplate;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VuMarkTemplate)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Vec2F getOrigin()
  {
    return new Vec2F(VuforiaJNI.VuMarkTemplate_getOrigin(this.swigCPtr, this), true);
  }
  
  public String getVuMarkUserData()
  {
    return VuforiaJNI.VuMarkTemplate_getVuMarkUserData(this.swigCPtr, this);
  }
  
  public boolean isTrackingFromRuntimeAppearanceEnabled()
  {
    return VuforiaJNI.VuMarkTemplate_isTrackingFromRuntimeAppearanceEnabled(this.swigCPtr, this);
  }
  
  public void setTrackingFromRuntimeAppearance(boolean paramBoolean)
  {
    VuforiaJNI.VuMarkTemplate_setTrackingFromRuntimeAppearance(this.swigCPtr, this, paramBoolean);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VuMarkTemplate
 * JD-Core Version:    0.7.0.1
 */