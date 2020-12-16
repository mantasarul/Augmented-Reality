package com.vuforia;

public class CameraField
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public CameraField()
  {
    this(VuforiaJNI.new_CameraField(), true);
  }
  
  protected CameraField(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(CameraField paramCameraField)
  {
    if (paramCameraField == null) {
      return 0L;
    }
    return paramCameraField.swigCPtr;
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
          VuforiaJNI.delete_CameraField(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof CameraField;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((CameraField)paramObject).swigCPtr < this.swigCPtr;
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
  
  public String getKey()
  {
    return VuforiaJNI.CameraField_Key_get(this.swigCPtr, this);
  }
  
  public int getType()
  {
    return VuforiaJNI.CameraField_Type_get(this.swigCPtr, this);
  }
  
  public static final class DataType
  {
    public static final int TypeBool = 3;
    public static final int TypeFloat = 2;
    public static final int TypeInt64 = 1;
    public static final int TypeInt64Range = 4;
    public static final int TypeString = 0;
    public static final int TypeUnknown = 5;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.CameraField
 * JD-Core Version:    0.7.0.1
 */