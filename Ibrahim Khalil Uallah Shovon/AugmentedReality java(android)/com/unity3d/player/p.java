package com.unity3d.player;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import java.io.FileInputStream;
import java.io.IOException;

public final class p
  extends FrameLayout
  implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback, MediaController.MediaPlayerControl
{
  private static boolean a = false;
  private final Context b;
  private final SurfaceView c;
  private final SurfaceHolder d;
  private final String e;
  private final int f;
  private final int g;
  private final boolean h;
  private final long i;
  private final long j;
  private final FrameLayout k;
  private final Display l;
  private int m;
  private int n;
  private int o;
  private int p;
  private MediaPlayer q;
  private MediaController r;
  private boolean s = false;
  private boolean t = false;
  private int u = 0;
  private boolean v = false;
  private boolean w = false;
  private a x;
  private b y;
  private volatile int z = 0;
  
  protected p(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, long paramLong1, long paramLong2, a parama)
  {
    super(paramContext);
    this.x = parama;
    this.b = paramContext;
    this.k = this;
    this.c = new SurfaceView(paramContext);
    this.d = this.c.getHolder();
    this.d.addCallback(this);
    this.k.setBackgroundColor(paramInt1);
    this.k.addView(this.c);
    this.l = ((WindowManager)this.b.getSystemService("window")).getDefaultDisplay();
    this.e = paramString;
    this.f = paramInt2;
    this.g = paramInt3;
    this.h = paramBoolean;
    this.i = paramLong1;
    this.j = paramLong2;
    if (a) {
      b("fileName: " + this.e);
    }
    if (a) {
      b("backgroundColor: " + paramInt1);
    }
    if (a) {
      b("controlMode: " + this.f);
    }
    if (a) {
      b("scalingMode: " + this.g);
    }
    if (a) {
      b("isURL: " + this.h);
    }
    if (a) {
      b("videoOffset: " + this.i);
    }
    if (a) {
      b("videoLength: " + this.j);
    }
    setFocusable(true);
    setFocusableInTouchMode(true);
  }
  
  private void a(int paramInt)
  {
    this.z = paramInt;
    if (this.x != null) {
      this.x.a(this.z);
    }
  }
  
  private static void b(String paramString)
  {
    Log.i("Video", "VideoPlayer: " + paramString);
  }
  
  private void c()
  {
    if (this.q != null)
    {
      this.q.setDisplay(this.d);
      if (!this.v)
      {
        if (a) {
          b("Resuming playback");
        }
        this.q.start();
      }
      return;
    }
    a(0);
    doCleanUp();
    for (;;)
    {
      try
      {
        this.q = new MediaPlayer();
        if (this.h)
        {
          this.q.setDataSource(this.b, Uri.parse(this.e));
          this.q.setDisplay(this.d);
          this.q.setScreenOnWhilePlaying(true);
          this.q.setOnBufferingUpdateListener(this);
          this.q.setOnCompletionListener(this);
          this.q.setOnPreparedListener(this);
          this.q.setOnVideoSizeChangedListener(this);
          this.q.setAudioStreamType(3);
          this.q.prepareAsync();
          this.y = new b(this);
          new Thread(this.y).start();
          return;
        }
      }
      catch (Exception localException)
      {
        if (a) {
          b("error: " + localException.getMessage() + localException);
        }
        a(2);
        return;
      }
      if (this.j != 0L)
      {
        FileInputStream localFileInputStream1 = new FileInputStream(this.e);
        this.q.setDataSource(localFileInputStream1.getFD(), this.i, this.j);
        localFileInputStream1.close();
      }
      else
      {
        AssetManager localAssetManager = getResources().getAssets();
        try
        {
          AssetFileDescriptor localAssetFileDescriptor = localAssetManager.openFd(this.e);
          this.q.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
          localAssetFileDescriptor.close();
        }
        catch (IOException localIOException)
        {
          FileInputStream localFileInputStream2 = new FileInputStream(this.e);
          this.q.setDataSource(localFileInputStream2.getFD());
          localFileInputStream2.close();
        }
      }
    }
  }
  
  private void d()
  {
    if (isPlaying()) {}
    do
    {
      return;
      a(1);
      if (a) {
        b("startVideoPlayback");
      }
      updateVideoLayout();
    } while (this.v);
    start();
  }
  
  public final void CancelOnPrepare()
  {
    a(2);
  }
  
  final boolean a()
  {
    return this.v;
  }
  
  public final boolean canPause()
  {
    return true;
  }
  
  public final boolean canSeekBackward()
  {
    return true;
  }
  
  public final boolean canSeekForward()
  {
    return true;
  }
  
  protected final void destroyPlayer()
  {
    if (a) {
      b("destroyPlayer");
    }
    if (!this.v) {
      pause();
    }
    doCleanUp();
  }
  
  protected final void doCleanUp()
  {
    if (this.y != null)
    {
      this.y.a();
      this.y = null;
    }
    if (this.q != null)
    {
      this.q.release();
      this.q = null;
    }
    this.o = 0;
    this.p = 0;
    this.t = false;
    this.s = false;
  }
  
  public final int getBufferPercentage()
  {
    if (this.h) {
      return this.u;
    }
    return 100;
  }
  
