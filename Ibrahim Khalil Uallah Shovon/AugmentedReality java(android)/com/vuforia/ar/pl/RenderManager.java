package com.vuforia.ar.pl;

import android.app.Activity;
import android.view.View;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class RenderManager
{
  private static final int AR_RENDERING_MODE_CONTINUOUS = 2;
  private static final int AR_RENDERING_MODE_DISABLED = 1;
  private static final int AR_RENDERING_MODE_UNKNOWN = 0;
  private static final int AR_RENDERING_MODE_WHENDIRTY = 3;
  private static final String MODULENAME = "RenderManager";
  private static int viewId = 0;
  long delayMS = 0L;
  ScheduledFuture<?> fixedFrameRateRunnerTask;
  long maxMS = 0L;
  long minMS = 0L;
  int renderMode;
  AtomicBoolean renderRequestServiced;
  ScheduledFuture<?> renderRequestWatcherTask;
  AtomicBoolean renderRequested;
  SurfaceManager surfaceManager;
  boolean synchronousMode;
  ScheduledThreadPoolExecutor timer;
  
  public RenderManager(SurfaceManager paramSurfaceManager)
  {
    this.surfaceManager = paramSurfaceManager;
    this.renderMode = 2;
    this.timer = new ScheduledThreadPoolExecutor(1);
    this.synchronousMode = false;
    this.renderRequestServiced = new AtomicBoolean(false);
    this.renderRequested = new AtomicBoolean(false);
  }
  
  public View addOverlay(byte[] paramArrayOfByte, int paramInt1, int paramInt2, float[] paramArrayOfFloat, int[] paramArrayOfInt)
  {
    final Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null)
    {
      DebugLog.LOGE("RenderManager", "drawOverlay could not get access to an activity");
      return null;
    }
    final DrawOverlayView localDrawOverlayView = new DrawOverlayView(localActivity, paramArrayOfByte, paramInt1, paramInt2, paramArrayOfFloat, paramArrayOfInt);
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        localDrawOverlayView.addOverlay(localActivity);
      }
    });
    return localDrawOverlayView;
  }
  
  public boolean canSetRenderMode()
  {
    boolean bool = this.surfaceManager.retrieveGLSurfaceView();
    if (!bool) {
      DebugLog.LOGD("RenderManager", "Could not retrieve a valid GLSurfaceView in view hierarchy, therefore cannot set any render mode");
    }
    return bool;
  }
  
  public int getRenderMode()
  {
    return this.renderMode;
  }
  
  public boolean removeOverlay(final View paramView)
  {
    final Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null) {}
    while (paramView == null) {
      return false;
    }
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        new DrawOverlayView(localActivity).removeOverlay(localActivity, paramView);
      }
    });
    return true;
  }
  
  public boolean requestRender()
  {
    this.renderRequested.set(true);
    return true;
  }
  
  public boolean setRenderFpsLimits(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    long l1 = 1L;
    this.synchronousMode = paramBoolean;
    if ((paramInt1 == 0) || (paramInt2 == 0))
    {
      SystemTools.setSystemErrorCode(2);
      return false;
    }
    long l2;
    if (paramInt1 > 1000)
    {
      l2 = l1;
      this.minMS = l2;
      if (paramInt2 <= 1000) {
        break label106;
      }
      label46:
      this.maxMS = l1;
      if (this.renderMode == 3) {
        if (!this.synchronousMode) {
          break label117;
        }
      }
    }
    label106:
    label117:
    for (long l3 = this.minMS;; l3 = this.maxMS)
    {
      if (l3 != this.delayMS)
      {
        this.delayMS = l3;
        startTimer();
      }
      return true;
      l2 = 1000L / paramInt1;
      break;
      l1 = 1000L / paramInt2;
      break label46;
    }
  }
  
  public boolean setRenderMode(int paramInt)
  {
    if (this.surfaceManager == null)
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    this.surfaceManager.retrieveGLSurfaceView();
    boolean bool;
    switch (paramInt)
    {
    default: 
      SystemTools.setSystemErrorCode(2);
      return false;
    case 2: 
      bool = this.surfaceManager.setEnableRenderWhenDirty(false);
      if (bool) {
        shutdownTimer();
      }
      break;
    }
    label165:
    while (!bool)
    {
      SystemTools.setSystemErrorCode(6);
      return bool;
      bool = this.surfaceManager.setEnableRenderWhenDirty(true);
      if (bool) {
        if (paramInt == 1)
        {
          shutdownTimer();
        }
        else if ((paramInt != this.renderMode) || (this.timer.isShutdown()))
        {
          if (this.synchronousMode) {}
          for (long l = this.minMS;; l = this.maxMS)
          {
            if (l == 0L) {
              break label165;
            }
            this.delayMS = l;
            startTimer();
            break;
          }
        }
      }
    }
    this.renderMode = paramInt;
    return bool;
  }
  
  void shutdownTimer()
  {
    if (!this.timer.isShutdown()) {
      this.timer.shutdown();
    }
  }
  
  void startTimer()
  {
    if (this.timer.isShutdown()) {
      this.timer = new ScheduledThreadPoolExecutor(1);
    }
    if ((this.fixedFrameRateRunnerTask != null) && (!this.fixedFrameRateRunnerTask.isCancelled())) {
      this.fixedFrameRateRunnerTask.cancel(true);
    }
    if ((this.renderRequestWatcherTask != null) && (!this.renderRequestWatcherTask.isCancelled())) {
      this.renderRequestWatcherTask.cancel(true);
    }
    this.fixedFrameRateRunnerTask = null;
    this.renderRequestWatcherTask = null;
    if (this.delayMS < 4L) {}
    for (long l = 1L;; l = this.delayMS / 4L)
    {
      this.renderRequestWatcherTask = this.timer.scheduleWithFixedDelay(new RenderRequestWatcher(null), 0L, l, TimeUnit.MILLISECONDS);
      return;
    }
  }
  
  private final class FixedFrameRateRunner
    implements Runnable
  {
    private FixedFrameRateRunner() {}
    
    public void run()
    {
      if ((!RenderManager.this.renderRequestServiced.getAndSet(false)) && (RenderManager.this.surfaceManager != null))
      {
        RenderManager.this.surfaceManager.requestRender();
        if ((!RenderManager.this.synchronousMode) && (!RenderManager.this.renderRequestWatcherTask.isCancelled())) {
          RenderManager.this.renderRequestWatcherTask.cancel(false);
        }
      }
    }
  }
  
  private final class RenderRequestWatcher
    implements Runnable
  {
    private RenderRequestWatcher() {}
    
    public void run()
    {
      if ((RenderManager.this.renderRequested.compareAndSet(true, false)) && (RenderManager.this.surfaceManager != null))
      {
        RenderManager.this.surfaceManager.requestRender();
        RenderManager.this.renderRequestServiced.set(true);
        if (RenderManager.this.fixedFrameRateRunnerTask == null) {
          RenderManager.this.fixedFrameRateRunnerTask = RenderManager.this.timer.scheduleAtFixedRate(new RenderManager.FixedFrameRateRunner(RenderManager.this, null), 0L, RenderManager.this.delayMS, TimeUnit.MILLISECONDS);
        }
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.RenderManager
 * JD-Core Version:    0.7.0.1
 */