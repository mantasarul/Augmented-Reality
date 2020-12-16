package com.unity3d.player;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class UnityPlayerProxyActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    Log.w("Unity", "UnityPlayerProxyActivity has been deprecated, please update your AndroidManifest to use UnityPlayerActivity instead");
    super.onCreate(paramBundle);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.UnityPlayerProxyActivity
 * JD-Core Version:    0.7.0.1
 */