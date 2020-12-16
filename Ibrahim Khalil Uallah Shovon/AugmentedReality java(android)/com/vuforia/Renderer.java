package com.vuforia;

public class Renderer
{
  public static final int TARGET_FPS_CONTINUOUS = -1;
  private static State sState = null;
  private static final Object sStateMutex = new Object();
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Renderer(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Renderer paramRenderer)
  {
    if (paramRenderer == null) {
      return 0L;
    }
    return paramRenderer.swigCPtr;
  }
  
  public static Renderer getInstance()
  {
    if (!Vuforia.wasInitializedJava()) {
      throw new RuntimeException("Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class");
    }
    return new Renderer(VuforiaJNI.Renderer_getInstance(), false);
  }
  
  public State begin()
  {
    synchronized (sStateMutex)
    {
      if (sState != null) {
        sState.delete();
      }
      sState = new State(VuforiaJNI.Renderer_begin__SWIG_0(this.swigCPtr, this), true);
      return sState;
    }
  }
  
  public void begin(State paramState)
  {
    VuforiaJNI.Renderer_begin__SWIG_1(this.swigCPtr, this, State.getCPtr(paramState), paramState);
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
          VuforiaJNI.delete_Renderer(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public void end()
  {
    VuforiaJNI.Renderer_end(this.swigCPtr, this);
    synchronized (sStateMutex)
    {
      if (sState != null)
      {
        sState.delete();
        sState = null;
      }
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Renderer;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Renderer)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getRecommendedFps()
  {
    return VuforiaJNI.Renderer_getRecommendedFps__SWIG_1(this.swigCPtr, this);
  }
  
  public int getRecommendedFps(int paramInt)
  {
    return VuforiaJNI.Renderer_getRecommendedFps__SWIG_0(this.swigCPtr, this, paramInt);
  }
  
  public VideoBackgroundConfig getVideoBackgroundConfig()
  {
    return new VideoBackgroundConfig(VuforiaJNI.Renderer_getVideoBackgroundConfig(this.swigCPtr, this), false);
  }
  
  public VideoBackgroundTextureInfo getVideoBackgroundTextureInfo()
  {
    return new VideoBackgroundTextureInfo(VuforiaJNI.Renderer_getVideoBackgroundTextureInfo(this.swigCPtr, this), false);
  }
  
  public boolean setTargetFps(int paramInt)
  {
    return VuforiaJNI.Renderer_setTargetFps(this.swigCPtr, this, paramInt);
  }
  
  public void setVideoBackgroundConfig(VideoBackgroundConfig paramVideoBackgroundConfig)
  {
    VuforiaJNI.Renderer_setVideoBackgroundConfig(this.swigCPtr, this, VideoBackgroundConfig.getCPtr(paramVideoBackgroundConfig), paramVideoBackgroundConfig);
  }
  
  public boolean setVideoBackgroundTexture(TextureData paramTextureData)
  {
    return VuforiaJNI.Renderer_setVideoBackgroundTexture(this.swigCPtr, this, TextureData.getCPtr(paramTextureData), paramTextureData);
  }
  
  public boolean updateVideoBackgroundTexture()
  {
    return VuforiaJNI.Renderer_updateVideoBackgroundTexture__SWIG_1(this.swigCPtr, this);
  }
  
  public boolean updateVideoBackgroundTexture(TextureUnit paramTextureUnit)
  {
    return VuforiaJNI.Renderer_updateVideoBackgroundTexture__SWIG_0(this.swigCPtr, this, TextureUnit.getCPtr(paramTextureUnit), paramTextureUnit);
  }
  
  public static final class FPSHINT_FLAGS
  {
    public static final int FPSHINT_DEFAULT_FLAGS = 0;
    public static final int FPSHINT_FAST = 4;
    public static final int FPSHINT_NONE = 0;
    public static final int FPSHINT_NO_VIDEOBACKGROUND = 1;
    public static final int FPSHINT_POWER_EFFICIENCY = 2;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Renderer
 * JD-Core Version:    0.7.0.1
 */