  public final int getCurrentPosition()
  {
    if (this.q == null) {
      return 0;
    }
    return this.q.getCurrentPosition();
  }
  
  public final int getDuration()
  {
    if (this.q == null) {
      return 0;
    }
    return this.q.getDuration();
  }
  
  public final boolean isPlaying()
  {
    int i1;
    if ((this.t) && (this.s))
    {
      i1 = 1;
      if (this.q != null) {
        break label36;
      }
      if (i1 != 0) {
        break label34;
      }
    }
    label34:
    label36:
    while ((this.q.isPlaying()) || (i1 == 0))
    {
      return true;
      i1 = 0;
      break;
      return false;
    }
    return false;
  }
  
  public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    if (a) {
      b("onBufferingUpdate percent:" + paramInt);
    }
    this.u = paramInt;
  }
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (a) {
      b("onCompletion called");
    }
    destroyPlayer();
    a(3);
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || ((this.f == 2) && (paramInt != 0) && (!paramKeyEvent.isSystem())))
    {
      destroyPlayer();
      a(3);
      return true;
    }
    if (this.r != null) {
      return this.r.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (a) {
      b("onPrepared called");
    }
    if (this.y != null)
    {
      this.y.a();
      this.y = null;
    }
    if ((this.f == 0) || (this.f == 1))
    {
      this.r = new MediaController(this.b);
      this.r.setMediaPlayer(this);
      this.r.setAnchorView(this);
      this.r.setEnabled(true);
      this.r.show();
    }
    this.t = true;
    if ((this.t) && (this.s)) {
      d();
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    if ((this.f == 2) && (i1 == 0))
    {
      destroyPlayer();
      a(3);
      return true;
    }
    if (this.r != null) {
      return this.r.onTouchEvent(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (a) {
      b("onVideoSizeChanged called " + paramInt1 + "x" + paramInt2);
    }
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      if (a) {
        b("invalid video width(" + paramInt1 + ") or height(" + paramInt2 + ")");
      }
    }
    do
    {
      return;
      this.s = true;
      this.o = paramInt1;
      this.p = paramInt2;
    } while ((!this.t) || (!this.s));
    d();
  }
  
  public final void pause()
  {
    if (this.q == null) {
      return;
    }
    if (this.w) {
      this.q.pause();
    }
    this.v = true;
  }
  
  public final void seekTo(int paramInt)
  {
    if (this.q == null) {
      return;
    }
    this.q.seekTo(paramInt);
  }
  
  public final void start()
  {
    if (a) {
      b("Start");
    }
    if (this.q == null) {
      return;
    }
    if (this.w) {
      this.q.start();
    }
    this.v = false;
  }
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a) {
      b("surfaceChanged called " + paramInt1 + " " + paramInt2 + "x" + paramInt3);
    }
    if ((this.m != paramInt2) || (this.n != paramInt3))
    {
      this.m = paramInt2;
      this.n = paramInt3;
      if (this.w) {
        updateVideoLayout();
      }
    }
  }
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (a) {
      b("surfaceCreated called");
    }
    this.w = true;
    c();
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (a) {
      b("surfaceDestroyed called");
    }
    this.w = false;
  }
  
  protected final void updateVideoLayout()
  {
    if (a) {
      b("updateVideoLayout");
    }
    if (this.q == null) {}
    for (;;)
    {
      return;
      if ((this.m == 0) || (this.n == 0))
      {
        WindowManager localWindowManager = (WindowManager)this.b.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        this.m = localDisplayMetrics.widthPixels;
        this.n = localDisplayMetrics.heightPixels;
      }
      int i1 = this.m;
      int i2 = this.n;
      float f1;
      float f2;
      if (this.s)
      {
        f1 = this.o / this.p;
        f2 = this.m / this.n;
        if (this.g == 1) {
          if (f2 <= f1) {
            i2 = (int)(this.m / f1);
          }
        }
      }
      while ((this.m != i1) || (this.n != i2))
      {
        if (a) {
          b("frameWidth = " + i1 + "; frameHeight = " + i2);
        }
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i1, i2, 17);
        this.k.updateViewLayout(this.c, localLayoutParams);
        return;
        i1 = (int)(f1 * this.n);
        continue;
        if (this.g == 2)
        {
          if (f2 >= f1) {
            i2 = (int)(this.m / f1);
          } else {
            i1 = (int)(f1 * this.n);
          }
        }
        else if (this.g == 0)
        {
          i1 = this.o;
          i2 = this.p;
          continue;
          if (a) {
            b("updateVideoLayout: Video size is not known yet");
          }
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
  
  public final class b
    implements Runnable
  {
    private p b;
    private boolean c;
    
    public b(p paramp)
    {
      this.b = paramp;
      this.c = false;
    }
    
    public final void a()
    {
      this.c = true;
    }
    
    public final void run()
    {
      try
      {
        Thread.sleep(5000L);
        if (!this.c)
        {
          if (p.b()) {
            p.a("Stopping the video player due to timeout.");
          }
          this.b.CancelOnPrepare();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          Thread.currentThread().interrupt();
        }
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.p
 * JD-Core Version:    0.7.0.1
 */