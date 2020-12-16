package com.unity3d.player;

import java.util.concurrent.atomic.AtomicReference;

public class GoogleVrApi
{
  private static AtomicReference a = new AtomicReference();
  
  static void a()
  {
    a.set(null);
  }
  
  static void a(f paramf)
  {
    a.compareAndSet(null, new GoogleVrProxy(paramf));
  }
  
  static GoogleVrProxy b()
  {
    return (GoogleVrProxy)a.get();
  }
  
  public static GoogleVrVideo getGoogleVrVideo()
  {
    return (GoogleVrVideo)a.get();
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.GoogleVrApi
 * JD-Core Version:    0.7.0.1
 */