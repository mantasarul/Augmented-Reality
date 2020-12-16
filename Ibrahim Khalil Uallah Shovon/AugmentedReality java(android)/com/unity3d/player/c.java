package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

class c
{
  protected o a = null;
  protected f b = null;
  protected Context c = null;
  protected String d = null;
  protected String e = "";
  
  c(String paramString, f paramf)
  {
    this.e = paramString;
    this.b = paramf;
  }
  
  protected void reportError(String paramString)
  {
    if (this.b != null)
    {
      this.b.reportError(this.e + " Error [" + this.d + "]", paramString);
      return;
    }
    g.Log(6, this.e + " Error [" + this.d + "]: " + paramString);
  }
  
  protected void runOnUiThread(Runnable paramRunnable)
  {
    if ((this.c instanceof Activity))
    {
      ((Activity)this.c).runOnUiThread(paramRunnable);
      return;
    }
    g.Log(5, "Not running " + this.e + " from an Activity; Ignoring execution request...");
  }
  
  protected boolean runOnUiThreadWithSync(final Runnable paramRunnable)
  {
    boolean bool = false;
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      paramRunnable.run();
      return true;
    }
    final Semaphore localSemaphore = new Semaphore(0);
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          paramRunnable.run();
          return;
        }
        catch (Exception localException)
        {
          c.this.reportError("Exception unloading Google VR on UI Thread. " + localException.getLocalizedMessage());
          return;
        }
        finally
        {
          localSemaphore.release();
        }
      }
    });
    try
    {
      if (!localSemaphore.tryAcquire(4L, TimeUnit.SECONDS))
      {
        reportError("Timeout waiting for vr state change!");
        return bool;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        reportError("Interrupted while trying to acquire sync lock. " + localInterruptedException.getLocalizedMessage());
        bool = false;
        continue;
        bool = true;
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.c
 * JD-Core Version:    0.7.0.1
 */