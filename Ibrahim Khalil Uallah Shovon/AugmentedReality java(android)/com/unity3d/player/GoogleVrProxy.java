package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicLong;

class GoogleVrProxy
  extends c
  implements GoogleVrVideo
{
  private boolean f = false;
  private boolean g = false;
  private Runnable h = null;
  private Vector i = new Vector();
  private SurfaceView j = null;
  private a k = new a();
  private Thread l = null;
  private Handler m = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        super.handleMessage(paramAnonymousMessage);
      }
      for (;;)
      {
        return;
        switch (paramAnonymousMessage.arg1)
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        case 2147483646: 
          Surface localSurface = (Surface)paramAnonymousMessage.obj;
          Iterator localIterator2 = GoogleVrProxy.a(GoogleVrProxy.this).iterator();
          while (localIterator2.hasNext()) {
            ((GoogleVrVideo.GoogleVrVideoCallbacks)localIterator2.next()).onSurfaceAvailable(localSurface);
          }
        }
        Iterator localIterator1 = GoogleVrProxy.a(GoogleVrProxy.this).iterator();
        while (localIterator1.hasNext()) {
          ((GoogleVrVideo.GoogleVrVideoCallbacks)localIterator1.next()).onFrameAvailable();
        }
      }
    }
  };
  
  public GoogleVrProxy(f paramf)
  {
    super("Google VR", paramf);
    initVrJni();
  }
  
  private void a(boolean paramBoolean)
  {
    this.k.d = paramBoolean;
  }
  
  private static boolean a(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  private boolean a(ClassLoader paramClassLoader)
  {
    try
    {
      Class localClass = paramClassLoader.loadClass("com.unity3d.unitygvr.GoogleVR");
      o localo = new o(localClass, localClass.getConstructor(new Class[0]).newInstance(new Object[0]));
      Class[] arrayOfClass1 = new Class[5];
      arrayOfClass1[0] = Activity.class;
      arrayOfClass1[1] = Context.class;
      arrayOfClass1[2] = SurfaceView.class;
      arrayOfClass1[3] = Boolean.TYPE;
      arrayOfClass1[4] = Handler.class;
      localo.a("initialize", arrayOfClass1);
      localo.a("deinitialize", new Class[0]);
      Class[] arrayOfClass2 = new Class[6];
      arrayOfClass2[0] = Boolean.TYPE;
      arrayOfClass2[1] = Boolean.TYPE;
      arrayOfClass2[2] = Boolean.TYPE;
      arrayOfClass2[3] = Boolean.TYPE;
      arrayOfClass2[4] = Boolean.TYPE;
      arrayOfClass2[5] = Runnable.class;
      localo.a("load", arrayOfClass2);
      Class[] arrayOfClass3 = new Class[1];
      arrayOfClass3[0] = Boolean.TYPE;
      localo.a("enable", arrayOfClass3);
      localo.a("unload", new Class[0]);
      localo.a("pause", new Class[0]);
      localo.a("resume", new Class[0]);
      localo.a("getGvrLayout", new Class[0]);
      localo.a("getVideoSurfaceId", new Class[0]);
      localo.a("getVideoSurface", new Class[0]);
      this.a = localo;
      return true;
    }
    catch (Exception localException)
    {
      reportError("Exception initializing GoogleVR from Unity library. " + localException.getLocalizedMessage());
    }
    return false;
  }
  
  private boolean d()
  {
    return this.k.d;
  }
  
  private void e()
  {
    Activity localActivity = (Activity)this.c;
    if ((this.g) && (!this.k.f) && (localActivity != null))
    {
      this.k.f = true;
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.HOME");
      localIntent.setFlags(268435456);
      localActivity.startActivity(localIntent);
    }
  }
  
  private final native void initVrJni();
  
  private final native boolean isQuiting();
  
  private final native void setVrVideoTransform(float[][] paramArrayOfFloat);
  
  public final void a(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("android.intent.extra.VR_LAUNCH", false))) {
      this.g = true;
    }
  }
  
  public final boolean a()
  {
    return this.k.a;
  }
  
  public final boolean a(Activity paramActivity, Context paramContext, SurfaceView paramSurfaceView, Runnable paramRunnable)
  {
    if ((paramActivity == null) || (paramContext == null) || (paramSurfaceView == null) || (paramRunnable == null))
    {
      reportError("Invalid parameters passed to Google VR initiialization.");
      return false;
    }
    this.k.b();
    this.c = paramContext;
    this.h = paramRunnable;
    if (!a(19))
    {
      reportError("Google VR requires a device that supports an api version of 19 (KitKat) or better.");
      return false;
    }
    if ((this.g) && (!a(24)))
    {
      reportError("Daydream requires a device that supports an api version of 24 (Nougat) or better.");
      return false;
    }
    if (!a(UnityPlayer.class.getClassLoader())) {
      return false;
    }
    try
    {
      o localo = this.a;
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = paramActivity;
      arrayOfObject[1] = paramContext;
      arrayOfObject[2] = paramSurfaceView;
      arrayOfObject[3] = Boolean.valueOf(this.g);
      arrayOfObject[4] = this.m;
      boolean bool2 = ((Boolean)localo.a("initialize", arrayOfObject)).booleanValue();
      bool1 = bool2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        reportError("Exception while trying to intialize Unity Google VR Library. " + localException.getLocalizedMessage());
        boolean bool1 = false;
      }
      this.j = paramSurfaceView;
      this.k.a = true;
      this.d = "";
    }
    if (!bool1)
    {
      reportError("Unable to initialize GoogleVR library.");
      return false;
    }
    return true;
  }
  
  public final void b()
  {
    resumeGvrLayout();
  }
  
  public final void c()
  {
    if (this.j != null) {
      this.j.getHolder().setSizeFromLayout();
    }
  }
  
  public void deregisterGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks paramGoogleVrVideoCallbacks)
  {
    if (this.i.contains(paramGoogleVrVideoCallbacks))
    {
      paramGoogleVrVideoCallbacks.onSurfaceUnavailable();
      this.i.remove(paramGoogleVrVideoCallbacks);
    }
  }
  
  protected Object getVideoSurface()
  {
    if ((!d()) || (this.k.e)) {
      return null;
    }
    try
    {
      Object localObject = this.a.a("getVideoSurface", new Object[0]);
      return localObject;
    }
    catch (Exception localException)
    {
      reportError("Exception caught while Getting GoogleVR Video Surface. " + localException.getLocalizedMessage());
    }
    return null;
  }
  
  protected int getVideoSurfaceId()
  {
    if ((!d()) || (this.k.e)) {
      return -1;
    }
    try
    {
      int n = ((Integer)this.a.a("getVideoSurfaceId", new Object[0])).intValue();
      return n;
    }
    catch (Exception localException)
    {
      reportError("Exception caught while getting Video Surface ID from GoogleVR. " + localException.getLocalizedMessage());
    }
    return -1;
  }
  
  protected long loadGoogleVr(final boolean paramBoolean1, final boolean paramBoolean2, final boolean paramBoolean3, final boolean paramBoolean4, final boolean paramBoolean5)
  {
    if (!this.k.a) {
      return 0L;
    }
    final AtomicLong localAtomicLong = new AtomicLong(0L);
    if ((paramBoolean1) || (paramBoolean2)) {}
    for (String str = "Daydream";; str = "Cardboard")
    {
      this.d = str;
      if ((!runOnUiThreadWithSync(new Runnable()
      {
        public final void run()
        {
          try
          {
            AtomicLong localAtomicLong = localAtomicLong;
            o localo = GoogleVrProxy.this.a;
            Object[] arrayOfObject = new Object[6];
            arrayOfObject[0] = Boolean.valueOf(paramBoolean1);
            arrayOfObject[1] = Boolean.valueOf(paramBoolean2);
            arrayOfObject[2] = Boolean.valueOf(paramBoolean3);
            arrayOfObject[3] = Boolean.valueOf(paramBoolean4);
            arrayOfObject[4] = Boolean.valueOf(paramBoolean5);
            arrayOfObject[5] = GoogleVrProxy.b(GoogleVrProxy.this);
            localAtomicLong.set(((Long)localo.a("load", arrayOfObject)).longValue());
            GoogleVrProxy.c(GoogleVrProxy.this).b = true;
            return;
          }
          catch (Exception localException)
          {
            GoogleVrProxy.this.reportError("Exception caught while loading GoogleVR. " + localException.getLocalizedMessage());
            localAtomicLong.set(0L);
          }
        }
      })) || (localAtomicLong.longValue() == 0L)) {
        reportError("Google VR had a fatal issue while loading. VR will not be available.");
      }
      return localAtomicLong.longValue();
    }
  }
  
  protected void pauseGvrLayout()
  {
    if (!this.k.a()) {}
    while (this.k.e) {
      return;
    }
    if (d())
    {
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext()) {
        ((GoogleVrVideo.GoogleVrVideoCallbacks)localIterator.next()).onSurfaceUnavailable();
      }
    }
    if (this.a != null) {
      this.a.a("pause", new Object[0]);
    }
    this.k.e = true;
  }
  
  public void registerGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks paramGoogleVrVideoCallbacks)
  {
    if (!this.i.contains(paramGoogleVrVideoCallbacks))
    {
      this.i.add(paramGoogleVrVideoCallbacks);
      Surface localSurface = (Surface)getVideoSurface();
      if (localSurface != null) {
        paramGoogleVrVideoCallbacks.onSurfaceAvailable(localSurface);
      }
    }
  }
  
  protected void resumeGvrLayout()
  {
    if (!this.k.a()) {}
    while (!this.k.e) {
      return;
    }
    if (this.a != null) {
      this.a.a("resume", new Object[0]);
    }
    this.k.e = false;
  }
  
  protected void setGoogleVrModeEnabled(final boolean paramBoolean)
  {
    if (!this.k.a()) {}
    while ((this.b == null) || (this.c == null)) {
      return;
    }
    if ((!paramBoolean) && (isQuiting())) {
      e();
    }
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        if (paramBoolean == GoogleVrProxy.d(GoogleVrProxy.this)) {}
        do
        {
          do
          {
            return;
            try
            {
              if ((!paramBoolean) || (GoogleVrProxy.d(GoogleVrProxy.this))) {
                continue;
              }
              if ((GoogleVrProxy.this.a != null) && (GoogleVrProxy.this.b != null) && (!GoogleVrProxy.this.b.addViewToPlayer((View)GoogleVrProxy.this.a.a("getGvrLayout", new Object[0]), true)))
              {
                GoogleVrProxy.this.reportError("Unable to add Google VR to view hierarchy.");
                return;
              }
            }
            catch (Exception localException)
            {
              GoogleVrProxy.this.reportError("Exception enabling Google VR on UI Thread. " + localException.getLocalizedMessage());
              return;
            }
            if (GoogleVrProxy.this.a != null)
            {
              o localo2 = GoogleVrProxy.this.a;
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Boolean.valueOf(true);
              localo2.a("enable", arrayOfObject2);
            }
            GoogleVrProxy.a(GoogleVrProxy.this, true);
            return;
          } while ((paramBoolean) || (!GoogleVrProxy.d(GoogleVrProxy.this)));
          GoogleVrProxy.a(GoogleVrProxy.this, false);
          if (GoogleVrProxy.this.a != null)
          {
            o localo1 = GoogleVrProxy.this.a;
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Boolean.valueOf(false);
            localo1.a("enable", arrayOfObject1);
          }
        } while ((GoogleVrProxy.this.a == null) || (GoogleVrProxy.this.b == null));
        GoogleVrProxy.this.b.removeViewFromPlayer((View)GoogleVrProxy.this.a.a("getGvrLayout", new Object[0]));
      }
    });
  }
  
  public void setVideoLocationTransform(float[] paramArrayOfFloat)
  {
    int[] arrayOfInt = { 4, 4 };
    float[][] arrayOfFloat = (float[][])Array.newInstance(Float.TYPE, arrayOfInt);
    for (int n = 0; n < 4; n++) {
      for (int i1 = 0; i1 < 4; i1++) {
        arrayOfFloat[n][i1] = paramArrayOfFloat[(i1 + n * 4)];
      }
    }
    setVrVideoTransform(arrayOfFloat);
  }
  
  protected void unloadGoogleVr()
  {
    if (this.k.d) {
      setGoogleVrModeEnabled(false);
    }
    if (this.k.c) {
      this.k.c = false;
    }
    this.j = null;
    runOnUiThread(new Runnable()
    {
      public final void run()
      {
        try
        {
          if (GoogleVrProxy.this.a != null)
          {
            GoogleVrProxy.this.a.a("unload", new Object[0]);
            GoogleVrProxy.this.a.a("deinitialize", new Object[0]);
            GoogleVrProxy.this.a = null;
          }
          GoogleVrProxy.c(GoogleVrProxy.this).b = false;
          return;
        }
        catch (Exception localException)
        {
          GoogleVrProxy.this.reportError("Exception unloading Google VR on UI Thread. " + localException.getLocalizedMessage());
        }
      }
    });
  }
  
  final class a
  {
    public boolean a = false;
    public boolean b = false;
    public boolean c = false;
    public boolean d = false;
    public boolean e = true;
    public boolean f = false;
    
    a() {}
    
    public final boolean a()
    {
      return (this.a) && (this.b);
    }
    
    public final void b()
    {
      this.a = false;
      this.b = false;
      this.d = false;
      this.e = true;
      this.f = false;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.GoogleVrProxy
 * JD-Core Version:    0.7.0.1
 */