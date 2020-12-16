package com.vuforia.VuforiaUnityPlayer;

import android.app.Activity;
import com.vuforia.Vuforia;

public class VuforiaInitializer
{
  private static final String NATIVE_LIB_UNITYPLAYER = "VuforiaUnityPlayer";
  private static final String NATIVE_LIB_VUFORIA = "Vuforia";
  private static final String NATIVE_LIB_VUFORIAWRAPPER = "VuforiaWrapper";
  
  public static void initPlatform() {}
  
  private static native void initPlatformNative();
  
  public static int initVuforia(Activity paramActivity, int paramInt, String paramString)
  {
    DebugLog.LOGD("Initializing Vuforia...");
    Vuforia.setInitParameters(paramActivity, paramInt, paramString);
    Vuforia.setHint(-858996736L, 1747626);
    int i;
    do
    {
      i = Vuforia.init();
    } while ((i >= 0) && (i < 100));
    if (i < 0)
    {
      DebugLog.LOGE("Vuforia initialization failed");
      return i;
    }
    return 0;
  }
  
  private static boolean loadLibrary(String paramString)
  {
    try
    {
      System.loadLibrary(paramString);
      return true;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      DebugLog.LOGE("The library lib" + paramString + ".so could not be loaded: " + localUnsatisfiedLinkError.toString());
      return false;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        DebugLog.LOGE("The library lib" + paramString + ".so was not allowed to be loaded");
      }
    }
  }
  
  public static void loadNativeLibraries()
  {
    loadLibrary("Vuforia");
    loadLibrary("VuforiaWrapper");
    loadLibrary("VuforiaUnityPlayer");
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VuforiaUnityPlayer.VuforiaInitializer
 * JD-Core Version:    0.7.0.1
 */