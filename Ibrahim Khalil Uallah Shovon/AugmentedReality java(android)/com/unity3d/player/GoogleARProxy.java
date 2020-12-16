package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.Constructor;

class GoogleARProxy
  extends c
{
  private boolean f = false;
  
  GoogleARProxy(f paramf)
  {
    super("Google AR", paramf);
  }
  
  public static boolean a()
  {
    try
    {
      Class localClass = UnityPlayer.class.getClassLoader().loadClass("com.unity3d.unitygar.GoogleAR");
      o localo = new o(localClass, localClass.getConstructor(new Class[0]).newInstance(new Object[0]));
      localo.a("getClassVersion", new Class[0]);
      if (((Number)localo.a("getClassVersion", new Object[0])).intValue() > 0)
      {
        Log.d("Unity", "Loading ARCore V1+ path.");
        return false;
      }
      Log.d("Unity", "Loading ARCore Preview path (Version <= 1).");
      return true;
    }
    catch (Exception localException)
    {
      Log.d("Unity", "Loading ARCore Preview path.");
    }
    return true;
  }
  
  private boolean a(ClassLoader paramClassLoader)
  {
    if (this.f) {
      return true;
    }
    try
    {
      Class localClass = paramClassLoader.loadClass("com.unity3d.unitygar.GoogleAR");
      o localo = new o(localClass, localClass.getConstructor(new Class[0]).newInstance(new Object[0]));
      localo.a("initialize", new Class[] { Activity.class });
      localo.a("create", new Class[0]);
      localo.a("pause", new Class[0]);
      localo.a("resume", new Class[0]);
      this.a = localo;
      this.f = true;
      return true;
    }
    catch (Exception localException)
    {
      this.b.reportError("Google AR Error", localException.toString() + localException.getLocalizedMessage());
    }
    return false;
  }
  
  private final native void tangoOnCreate(Activity paramActivity);
  
  private final native void tangoOnServiceConnected(IBinder paramIBinder);
  
  private final native void tangoOnStop();
  
  final void a(final Activity paramActivity, Context paramContext)
  {
    if (!a(UnityPlayer.class.getClassLoader())) {
      return;
    }
    this.c = paramContext;
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          if (GoogleARProxy.this.a != null)
          {
            o localo = GoogleARProxy.this.a;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = paramActivity;
            localo.a("initialize", arrayOfObject);
          }
          return;
        }
        catch (Exception localException)
        {
          GoogleARProxy.this.reportError("Exception creating " + GoogleARProxy.this.e + " VR on UI Thread. " + localException.getLocalizedMessage());
        }
      }
    });
  }
  
  final void b()
  {
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          if (GoogleARProxy.this.a != null) {
            GoogleARProxy.this.a.a("create", new Object[0]);
          }
          return;
        }
        catch (Exception localException)
        {
          GoogleARProxy.this.reportError("Exception creating " + GoogleARProxy.this.e + " VR on UI Thread. " + localException.getLocalizedMessage());
        }
      }
    });
  }
  
  final void c()
  {
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          if (GoogleARProxy.this.a != null) {
            GoogleARProxy.this.a.a("pause", new Object[0]);
          }
          return;
        }
        catch (Exception localException)
        {
          GoogleARProxy.this.reportError("Exception pausing " + GoogleARProxy.this.e + " VR on UI Thread. " + localException.getLocalizedMessage());
        }
      }
    });
  }
  
  final void d()
  {
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          if (GoogleARProxy.this.a != null) {
            GoogleARProxy.this.a.a("resume", new Object[0]);
          }
          return;
        }
        catch (Exception localException)
        {
          GoogleARProxy.this.reportError("Exception resuming " + GoogleARProxy.this.e + " VR on UI Thread. " + localException.getLocalizedMessage());
        }
      }
    });
  }
  
  public final boolean e()
  {
    return this.f;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.GoogleARProxy
 * JD-Core Version:    0.7.0.1
 */