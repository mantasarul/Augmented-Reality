package com.unity3d.player;

import android.content.Context;
import android.graphics.Rect;

public class Camera2Wrapper
  implements d
{
  private Context a;
  private a b = null;
  
  public Camera2Wrapper(Context paramContext)
  {
    this.a = paramContext;
    initCamera2Jni();
  }
  
  private final native void initCamera2Jni();
  
  private final native void nativeFrameReady(Object paramObject1, Object paramObject2, Object paramObject3, int paramInt1, int paramInt2, int paramInt3);
  
  public final void a()
  {
    closeCamera2();
  }
  
  public final void a(Object paramObject1, Object paramObject2, Object paramObject3, int paramInt1, int paramInt2, int paramInt3)
  {
    nativeFrameReady(paramObject1, paramObject2, paramObject3, paramInt1, paramInt2, paramInt3);
  }
  
  protected void closeCamera2()
  {
    if (this.b != null) {
      this.b.b();
    }
    this.b = null;
  }
  
  protected int getCamera2Count()
  {
    if (j.b) {
      return a.a(this.a);
    }
    return 0;
  }
  
  protected int getCamera2SensorOrientation(int paramInt)
  {
    if (j.b) {
      return a.a(this.a, paramInt);
    }
    return 0;
  }
  
  protected Rect getFrameSizeCamera2()
  {
    if (this.b != null) {
      return this.b.a();
    }
    return new Rect();
  }
  
  protected boolean initializeCamera2(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((j.b) && (this.b == null) && (UnityPlayer.currentActivity != null))
    {
      this.b = new a(this);
      return this.b.a(this.a, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    return false;
  }
  
  protected boolean isCamera2FrontFacing(int paramInt)
  {
    if (j.b) {
      return a.b(this.a, paramInt);
    }
    return false;
  }
  
  protected void startCamera2()
  {
    if (this.b != null) {
      this.b.c();
    }
  }
  
  protected void stopCamera2()
  {
    if (this.b != null) {
      this.b.d();
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.Camera2Wrapper
 * JD-Core Version:    0.7.0.1
 */