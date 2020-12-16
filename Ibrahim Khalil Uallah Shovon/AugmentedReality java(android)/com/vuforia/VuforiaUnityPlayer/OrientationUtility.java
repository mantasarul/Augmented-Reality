package com.vuforia.VuforiaUnityPlayer;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;

public class OrientationUtility
{
  static final int SCREEN_ORIENTATION_LANDSCAPELEFT = 3;
  static final int SCREEN_ORIENTATION_LANDSCAPERIGHT = 4;
  static final int SCREEN_ORIENTATION_PORTRAIT = 1;
  static final int SCREEN_ORIENTATION_PORTRAITUPSIDEDOWN = 2;
  static final int SCREEN_ORIENTATION_UNKNOWN;
  
  public static int getSurfaceOrientation(Activity paramActivity)
  {
    if (paramActivity == null) {
      return -1;
    }
    Configuration localConfiguration = paramActivity.getResources().getConfiguration();
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 8) {}
    for (int i = localDisplay.getRotation();; i = localDisplay.getOrientation()) {
      switch (localConfiguration.orientation)
      {
      default: 
        return 0;
      case 1: 
      case 3: 
        if ((i != 0) && (i != 3)) {
          break label93;
        }
        return 1;
      }
    }
    label93:
    return 2;
    if ((i == 0) || (i == 1)) {
      return 3;
    }
    return 4;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.VuforiaUnityPlayer.OrientationUtility
 * JD-Core Version:    0.7.0.1
 */