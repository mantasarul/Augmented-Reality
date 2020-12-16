package com.vuforia;

class UpdateCallback
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public UpdateCallback()
  {
    this(VuforiaJNI.new_UpdateCallback(), true);
    VuforiaJNI.UpdateCallback_director_connect(this, this.swigCPtr, this.swigCMemOwn, true);
  }
  
  protected UpdateCallback(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(UpdateCallback paramUpdateCallback)
  {
    if (paramUpdateCallback == null) {
      return 0L;
    }
    return paramUpdateCallback.swigCPtr;
  }
  
  public void Vuforia_onUpdate(State paramState)
  {
    VuforiaJNI.UpdateCallback_Vuforia_onUpdate(this.swigCPtr, this, State.getCPtr(paramState), paramState);
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
          VuforiaJNI.delete_UpdateCallback(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof UpdateCallback;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((UpdateCallback)paramObject).swigCPtr < this.swigCPtr;
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
  
  protected void swigDirectorDisconnect()
  {
    this.swigCMemOwn = false;
    delete();
  }
  
  public void swigReleaseOwnership()
  {
    this.swigCMemOwn = false;
    VuforiaJNI.UpdateCallback_change_ownership(this, this.swigCPtr, false);
  }
  
  public void swigTakeOwnership()
  {
    this.swigCMemOwn = true;
    VuforiaJNI.UpdateCallback_change_ownership(this, this.swigCPtr, true);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.UpdateCallback
 * JD-Core Version:    0.7.0.1
 */