package com.vuforia.ar.pl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;

public class VuforiaServiceConnection
  implements ServiceConnection
{
  private static final String SUBTAG = "VuforiaConn";
  private IBinder mService;
  private CountDownLatch mServiceLatch = null;
  
  public IBinder awaitService()
  {
    if (this.mServiceLatch == null)
    {
      DebugLog.LOGE("VuforiaConn", "ERROR: awaitService called before bind()");
      return null;
    }
    try
    {
      this.mServiceLatch.await();
      return this.mService;
    }
    catch (InterruptedException localInterruptedException)
    {
      DebugLog.LOGD("VuforiaConn", "bind failed to complete" + localInterruptedException);
      this.mServiceLatch = null;
    }
    return null;
  }
  
  public boolean bindService(Context paramContext, ComponentName paramComponentName)
  {
    this.mServiceLatch = new CountDownLatch(1);
    Intent localIntent = new Intent();
    localIntent.setComponent(paramComponentName);
    try
    {
      boolean bool2 = paramContext.bindService(localIntent, this, 1);
      bool1 = bool2;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        paramContext.unbindService(this);
        DebugLog.LOGD("VuforiaConn", "Not permitted to bind to service: " + paramComponentName + localSecurityException);
        boolean bool1 = false;
      }
    }
    if (!bool1)
    {
      paramContext.unbindService(this);
      DebugLog.LOGD("VuforiaConn", "Bind to service " + paramComponentName + " failed");
      this.mServiceLatch = null;
    }
    return bool1;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.mService = paramIBinder;
    this.mServiceLatch.countDown();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.mService = null;
    this.mServiceLatch = null;
  }
  
  public boolean unbindService(Context paramContext)
  {
    if (this.mService != null)
    {
      paramContext.unbindService(this);
      this.mService = null;
    }
    return true;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.VuforiaServiceConnection
 * JD-Core Version:    0.7.0.1
 */