package com.vuforia.ar.pl;

import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.io.IOException;

class CameraSurface
  extends SurfaceView
  implements SurfaceHolder.Callback
{
  private static final String MODULENAME = "CameraSurface";
  Camera camera = null;
  SurfaceHolder surfaceHolder = getHolder();
  
  public CameraSurface(Context paramContext)
  {
    super(paramContext);
    this.surfaceHolder.addCallback(this);
    this.surfaceHolder.setType(3);
  }
  
  public void setCamera(Camera paramCamera)
  {
    this.camera = paramCamera;
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      if (this.camera != null) {
        this.camera.setPreviewDisplay(paramSurfaceHolder);
      }
      return;
    }
    catch (IOException localIOException)
    {
      this.camera = null;
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.camera = null;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.CameraSurface
 * JD-Core Version:    0.7.0.1
 */