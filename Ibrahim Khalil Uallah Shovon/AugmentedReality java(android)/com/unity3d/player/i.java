package com.unity3d.player;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;

public final class i
  extends Fragment
{
  private final Runnable a;
  
  public i()
  {
    this.a = null;
  }
  
  public i(Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.a == null)
    {
      getFragmentManager().beginTransaction().remove(this).commit();
      return;
    }
    requestPermissions(getArguments().getStringArray("PermissionNames"), 15881);
  }
  
  public final void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramInt != 15881) {
      return;
    }
    if (paramArrayOfString.length == 0)
    {
      requestPermissions(getArguments().getStringArray("PermissionNames"), 15881);
      return;
    }
    int i = 0;
    if ((i < paramArrayOfString.length) && (i < paramArrayOfInt.length))
    {
      StringBuilder localStringBuilder = new StringBuilder().append(paramArrayOfString[i]);
      if (paramArrayOfInt[i] == 0) {}
      for (String str = " granted";; str = " denied")
      {
        g.Log(4, str);
        i++;
        break;
      }
    }
    FragmentTransaction localFragmentTransaction = getActivity().getFragmentManager().beginTransaction();
    localFragmentTransaction.remove(this);
    localFragmentTransaction.commit();
    this.a.run();
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.i
 * JD-Core Version:    0.7.0.1
 */