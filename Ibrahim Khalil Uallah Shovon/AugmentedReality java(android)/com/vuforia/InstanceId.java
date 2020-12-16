package com.vuforia;

import java.math.BigInteger;
import java.nio.ByteBuffer;

public class InstanceId
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected InstanceId(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(InstanceId paramInstanceId)
  {
    if (paramInstanceId == null) {
      return 0L;
    }
    return paramInstanceId.swigCPtr;
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
          VuforiaJNI.delete_InstanceId(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof InstanceId;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((InstanceId)paramObject).swigCPtr < this.swigCPtr;
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
  
  public ByteBuffer getBuffer()
  {
    return VuforiaJNI.InstanceId_getBuffer(this.swigCPtr, this);
  }
  
  public int getDataType()
  {
    return VuforiaJNI.InstanceId_getDataType(this.swigCPtr, this);
  }
  
  public long getLength()
  {
    return VuforiaJNI.InstanceId_getLength(this.swigCPtr, this);
  }
  
  public BigInteger getNumericValue()
  {
    return VuforiaJNI.InstanceId_getNumericValue(this.swigCPtr, this);
  }
  
  public static final class ID_DATA_TYPE
  {
    public static final int BYTES = 0;
    public static final int NUMERIC = 2;
    public static final int STRING = 1;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.InstanceId
 * JD-Core Version:    0.7.0.1
 */