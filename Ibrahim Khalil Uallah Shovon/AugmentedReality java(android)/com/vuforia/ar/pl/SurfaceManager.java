package com.vuforia.ar.pl;

import android.app.Activity;
import android.opengl.GLSurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class SurfaceManager
{
  private static final String MODULENAME = "SurfaceManager";
  Lock addSurfaceLock = new ReentrantLock();
  View cameraSurfaceParentView = null;
  Camera1_Preview.CameraCacheInfo cciForSurface;
  GLSurfaceView glSurfaceView = null;
  int glSurfaceViewChildPosition = 0;
  boolean renderWhenDirtyEnabled = false;
  Lock viewLock = new ReentrantLock();
  
  private boolean applyRenderWhenDirty()
  {
    if (this.glSurfaceView != null)
    {
      GLSurfaceView localGLSurfaceView = this.glSurfaceView;
      boolean bool = this.renderWhenDirtyEnabled;
      int i = 0;
      if (bool) {}
      for (;;)
      {
        localGLSurfaceView.setRenderMode(i);
        return true;
        i = 1;
      }
    }
    return false;
  }
  
  private GLSurfaceView searchForGLSurfaceView(View paramView)
  {
    this.glSurfaceViewChildPosition = 0;
    Object localObject1;
    for (;;)
    {
      try
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int i = localViewGroup.getChildCount();
        int j = 0;
        localObject1 = null;
        if (j >= i) {
          break;
        }
        View localView = localViewGroup.getChildAt(j);
        if ((localView instanceof GLSurfaceView))
        {
          GLSurfaceView localGLSurfaceView2 = (GLSurfaceView)localView;
          this.glSurfaceViewChildPosition = j;
          return localGLSurfaceView2;
        }
        if ((localView instanceof ViewGroup))
        {
          GLSurfaceView localGLSurfaceView1 = searchForGLSurfaceView(localView);
          localObject2 = localGLSurfaceView1;
          if (localObject2 != null) {
            break label110;
          }
          j++;
          localObject1 = localObject2;
        }
        else
        {
          localObject2 = localObject1;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
    }
    Object localObject2 = localObject1;
    label110:
    return localObject2;
  }
  
  private void setupCameraSurface(Camera1_Preview.CameraCacheInfo paramCameraCacheInfo)
  {
    if (paramCameraCacheInfo.surface == null)
    {
      Activity localActivity = SystemTools.getActivityFromNative();
      if (localActivity != null) {
        paramCameraCacheInfo.surface = new CameraSurface(localActivity);
      }
    }
    for (;;)
    {
      paramCameraCacheInfo.surface.setCamera(paramCameraCacheInfo.camera);
      return;
      if ((paramCameraCacheInfo.surface.getParent() != null) && (ViewGroup.class.isInstance(paramCameraCacheInfo.surface.getParent()))) {
        ((ViewGroup)paramCameraCacheInfo.surface.getParent()).removeView(paramCameraCacheInfo.surface);
      }
    }
  }
  
  /* Error */
  public boolean addCameraSurface(Camera1_Preview.CameraCacheInfo paramCameraCacheInfo)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: invokestatic 82	com/vuforia/ar/pl/SystemTools:getActivityFromNative	()Landroid/app/Activity;
    //   5: astore_3
    //   6: aload_3
    //   7: ifnonnull +5 -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: aload_0
    //   13: aload_1
    //   14: putfield 113	com/vuforia/ar/pl/SurfaceManager:cciForSurface	Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;
    //   17: aload_0
    //   18: getfield 38	com/vuforia/ar/pl/SurfaceManager:viewLock	Ljava/util/concurrent/locks/Lock;
    //   21: invokeinterface 118 1 0
    //   26: aload_3
    //   27: new 120	com/vuforia/ar/pl/SurfaceManager$1
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 123	com/vuforia/ar/pl/SurfaceManager$1:<init>	(Lcom/vuforia/ar/pl/SurfaceManager;)V
    //   35: invokevirtual 129	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   38: aload_0
    //   39: getfield 38	com/vuforia/ar/pl/SurfaceManager:viewLock	Ljava/util/concurrent/locks/Lock;
    //   42: invokeinterface 132 1 0
    //   47: iconst_0
    //   48: istore 6
    //   50: iload 6
    //   52: ifne +36 -> 88
    //   55: iload_2
    //   56: ireturn
    //   57: astore 5
    //   59: aload_0
    //   60: getfield 38	com/vuforia/ar/pl/SurfaceManager:viewLock	Ljava/util/concurrent/locks/Lock;
    //   63: invokeinterface 132 1 0
    //   68: iload_2
    //   69: istore 6
    //   71: goto -21 -> 50
    //   74: astore 4
    //   76: aload_0
    //   77: getfield 38	com/vuforia/ar/pl/SurfaceManager:viewLock	Ljava/util/concurrent/locks/Lock;
    //   80: invokeinterface 132 1 0
    //   85: aload 4
    //   87: athrow
    //   88: iconst_0
    //   89: istore_2
    //   90: goto -35 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	SurfaceManager
    //   0	93	1	paramCameraCacheInfo	Camera1_Preview.CameraCacheInfo
    //   1	89	2	bool	boolean
    //   5	22	3	localActivity	Activity
    //   74	12	4	localObject	Object
    //   57	1	5	localException	Exception
    //   48	22	6	i	int
    // Exception table:
    //   from	to	target	type
    //   26	38	57	java/lang/Exception
    //   26	38	74	finally
  }
  
  public void requestRender()
  {
    if (this.glSurfaceView != null) {
      this.glSurfaceView.requestRender();
    }
  }
  
  public boolean retrieveGLSurfaceView()
  {
    for (;;)
    {
      try
      {
        Activity localActivity = SystemTools.getActivityFromNative();
        if (localActivity == null) {
          return false;
        }
        View localView = localActivity.getWindow().getDecorView();
        this.glSurfaceView = searchForGLSurfaceView(localView);
        if (this.glSurfaceView == null)
        {
          this.cameraSurfaceParentView = localView;
          if (this.glSurfaceView != null)
          {
            bool = true;
            return bool;
          }
        }
        else
        {
          this.cameraSurfaceParentView = ((View)this.glSurfaceView.getParent());
          continue;
        }
        boolean bool = false;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }
  
  public boolean setEnableRenderWhenDirty(boolean paramBoolean)
  {
    this.renderWhenDirtyEnabled = paramBoolean;
    return applyRenderWhenDirty();
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.SurfaceManager
 * JD-Core Version:    0.7.0.1
 */