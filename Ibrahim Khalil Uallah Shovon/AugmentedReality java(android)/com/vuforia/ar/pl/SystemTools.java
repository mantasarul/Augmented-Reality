package com.vuforia.ar.pl;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;

public class SystemTools
{
  public static final int AR_DEVICE_ORIENTATION_0 = 268455954;
  public static final int AR_DEVICE_ORIENTATION_180 = 268455955;
  public static final int AR_DEVICE_ORIENTATION_270 = 268455957;
  public static final int AR_DEVICE_ORIENTATION_90 = 268455956;
  public static final int AR_DEVICE_ORIENTATION_UNKNOWN = 268455952;
  public static final int AR_ERROR_INVALID_ENUM = 3;
  public static final int AR_ERROR_INVALID_HANDLE = 4;
  public static final int AR_ERROR_INVALID_OPERATION = 5;
  public static final int AR_ERROR_INVALID_VALUE = 2;
  public static final int AR_ERROR_NONE = 0;
  public static final int AR_ERROR_OPERATION_CANCELED = 7;
  public static final int AR_ERROR_OPERATION_FAILED = 6;
  public static final int AR_ERROR_OPERATION_TIMEOUT = 8;
  public static final int AR_ERROR_UNKNOWN = 1;
  public static final int AR_RENDERING_TEXTURE_ROTATION_AUTO = 268455953;
  public static final int AR_RENDERING_TEXTURE_ROTATION_LANDSCAPE_LEFT = 268455956;
  public static final int AR_RENDERING_TEXTURE_ROTATION_LANDSCAPE_RIGHT = 268455957;
  public static final int AR_RENDERING_TEXTURE_ROTATION_PORTRAIT = 268455954;
  public static final int AR_RENDERING_TEXTURE_ROTATION_PORTRAIT_UPSIDEDOWN = 268455955;
  public static final int AR_VIDEOTEXTURE_ROTATION_UNKNOWN = 268455952;
  private static final String MODULENAME = "SystemTools";
  
  public static boolean checkMinimumApiLevel(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  public static native Activity getActivityFromNative();
  
  public static int getActivityOrientation(Activity paramActivity)
  {
    if (paramActivity == null) {
      return 268455952;
    }
    Configuration localConfiguration = paramActivity.getResources().getConfiguration();
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    int i;
    int j;
    if (checkMinimumApiLevel(8))
    {
      i = localDisplay.getRotation();
      switch (localConfiguration.orientation)
      {
      default: 
        j = 268455952;
      }
    }
    for (;;)
    {
      return j;
      i = localDisplay.getOrientation();
      break;
      if ((i == 0) || (i == 3))
      {
        j = 268455954;
      }
      else
      {
        j = 268455955;
        continue;
        if ((i == 0) || (i == 1)) {
          j = 268455956;
        } else {
          j = 268455957;
        }
      }
    }
  }
  
  public static int[] getActivitySize(Activity paramActivity)
  {
    if (paramActivity == null) {}
    int i;
    int j;
    do
    {
      return null;
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      i = localDisplayMetrics.widthPixels;
      j = localDisplayMetrics.heightPixels;
    } while ((i <= 0) || (j <= 0));
    return new int[] { i, j };
  }
  
  public static int getDeviceOrientation(Activity paramActivity)
  {
    if (paramActivity == null) {
      return 268455952;
    }
    paramActivity.getResources().getConfiguration();
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    int i;
    int j;
    if (checkMinimumApiLevel(8))
    {
      i = localDisplay.getRotation();
      if (i != 0) {
        break label62;
      }
      j = 268455954;
    }
    for (;;)
    {
      return j;
      i = localDisplay.getOrientation();
      break;
      label62:
      if (i == 1) {
        j = 268455956;
      } else if (i == 2) {
        j = 268455955;
      } else if (i == 3) {
        j = 268455957;
      } else {
        j = 268455952;
      }
    }
  }
  
  public static float[] getDisplayDpi(Activity paramActivity)
  {
    if (paramActivity == null) {
      return null;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    if (checkMinimumApiLevel(17)) {
      paramActivity.getWindowManager().getDefaultDisplay().getRealMetrics(localDisplayMetrics);
    }
    for (;;)
    {
      float f1 = localDisplayMetrics.xdpi;
      float f2 = localDisplayMetrics.ydpi;
      if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
        break;
      }
      return new float[] { f1, f2 };
      paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    }
  }
  
  public static int[] getDisplaySize(Activity paramActivity)
  {
    if (paramActivity == null) {}
    int[] arrayOfInt;
    for (;;)
    {
      return null;
      Point localPoint = new Point();
      try
      {
        paramActivity.getWindowManager().getDefaultDisplay().getRealSize(localPoint);
        if ((localPoint.x > 0) && (localPoint.y > 0))
        {
          arrayOfInt = new int[2];
          if (localPoint.y > localPoint.x)
          {
            arrayOfInt[0] = localPoint.y;
            arrayOfInt[1] = localPoint.x;
          }
          else
          {
            arrayOfInt[0] = localPoint.x;
            arrayOfInt[1] = localPoint.y;
          }
        }
      }
      catch (NoSuchMethodError localNoSuchMethodError)
      {
        DebugLog.LOGE("SystemTools", "Display.getRealSize is not supported on this platform");
        return null;
      }
    }
    return arrayOfInt;
  }
  
  public static String getNativeLibraryPath(Activity paramActivity)
  {
    if (paramActivity == null) {
      return null;
    }
    try
    {
      ApplicationInfo localApplicationInfo = paramActivity.getApplicationInfo();
      if (localApplicationInfo != null) {
        if (checkMinimumApiLevel(9))
        {
          localObject = localApplicationInfo.nativeLibraryDir;
          if ((localObject != null) && (((String)localObject).length() > 0) && (((String)localObject).charAt(-1 + ((String)localObject).length()) != '/')) {
            localObject = (String)localObject + '/';
          }
        }
        else
        {
          String str = "/data/data/" + paramActivity.getPackageName() + "/lib/";
          localObject = str;
        }
      }
    }
    catch (Exception localException)
    {
      return null;
    }
    Object localObject = null;
    return localObject;
  }
  
  public static native void logSystemError(String paramString);
  
  public static Method retrieveClassMethod(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      Method localMethod2 = paramClass.getMethod(paramString, paramVarArgs);
      localMethod1 = localMethod2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Method localMethod1 = null;
      }
    }
    if (localMethod1 != null) {}
    return localMethod1;
  }
  
  public static void sendKillSignal(final int paramInt)
  {
    Activity localActivity = getActivityFromNative();
    if (localActivity == null) {
      return;
    }
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        this.val$activity.setResult(paramInt);
        this.val$activity.finish();
      }
    });
  }
  
  public static native void setSystemErrorCode(int paramInt);
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.SystemTools
 * JD-Core Version:    0.7.0.1
 */