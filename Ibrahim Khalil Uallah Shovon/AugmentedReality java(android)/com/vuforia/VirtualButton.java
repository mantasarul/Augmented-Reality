package com.vuforia;

public class VirtualButton
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected VirtualButton(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VirtualButton paramVirtualButton)
  {
    if (paramVirtualButton == null) {
      return 0L;
    }
    return paramVirtualButton.swigCPtr;
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
    boolean bool1 = paramObject instanceof VirtualButton;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VirtualButton)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public Area getArea()
  {
    long l = VuforiaJNI.VirtualButton_getArea(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    switch (new Area(l, false).getType())
    {
    default: 
      return null;
    case 0: 
      return new Rectangle(l, false);
    }
    return new RectangleInt(l, false);
  }
  
  public int getID()
  {
    return VuforiaJNI.VirtualButton_getID(this.swigCPtr, this);
  }
  
  public String getName()
  {
    return VuforiaJNI.VirtualButton_getName(this.swigCPtr, this);
  }
  
  public boolean isEnabled()
  {
    return VuforiaJNI.VirtualButton_isEnabled(this.swigCPtr, this);
  }
  
  public boolean setArea(Area paramArea)
  {
    return VuforiaJNI.VirtualButton_setArea(this.swigCPtr, this, Area.getCPtr(paramArea), paramArea);
  }
  
  public boolean setEnabled(boolean paramBoolean)
  {
    return VuforiaJNI.VirtualButton_setEnabled(this.swigCPtr, this, paramBoolean);
  }
  
  public boolean setSensitivity(int paramInt)
  {
    return VuforiaJNI.VirtualButton_setSensitivity(this.swigCPtr, this, paramInt);
  }
  
  public static final class SENSITIVITY
  {
    public static final int HIGH = 0;
    public static final int LOW = 2;
    public static final int MEDIUM = 1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VirtualButton
 * JD-Core Version:    0.7.0.1
 */