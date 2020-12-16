package com.vuforia;

public class GuideView
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected GuideView(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(GuideView paramGuideView)
  {
    if (paramGuideView == null) {
      return 0L;
    }
    return paramGuideView.swigCPtr;
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
          VuforiaJNI.delete_GuideView(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof GuideView;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((GuideView)paramObject).swigCPtr < this.swigCPtr;
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
  
  public Image getImage()
  {
    long l = VuforiaJNI.GuideView_getImage(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Image(l, false);
  }
  
  public CameraCalibration getIntrinsics()
  {
    return new CameraCalibration(VuforiaJNI.GuideView_getIntrinsics(this.swigCPtr, this), false);
  }
  
  public Matrix34F getPose()
  {
    return new Matrix34F(VuforiaJNI.GuideView_getPose(this.swigCPtr, this), false);
  }
  
  public void setPose(Matrix34F paramMatrix34F)
  {
    VuforiaJNI.GuideView_setPose(this.swigCPtr, this, Matrix34F.getCPtr(paramMatrix34F), paramMatrix34F);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.GuideView
 * JD-Core Version:    0.7.0.1
 */