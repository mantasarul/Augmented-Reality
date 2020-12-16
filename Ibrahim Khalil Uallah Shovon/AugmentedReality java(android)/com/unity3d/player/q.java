package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class q
{
  private UnityPlayer a = null;
  private Context b = null;
  private a c;
  private final Semaphore d = new Semaphore(0);
  private final Lock e = new ReentrantLock();
  private p f = null;
  private int g = 2;
  private boolean h = false;
  private boolean i = false;
  
  q(UnityPlayer paramUnityPlayer)
  {
    this.a = paramUnityPlayer;
  }
  
  private void d()
  {
    if (this.f != null)
    {
      this.a.removeViewFromPlayer(this.f);
      this.i = false;
      this.f.destroyPlayer();
      this.f = null;
      if (this.c != null) {
        this.c.a();
      }
    }
  }
  
  public final void a()
  {
    this.e.lock();
    if (this.f != null)
    {
      if (this.g != 0) {
        break label40;
      }
      this.f.CancelOnPrepare();
    }
    for (;;)
    {
      this.e.unlock();
      return;
      label40:
      if (this.i)
      {
        this.h = this.f.a();
        if (!this.h) {
          this.f.pause();
        }
      }
    }
  }
  
  public final boolean a(Context paramContext, final String paramString, final int paramInt1, final int paramInt2, final int paramInt3, final boolean paramBoolean, final long paramLong1, long paramLong2, a parama)
  {
    this.e.lock();
    this.c = parama;
    this.b = paramContext;
    this.d.drainPermits();
    this.g = 2;
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        if (q.a(q.this) != null)
        {
          g.Log(5, "Video already playing");
          q.a(q.this, 2);
          q.b(q.this).release();
        }
        do
        {
          return;
          q.a(q.this, new p(q.c(q.this), paramString, paramInt1, paramInt2, paramInt3, paramBoolean, paramLong1, this.g, new p.a()
          {
            public final void a(int paramAnonymous2Int)
            {
              q.d(q.this).lock();
              q.a(q.this, paramAnonymous2Int);
              if ((paramAnonymous2Int == 3) && (q.e(q.this))) {
                q.this.runOnUiThread(new Runnable()
                {
                  public final void run()
                  {
                    q.f(q.this);
                    q.g(q.this).resume();
                  }
                });
              }
              if (paramAnonymous2Int != 0) {
                q.b(q.this).release();
              }
              q.d(q.this).unlock();
            }
          }));
        } while (q.a(q.this) == null);
        q.g(q.this).addView(q.a(q.this));
      }
    });
    try
    {
      this.e.unlock();
      this.d.acquire();
      this.e.lock();
      int j = this.g;
      if (j == 2) {
        break label146;
      }
      bool = true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        q.g(q.this).pause();
      }
    });
    if ((bool) && (this.g != 3)) {
      runOnUiThread(new Runnable()
      {
        public final void run()
        {
          if (q.a(q.this) != null)
          {
            q.g(q.this).addViewToPlayer(q.a(q.this), true);
            q.h(q.this);
            q.a(q.this).requestFocus();
          }
        }
      });
    }
    for (;;)
    {
      this.e.unlock();
      return bool;
      label146:
      bool = false;
      break;
      runOnUiThread(new Runnable()
      {
        public final void run()
        {
          q.f(q.this);
          q.g(q.this).resume();
        }
      });
    }
  }
  
  public final void b()
  {
    this.e.lock();
    if ((this.f != null) && (this.i) && (!this.h)) {
      this.f.start();
    }
    this.e.unlock();
  }
  
  public final void c()
  {
    this.e.lock();
    if (this.f != null) {
      this.f.updateVideoLayout();
    }
    this.e.unlock();
  }
  
  protected final void runOnUiThread(Runnable paramRunnable)
  {
    if ((this.b instanceof Activity))
    {
      ((Activity)this.b).runOnUiThread(paramRunnable);
      return;
    }
    g.Log(5, "Not running from an Activity; Ignoring execution request...");
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.q
 * JD-Core Version:    0.7.0.1
 */