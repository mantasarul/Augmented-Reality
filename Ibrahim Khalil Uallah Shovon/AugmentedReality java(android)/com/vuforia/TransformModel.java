package com.vuforia;

public class TransformModel
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected TransformModel(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(TransformModel paramTransformModel)
  {
    if (paramTransformModel == null) {
      return 0L;
    }
    return paramTransformModel.swigCPtr;
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
          VuforiaJNI.delete_TransformModel(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof TransformModel;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((TransformModel)paramObject).swigCPtr < this.swigCPtr;
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
  
  public int getType()
  {
    return VuforiaJNI.TransformModel_getType(this.swigCPtr, this);
  }
  
  public static final class TYPE
  {
    public static final int TRANSFORM_MODEL_HANDHELD = 1;
    public static final int TRANSFORM_MODEL_HEAD;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.TransformModel
 * JD-Core Version:    0.7.0.1
 */