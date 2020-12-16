package com.vuforia;

public class RendererHelper
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public RendererHelper()
  {
    this(VuforiaJNI.new_RendererHelper(), true);
  }
  
  protected RendererHelper(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public static boolean drawVideoBackground()
  {
    return VuforiaJNI.RendererHelper_drawVideoBackground();
  }
  
  protected static long getCPtr(RendererHelper paramRendererHelper)
  {
    if (paramRendererHelper == null) {
      return 0L;
    }
    return paramRendererHelper.swigCPtr;
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
          VuforiaJNI.delete_RendererHelper(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof RendererHelper;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((RendererHelper)paramObject).swigCPtr < this.swigCPtr;
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
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.RendererHelper
 * JD-Core Version:    0.7.0.1
 */