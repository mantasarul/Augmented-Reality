package com.vuforia;

public class MultiTarget
  extends ObjectTarget
{
  private long swigCPtr;
  
  protected MultiTarget(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.MultiTarget_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(MultiTarget paramMultiTarget)
  {
    if (paramMultiTarget == null) {
      return 0L;
    }
    return paramMultiTarget.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.MultiTarget_getClassType(), true);
  }
  
  public int addPart(Trackable paramTrackable)
  {
    return VuforiaJNI.MultiTarget_addPart(this.swigCPtr, this, Trackable.getCPtr(paramTrackable), paramTrackable);
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
          VuforiaJNI.delete_MultiTarget(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof MultiTarget;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((MultiTarget)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getNumParts()
  {
    return VuforiaJNI.MultiTarget_getNumParts(this.swigCPtr, this);
  }
  
  public Trackable getPart(int paramInt)
  {
    long l = VuforiaJNI.MultiTarget_getPart__SWIG_0(this.swigCPtr, this, paramInt);
    if (l == 0L) {}
    Trackable localTrackable;
    do
    {
      return null;
      localTrackable = new Trackable(l, false);
      if (localTrackable.isOfType(ImageTarget.getClassType())) {
        return new ImageTarget(l, false);
      }
      if (localTrackable.isOfType(CylinderTarget.getClassType())) {
        return new CylinderTarget(l, false);
      }
      if (localTrackable.isOfType(getClassType())) {
        return new MultiTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTarget.getClassType())) {
        return new VuMarkTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTemplate.getClassType())) {
        return new VuMarkTemplate(l, false);
      }
      if (localTrackable.isOfType(ModelTarget.getClassType())) {
        return new ModelTarget(l, false);
      }
      if (localTrackable.isOfType(ObjectTarget.getClassType())) {
        return new ObjectTarget(l, false);
      }
      if (localTrackable.isOfType(Anchor.getClassType())) {
        return new Anchor(l, false);
      }
    } while (!localTrackable.isOfType(DeviceTrackable.getClassType()));
    return new DeviceTrackable(l, false);
  }
  
  public Trackable getPart(String paramString)
  {
    long l = VuforiaJNI.MultiTarget_getPart__SWIG_1(this.swigCPtr, this, paramString);
    if (l == 0L) {}
    Trackable localTrackable;
    do
    {
      return null;
      localTrackable = new Trackable(l, false);
      if (localTrackable.isOfType(ImageTarget.getClassType())) {
        return new ImageTarget(l, false);
      }
      if (localTrackable.isOfType(CylinderTarget.getClassType())) {
        return new CylinderTarget(l, false);
      }
      if (localTrackable.isOfType(getClassType())) {
        return new MultiTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTarget.getClassType())) {
        return new VuMarkTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTemplate.getClassType())) {
        return new VuMarkTemplate(l, false);
      }
      if (localTrackable.isOfType(ModelTarget.getClassType())) {
        return new ModelTarget(l, false);
      }
      if (localTrackable.isOfType(ObjectTarget.getClassType())) {
        return new ObjectTarget(l, false);
      }
      if (localTrackable.isOfType(Anchor.getClassType())) {
        return new Anchor(l, false);
      }
    } while (!localTrackable.isOfType(DeviceTrackable.getClassType()));
    return new DeviceTrackable(l, false);
  }
  
  public boolean getPartOffset(int paramInt, Matrix34F paramMatrix34F)
  {
    return VuforiaJNI.MultiTarget_getPartOffset(this.swigCPtr, this, paramInt, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
  
  public boolean removePart(int paramInt)
  {
    return VuforiaJNI.MultiTarget_removePart(this.swigCPtr, this, paramInt);
  }
  
  public boolean setPartOffset(int paramInt, Matrix34F paramMatrix34F)
  {
    return VuforiaJNI.MultiTarget_setPartOffset(this.swigCPtr, this, paramInt, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.MultiTarget
 * JD-Core Version:    0.7.0.1
 */