package com.unity3d.player;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;

public class UnityPlayerActivity
  extends Activity
{
  protected UnityPlayer mUnityPlayer;
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 2) {
      return this.mUnityPlayer.injectEvent(paramKeyEvent);
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mUnityPlayer.configurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    this.mUnityPlayer = new UnityPlayer(this);
    setContentView(this.mUnityPlayer);
    this.mUnityPlayer.requestFocus();
  }
  
  protected void onDestroy()
  {
    this.mUnityPlayer.quit();
    super.onDestroy();
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    return this.mUnityPlayer.injectEvent(paramMotionEvent);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return this.mUnityPlayer.injectEvent(paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return this.mUnityPlayer.injectEvent(paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.mUnityPlayer.lowMemory();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mUnityPlayer.pause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mUnityPlayer.resume();
  }
  
  protected void onStart()
  {
    super.onStart();
    this.mUnityPlayer.start();
  }
  
  protected void onStop()
  {
    super.onStop();
    this.mUnityPlayer.stop();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.mUnityPlayer.injectEvent(paramMotionEvent);
  }
  
  public void onTrimMemory(int paramInt)
  {
    super.onTrimMemory(paramInt);
    if (paramInt == 15) {
      this.mUnityPlayer.lowMemory();
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    this.mUnityPlayer.windowFocusChanged(paramBoolean);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.UnityPlayerActivity
 * JD-Core Version:    0.7.0.1
 */