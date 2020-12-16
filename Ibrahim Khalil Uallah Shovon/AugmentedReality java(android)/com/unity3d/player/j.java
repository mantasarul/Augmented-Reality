package com.unity3d.player;

import android.os.Build.VERSION;

public final class j
{
  static final boolean a;
  static final boolean b;
  static final boolean c;
  static final e d;
  
  static
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool2 = bool1;
      a = bool2;
      if (Build.VERSION.SDK_INT < 21) {
        break label64;
      }
      bool3 = bool1;
      label26:
      b = bool3;
      if (Build.VERSION.SDK_INT < 23) {
        break label69;
      }
      label38:
      c = bool1;
      if (!bool1) {
        break label74;
      }
    }
    label64:
    label69:
    label74:
    for (h localh = new h();; localh = null)
    {
      d = localh;
      return;
      bool2 = false;
      break;
      bool3 = false;
      break label26;
      bool1 = false;
      break label38;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.j
 * JD-Core Version:    0.7.0.1
 */