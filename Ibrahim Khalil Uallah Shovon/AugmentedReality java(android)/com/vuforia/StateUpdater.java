package com.vuforia;

public class StateUpdater
{
  private static State sState = null;
  private static final Object sStateMutex = new Object();
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected StateUpdater(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(StateUpdater paramStateUpdater)
  {
    if (paramStateUpdater == null) {
      return 0L;
    }
    return paramStateUpdater.swigCPtr;
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
          VuforiaJNI.delete_StateUpdater(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof StateUpdater;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((StateUpdater)paramObject).swigCPtr < this.swigCPtr;
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
  
  public double getCurrentTimeStamp()
  {
    return VuforiaJNI.StateUpdater_getCurrentTimeStamp(this.swigCPtr, this);
  }
  
  public State getLatestState()
  {
    synchronized (sStateMutex)
    {
      State localState = sState;
      return localState;
    }
  }
  
  public State updateState()
  {
    synchronized (sStateMutex)
    {
      if (sState != null) {
        sState.delete();
      }
      sState = new State(VuforiaJNI.StateUpdater_updateState(this.swigCPtr, this), true);
      return sState;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.StateUpdater
 * JD-Core Version:    0.7.0.1
 */