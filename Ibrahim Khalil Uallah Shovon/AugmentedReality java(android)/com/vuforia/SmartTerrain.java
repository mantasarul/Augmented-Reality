package com.vuforia;

public class SmartTerrain
  extends Tracker
{
  private long swigCPtr;
  
  protected SmartTerrain(long paramLong, boolean paramBoolean)
  {
    super(VuforiaJNI.SmartTerrain_SWIGUpcast(paramLong), paramBoolean);
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(SmartTerrain paramSmartTerrain)
  {
    if (paramSmartTerrain == null) {
      return 0L;
    }
    return paramSmartTerrain.swigCPtr;
  }
  
  public static Type getClassType()
  {
    return new Type(VuforiaJNI.SmartTerrain_getClassType(), true);
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
          VuforiaJNI.delete_SmartTerrain(this.swigCPtr);
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
    boolean bool1 = paramObject instanceof SmartTerrain;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((SmartTerrain)paramObject).swigCPtr < this.swigCPtr;
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
  
  public HitTestResult getHitTestResult(int paramInt)
  {
    long l = VuforiaJNI.SmartTerrain_getHitTestResult(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new HitTestResult(l, false);
  }
  
  public int getHitTestResultCount()
  {
    return VuforiaJNI.SmartTerrain_getHitTestResultCount(this.swigCPtr, this);
  }
  
  public void hitTest(State paramState, Vec2F paramVec2F, float paramFloat, int paramInt)
  {
    VuforiaJNI.SmartTerrain_hitTest(this.swigCPtr, this, State.getCPtr(paramState), paramState, Vec2F.getCPtr(paramVec2F), paramVec2F, paramFloat, paramInt);
  }
  
  public static final class HITTEST_HINT
  {
    public static final int HITTEST_HINT_HORIZONTAL_PLANE = 1;
    public static final int HITTEST_HINT_NONE = 0;
    public static final int HITTEST_HINT_VERTICAL_PLANE = 2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.SmartTerrain
 * JD-Core Version:    0.7.0.1
 */