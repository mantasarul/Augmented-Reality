package com.vuforia;

import android.app.Activity;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Vuforia
{
  public static final int GL_20 = 1;
  public static final int GL_30 = 8;
  public static final int INIT_DEVICE_NOT_SUPPORTED = -2;
  public static final int INIT_ERROR = -1;
  public static final int INIT_EXTERNAL_DEVICE_NOT_DETECTED = -10;
  public static final int INIT_LICENSE_ERROR_CANCELED_KEY = -8;
  public static final int INIT_LICENSE_ERROR_INVALID_KEY = -5;
  public static final int INIT_LICENSE_ERROR_MISSING_KEY = -4;
  public static final int INIT_LICENSE_ERROR_NO_NETWORK_PERMANENT = -6;
  public static final int INIT_LICENSE_ERROR_NO_NETWORK_TRANSIENT = -7;
  public static final int INIT_LICENSE_ERROR_PRODUCT_TYPE_MISMATCH = -9;
  public static final int INIT_NO_CAMERA_ACCESS = -3;
  private static boolean initializedJava = false;
  private static UpdateCallback sUpdateCallback = null;
  private static UpdateCallbackInterface sUpdateCallbackInterface = null;
  protected static Map<Integer, Object> sUserDataMap = new ConcurrentHashMap(16, 0.75F, 4);
  
  static
  {
    if (!loadLibrary("Vuforia")) {
      System.exit(1);
    }
  }
  
  protected static short[] convertStringToShortArray(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    short[] arrayOfShort = new short[1 + paramString.codePointCount(0, paramString.length())];
    int i = paramString.length();
    int j = 0;
    int k = 0;
    int m;
    int n;
    if (j < i)
    {
      m = paramString.codePointAt(j);
      if (m <= 65535) {
        break label98;
      }
      n = k + 1;
      arrayOfShort[k] = ((short)(m >> 16));
    }
    for (;;)
    {
      k = n + 1;
      arrayOfShort[n] = ((short)m);
      j += Character.charCount(m);
      break;
      arrayOfShort[(-1 + arrayOfShort.length)] = 0;
      return arrayOfShort;
      label98:
      n = k;
    }
  }
  
  public static void deinit() {}
  
  public static int getActiveFusionProvider()
  {
    return VuforiaJNI.getActiveFusionProvider();
  }
  
  public static int getBitsPerPixel(int paramInt)
  {
    return VuforiaJNI.getBitsPerPixel(paramInt);
  }
  
  public static int getBufferSize(int paramInt1, int paramInt2, int paramInt3)
  {
    return VuforiaJNI.getBufferSize(paramInt1, paramInt2, paramInt3);
  }
  
  public static String getLibraryVersion()
  {
    return VuforiaJNI.getLibraryVersion();
  }
  
  public static int init()
  {
    return VuforiaJNI.init();
  }
  
  public static boolean isInitialized()
  {
    return VuforiaJNI.isInitialized();
  }
  
  private static boolean loadLibrary(String paramString)
  {
    try
    {
      System.loadLibrary(paramString);
      System.out.println("Native library lib" + paramString + ".so loaded");
      return true;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      System.err.println("The library lib" + paramString + ".so could not be loaded");
      return false;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        System.err.println("The library lib" + paramString + ".so was not allowed to be loaded");
      }
    }
  }
  
  public static void onPause() {}
  
  public static void onResume() {}
  
  public static void onSurfaceChanged(int paramInt1, int paramInt2)
  {
    VuforiaJNI.onSurfaceChanged(paramInt1, paramInt2);
  }
  
  public static void onSurfaceCreated() {}
  
  private static native void privateSetInitParameters(Activity paramActivity, int paramInt, String paramString);
  
  public static void registerCallback(UpdateCallbackInterface paramUpdateCallbackInterface)
  {
    VuforiaJNI.registerCallback(UpdateCallback.getCPtr(registerLocalReference(paramUpdateCallbackInterface)), sUpdateCallback);
  }
  
  protected static UpdateCallback registerLocalReference(UpdateCallbackInterface paramUpdateCallbackInterface)
  {
    if (paramUpdateCallbackInterface == null)
    {
      sUpdateCallback = null;
      sUpdateCallbackInterface = null;
      return null;
    }
    sUpdateCallbackInterface = paramUpdateCallbackInterface;
    sUpdateCallback = new UpdateCallback()
    {
      public void Vuforia_onUpdate(State paramAnonymousState)
      {
        Vuforia.sUpdateCallbackInterface.Vuforia_onUpdate(paramAnonymousState);
        paramAnonymousState.delete();
      }
    };
    return sUpdateCallback;
  }
  
  public static boolean requiresAlpha()
  {
    return VuforiaJNI.requiresAlpha();
  }
  
  protected static Object retrieveFromUserDataMap(Integer paramInteger)
  {
    if (!sUserDataMap.containsKey(paramInteger)) {
      return null;
    }
    return sUserDataMap.get(paramInteger);
  }
  
  public static int setAllowedFusionProviders(int paramInt)
  {
    return VuforiaJNI.setAllowedFusionProviders(paramInt);
  }
  
  public static boolean setFrameFormat(int paramInt, boolean paramBoolean)
  {
    return VuforiaJNI.setFrameFormat(paramInt, paramBoolean);
  }
  
  protected static void setHint()
  {
    setHint(-858996736L, 2796202);
  }
  
  public static boolean setHint(long paramLong, int paramInt)
  {
    return VuforiaJNI.setHint(paramLong, paramInt);
  }
  
  public static void setInitParameters(Activity paramActivity, int paramInt, String paramString)
  {
    if (!initializedJava)
    {
      setHint();
      initializedJava = true;
    }
    privateSetInitParameters(paramActivity, paramInt, paramString);
  }
  
  protected static boolean updateUserDataMap(Integer paramInteger, Object paramObject)
  {
    if (paramInteger == null) {
      return false;
    }
    if (paramObject == null) {
      sUserDataMap.remove(paramInteger);
    }
    for (;;)
    {
      return true;
      sUserDataMap.put(paramInteger, paramObject);
    }
  }
  
  protected static boolean wasInitializedJava()
  {
    return initializedJava;
  }
  
  public static abstract interface UpdateCallbackInterface
  {
    public abstract void Vuforia_onUpdate(State paramState);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Vuforia
 * JD-Core Version:    0.7.0.1
 */