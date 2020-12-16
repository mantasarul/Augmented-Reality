package com.unity3d.player;

import android.os.Bundle;
import android.util.Log;

public class UnityPlayerNativeActivity
  extends UnityPlayerActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    Log.w("Unity", "UnityPlayerNativeActivity has been deprecated, please update your AndroidManifest to use UnityPlayerActivity instead");
    super.onCreate(paramBundle);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.UnityPlayerNativeActivity
 * JD-Core Version:    0.7.0.1
 */