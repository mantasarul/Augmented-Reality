package com.vuforia;

public class VideoBackgroundConfig
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public VideoBackgroundConfig()
  {
    this(VuforiaJNI.new_VideoBackgroundConfig(), true);
  }
  
  protected VideoBackgroundConfig(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(VideoBackgroundConfig paramVideoBackgroundConfig)
  {
    if (paramVideoBackgroundConfig == null) {
      return 0L;
    }
    return paramVideoBackgroundConfig.swigCPtr;
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
          VuforiaJNI.delete_VideoBackgroundConfig(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof VideoBackgroundConfig;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((VideoBackgroundConfig)paramObject).swigCPtr < this.swigCPtr;
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
  
  public boolean getEnabled()
  {
    return VuforiaJNI.VideoBackgroundConfig_Enabled_get(this.swigCPtr, this);
  }
  
  public Vec2I getPosition()
  {
    long l = VuforiaJNI.VideoBackgroundConfig_Position_get(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Vec2I(l, false);
  }
  
  public int getReflection()
  {
    return VuforiaJNI.VideoBackgroundConfig_Reflection_get(this.swigCPtr, this);
  }
  
  public Vec2I getSize()
  {
    long l = VuforiaJNI.VideoBackgroundConfig_Size_get(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Vec2I(l, false);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    VuforiaJNI.VideoBackgroundConfig_Enabled_set(this.swigCPtr, this, paramBoolean);
  }
  
  public void setPosition(Vec2I paramVec2I)
  {
    VuforiaJNI.VideoBackgroundConfig_Position_set(this.swigCPtr, this, Vec2I.getCPtr(paramVec2I), paramVec2I);
  }
  
  public void setReflection(int paramInt)
  {
    VuforiaJNI.VideoBackgroundConfig_Reflection_set(this.swigCPtr, this, paramInt);
  }
  
  public void setSize(Vec2I paramVec2I)
  {
    VuforiaJNI.VideoBackgroundConfig_Size_set(this.swigCPtr, this, Vec2I.getCPtr(paramVec2I), paramVec2I);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VideoBackgroundConfig
 * JD-Core Version:    0.7.0.1
 */