package com.vuforia.ar.pl;

import android.app.Activity;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class EpsonBT200Controller
{
  private static final String MODULENAME = "EpsonBT200Controller";
  private boolean stereoEnabled = false;
  
  public EpsonBT200Controller()
  {
    final Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null) {
      return;
    }
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Window localWindow = localActivity.getWindow();
        WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
        localLayoutParams.flags = (0x80000000 | localLayoutParams.flags);
        localWindow.setAttributes(localLayoutParams);
      }
    });
  }
  
  public boolean getStereo()
  {
    return this.stereoEnabled;
  }
  
  public boolean setStereo(boolean paramBoolean)
  {
    if (paramBoolean) {}
    boolean bool;
    for (int i = 1;; i = 0) {
      try
      {
        Activity localActivity = SystemTools.getActivityFromNative();
        if (localActivity == null) {
          return false;
        }
        Display localDisplay = ((WindowManager)localActivity.getSystemService("window")).getDefaultDisplay();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = Display.class.getDeclaredMethod("setDisplayMode", arrayOfClass);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        bool = ((Boolean)localMethod.invoke(localDisplay, arrayOfObject)).booleanValue();
        if (!bool) {
          break;
        }
        this.stereoEnabled = paramBoolean;
        return bool;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        return false;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return false;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        return false;
      }
    }
    return bool;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.EpsonBT200Controller
 * JD-Core Version:    0.7.0.1
 */