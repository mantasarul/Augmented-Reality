package com.vuforia;

public class State
  implements Cloneable
{
  private Frame mFrame = null;
  private Object mFrameMutex = new Object();
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  public State()
  {
    this(VuforiaJNI.new_State__SWIG_0(), true);
  }
  
  protected State(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  public State(State paramState)
  {
    this(VuforiaJNI.new_State__SWIG_1(getCPtr(paramState), paramState), true);
  }
  
  protected static long getCPtr(State paramState)
  {
    if (paramState == null) {
      return 0L;
    }
    return paramState.swigCPtr;
  }
  
  public State clone()
  {
    return new State(this);
  }
  
  /* Error */
  protected void delete()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/vuforia/State:swigCPtr	J
    //   6: lconst_0
    //   7: lcmp
    //   8: ifeq +55 -> 63
    //   11: aload_0
    //   12: getfield 33	com/vuforia/State:swigCMemOwn	Z
    //   15: ifeq +15 -> 30
    //   18: aload_0
    //   19: iconst_0
    //   20: putfield 33	com/vuforia/State:swigCMemOwn	Z
    //   23: aload_0
    //   24: getfield 35	com/vuforia/State:swigCPtr	J
    //   27: invokestatic 58	com/vuforia/VuforiaJNI:delete_State	(J)V
    //   30: aload_0
    //   31: getfield 31	com/vuforia/State:mFrameMutex	Ljava/lang/Object;
    //   34: astore_2
    //   35: aload_2
    //   36: monitorenter
    //   37: aload_0
    //   38: getfield 29	com/vuforia/State:mFrame	Lcom/vuforia/Frame;
    //   41: ifnull +15 -> 56
    //   44: aload_0
    //   45: getfield 29	com/vuforia/State:mFrame	Lcom/vuforia/Frame;
    //   48: invokevirtual 62	com/vuforia/Frame:delete	()V
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 29	com/vuforia/State:mFrame	Lcom/vuforia/Frame;
    //   56: aload_2
    //   57: monitorexit
    //   58: aload_0
    //   59: lconst_0
    //   60: putfield 35	com/vuforia/State:swigCPtr	J
    //   63: aload_0
    //   64: monitorexit
    //   65: return
    //   66: astore_3
    //   67: aload_2
    //   68: monitorexit
    //   69: aload_3
    //   70: athrow
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	State
    //   71	4	1	localObject1	Object
    //   66	4	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   37	56	66	finally
    //   56	58	66	finally
    //   67	69	66	finally
    //   2	30	71	finally
    //   30	37	71	finally
    //   58	63	71	finally
    //   69	71	71	finally
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof State;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((State)paramObject).swigCPtr < this.swigCPtr;
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
  
  public CameraCalibration getCameraCalibration()
  {
    long l = VuforiaJNI.State_getCameraCalibration(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new CameraCalibration(l, false);
  }
  
  public DeviceTrackableResult getDeviceTrackableResult()
  {
    long l = VuforiaJNI.State_getDeviceTrackableResult(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new DeviceTrackableResult(l, false);
  }
  
  public Frame getFrame()
  {
    synchronized (this.mFrameMutex)
    {
      if (this.mFrame == null) {
        this.mFrame = new Frame(VuforiaJNI.State_getFrame(this.swigCPtr, this), true);
      }
      return this.mFrame;
    }
  }
  
  public Illumination getIllumination()
  {
    long l = VuforiaJNI.State_getIllumination(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new Illumination(l, false);
  }
  
  public int getNumTrackableResults()
  {
    return VuforiaJNI.State_getNumTrackableResults(this.swigCPtr, this);
  }
  
  public int getNumTrackables()
  {
    return VuforiaJNI.State_getNumTrackables(this.swigCPtr, this);
  }
  
  public Trackable getTrackable(int paramInt)
  {
    long l = VuforiaJNI.State_getTrackable(this.swigCPtr, this, paramInt);
    if (l == 0L) {}
    Trackable localTrackable;
    do
    {
      return null;
      localTrackable = new Trackable(l, false);
      if (localTrackable.isOfType(ImageTarget.getClassType())) {
        return new ImageTarget(l, false);
      }
      if (localTrackable.isOfType(CylinderTarget.getClassType())) {
        return new CylinderTarget(l, false);
      }
      if (localTrackable.isOfType(MultiTarget.getClassType())) {
        return new MultiTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTarget.getClassType())) {
        return new VuMarkTarget(l, false);
      }
      if (localTrackable.isOfType(VuMarkTemplate.getClassType())) {
        return new VuMarkTemplate(l, false);
      }
      if (localTrackable.isOfType(ModelTarget.getClassType())) {
        return new ModelTarget(l, false);
      }
      if (localTrackable.isOfType(ObjectTarget.getClassType())) {
        return new ObjectTarget(l, false);
      }
      if (localTrackable.isOfType(Anchor.getClassType())) {
        return new Anchor(l, false);
      }
    } while (!localTrackable.isOfType(DeviceTrackable.getClassType()));
    return new DeviceTrackable(l, false);
  }
  
  public TrackableResult getTrackableResult(int paramInt)
  {
    long l = VuforiaJNI.State_getTrackableResult(this.swigCPtr, this, paramInt);
    if (l == 0L) {}
    TrackableResult localTrackableResult;
    do
    {
      return null;
      localTrackableResult = new TrackableResult(l, false);
      if (localTrackableResult.isOfType(ImageTargetResult.getClassType())) {
        return new ImageTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(CylinderTargetResult.getClassType())) {
        return new CylinderTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(MultiTargetResult.getClassType())) {
        return new MultiTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(VuMarkTargetResult.getClassType())) {
        return new VuMarkTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ModelTargetResult.getClassType())) {
        return new ModelTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(ObjectTargetResult.getClassType())) {
        return new ObjectTargetResult(l, false);
      }
      if (localTrackableResult.isOfType(AnchorResult.getClassType())) {
        return new AnchorResult(l, false);
      }
    } while (!localTrackableResult.isOfType(DeviceTrackableResult.getClassType()));
    return new DeviceTrackableResult(l, false);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.State
 * JD-Core Version:    0.7.0.1
 */