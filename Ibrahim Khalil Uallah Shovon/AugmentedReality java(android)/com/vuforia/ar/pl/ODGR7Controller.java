package com.vuforia.ar.pl;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.osterhoutgroup.api.ext.ExtendDisplay;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ODGR7Controller
{
  private static final String MODULENAME = "ODGR7Controller";
  private boolean stereoEnabled = false;
  
  public ODGR7Controller()
    throws ClassNotFoundException
  {
    Class.forName("com.osterhoutgroup.api.ext.ExtendDisplay");
  }
  
  private List<SurfaceView> findSurfaceViews(Window paramWindow)
  {
    ArrayList localArrayList = new ArrayList();
    findSurfaceViews((ViewGroup)paramWindow.getDecorView(), localArrayList);
    return localArrayList;
  }
  
  private void findSurfaceViews(ViewGroup paramViewGroup, List<SurfaceView> paramList)
  {
    int i = paramViewGroup.getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = paramViewGroup.getChildAt(j);
      if ((localView instanceof SurfaceView)) {
        paramList.add((SurfaceView)localView);
      }
      for (;;)
      {
        j++;
        break;
        if ((localView instanceof ViewGroup)) {
          findSurfaceViews((ViewGroup)localView, paramList);
        }
      }
    }
  }
  
  private void logMetrics(String paramString, Activity paramActivity, Window paramWindow)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ExtendDisplay.getDisplayMetrics(paramActivity, paramWindow, localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    DebugLog.LOGD("ODGR7Controller", paramString + " display metrics " + i + " x " + j);
  }
  
  private int setStereoSurfaces(Window paramWindow, boolean paramBoolean)
  {
    Iterator localIterator = findSurfaceViews(paramWindow).iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      SurfaceView localSurfaceView = (SurfaceView)localIterator.next();
      if (!localSurfaceView.getHolder().getSurface().isValid()) {
        break label72;
      }
      ExtendDisplay.extendSurface(localSurfaceView, paramBoolean);
    }
    label72:
    for (int j = i + 1;; j = i)
    {
      i = j;
      break;
      return i;
    }
  }
  
  public boolean getStereo()
  {
    return this.stereoEnabled;
  }
  
  public boolean setStereo(final boolean paramBoolean)
  {
    Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null) {}
    final Window localWindow;
    do
    {
      do
      {
        return false;
        localWindow = localActivity.getWindow();
      } while (localWindow == null);
      if (findSurfaceViews(localWindow).size() != 0) {
        break;
      }
    } while (!paramBoolean);
    DebugLog.LOGE("ODGR7Controller", "ODG Display control: Cannot change to extended display mode, there are no SurfaceViews created.");
    return false;
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        ExtendDisplay.extendWindow(localWindow, paramBoolean);
        if ((ODGR7Controller.this.setStereoSurfaces(localWindow, paramBoolean) == 0) && (paramBoolean))
        {
          ExtendDisplay.extendWindow(localWindow, false);
          ODGR7Controller.access$102(ODGR7Controller.this, false);
          return;
        }
        ODGR7Controller.access$102(ODGR7Controller.this, paramBoolean);
      }
    });
    return true;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.ODGR7Controller
 * JD-Core Version:    0.7.0.1
 */