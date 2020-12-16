package com.vuforia;

public class TargetFinder
{
  public static final int FILTER_CURRENTLY_TRACKED = 1;
  public static final int FILTER_NONE = 0;
  public static final int INIT_DEFAULT = 0;
  public static final int INIT_ERROR_NO_NETWORK_CONNECTION = -1;
  public static final int INIT_ERROR_SERVICE_NOT_AVAILABLE = -2;
  public static final int INIT_RUNNING = 1;
  public static final int INIT_SUCCESS = 2;
  public static final int UPDATE_ERROR_AUTHORIZATION_FAILED = -1;
  public static final int UPDATE_ERROR_BAD_FRAME_QUALITY = -5;
  public static final int UPDATE_ERROR_NO_NETWORK_CONNECTION = -3;
  public static final int UPDATE_ERROR_PROJECT_SUSPENDED = -2;
  public static final int UPDATE_ERROR_REQUEST_TIMEOUT = -8;
  public static final int UPDATE_ERROR_SERVICE_NOT_AVAILABLE = -4;
  public static final int UPDATE_ERROR_TIMESTAMP_OUT_OF_RANGE = -7;
  public static final int UPDATE_ERROR_UPDATE_SDK = -6;
  public static final int UPDATE_NO_MATCH = 0;
  public static final int UPDATE_NO_REQUEST = 1;
  public static final int UPDATE_RESULTS_AVAILABLE = 2;
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TargetFinder(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TargetFinder paramTargetFinder)
  {
    if (paramTargetFinder == null) {
      return 0L;
    }
    return paramTargetFinder.swigCPtr;
  }
  
  public void clearTrackables()
  {
    VuforiaJNI.TargetFinder_clearTrackables(this.swigCPtr, this);
  }
  
  public boolean deinit()
  {
    return VuforiaJNI.TargetFinder_deinit(this.swigCPtr, this);
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
          VuforiaJNI.delete_TargetFinder(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public ImageTarget enableTracking(TargetSearchResult paramTargetSearchResult)
  {
    long l = VuforiaJNI.TargetFinder_enableTracking(this.swigCPtr, this, TargetSearchResult.getCPtr(paramTargetSearchResult), paramTargetSearchResult);
    if (l == 0L) {
      return null;
    }
    return new ImageTarget(l, false);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TargetFinder;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TargetFinder)paramObject).swigCPtr < this.swigCPtr;
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
  
  public ImageTarget getImageTarget(int paramInt)
  {
    long l = VuforiaJNI.TargetFinder_getImageTarget(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new ImageTarget(l, false);
  }
  
  public int getInitState()
  {
    return VuforiaJNI.TargetFinder_getInitState(this.swigCPtr, this);
  }
  
  public int getNumImageTargets()
  {
    return VuforiaJNI.TargetFinder_getNumImageTargets(this.swigCPtr, this);
  }
  
  public TargetSearchResult getResult(int paramInt)
  {
    long l = VuforiaJNI.TargetFinder_getResult(this.swigCPtr, this, paramInt);
    if (l == 0L) {
      return null;
    }
    return new TargetSearchResult(l, false);
  }
  
  public int getResultCount()
  {
    return VuforiaJNI.TargetFinder_getResultCount(this.swigCPtr, this);
  }
  
  public boolean isRequesting()
  {
    return VuforiaJNI.TargetFinder_isRequesting(this.swigCPtr, this);
  }
  
  public boolean startInit(String paramString1, String paramString2)
  {
    return VuforiaJNI.TargetFinder_startInit(this.swigCPtr, this, paramString1, paramString2);
  }
  
  public boolean startRecognition()
  {
    return VuforiaJNI.TargetFinder_startRecognition(this.swigCPtr, this);
  }
  
  public boolean stop()
  {
    return VuforiaJNI.TargetFinder_stop(this.swigCPtr, this);
  }
  
  public int updateSearchResults()
  {
    return VuforiaJNI.TargetFinder_updateSearchResults__SWIG_1(this.swigCPtr, this);
  }
  
  public int updateSearchResults(int paramInt)
  {
    return VuforiaJNI.TargetFinder_updateSearchResults__SWIG_0(this.swigCPtr, this, paramInt);
  }
  
  public void waitUntilInitFinished()
  {
    VuforiaJNI.TargetFinder_waitUntilInitFinished(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TargetFinder
 * JD-Core Version:    0.7.0.1
 */