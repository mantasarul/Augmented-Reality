package com.unity3d.player;

import android.view.Surface;

public abstract interface GoogleVrVideo
{
  public abstract void deregisterGoogleVrVideoListener(GoogleVrVideoCallbacks paramGoogleVrVideoCallbacks);
  
  public abstract void registerGoogleVrVideoListener(GoogleVrVideoCallbacks paramGoogleVrVideoCallbacks);
  
  public abstract void setVideoLocationTransform(float[] paramArrayOfFloat);
  
  public static abstract interface GoogleVrVideoCallbacks
  {
    public abstract void onFrameAvailable();
    
    public abstract void onSurfaceAvailable(Surface paramSurface);
    
    public abstract void onSurfaceUnavailable();
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.GoogleVrVideo
 * JD-Core Version:    0.7.0.1
 */