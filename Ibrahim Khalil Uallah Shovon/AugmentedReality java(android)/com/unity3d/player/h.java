package com.unity3d.player;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.os.Bundle;
import java.util.LinkedList;
import java.util.List;

public final class h
  implements e
{
  private static boolean a(PackageItemInfo paramPackageItemInfo)
  {
    try
    {
      boolean bool = paramPackageItemInfo.metaData.getBoolean("unityplayer.SkipPermissionsDialog");
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public final void a(Activity paramActivity, Runnable paramRunnable)
  {
    int i = 0;
    if (paramActivity == null) {
      return;
    }
    PackageManager localPackageManager = paramActivity.getPackageManager();
    try
    {
      ActivityInfo localActivityInfo = localPackageManager.getActivityInfo(paramActivity.getComponentName(), 128);
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramActivity.getPackageName(), 128);
      if ((a(localActivityInfo)) || (a(localApplicationInfo)))
      {
        paramRunnable.run();
        return;
      }
    }
    catch (Exception localException1) {}
    for (;;)
    {
      LinkedList localLinkedList;
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramActivity.getPackageName(), 4096);
        if (localPackageInfo.requestedPermissions == null) {
          localPackageInfo.requestedPermissions = new String[0];
        }
        localLinkedList = new LinkedList();
        String[] arrayOfString = localPackageInfo.requestedPermissions;
        int j = arrayOfString.length;
        if (i < j)
        {
          String str = arrayOfString[i];
          try
          {
            if (((0x1 & localPackageManager.getPermissionInfo(str, 128).protectionLevel) == 0) || (paramActivity.checkCallingOrSelfPermission(str) == 0)) {
              break label347;
            }
            localLinkedList.add(str);
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            g.Log(5, "Failed to get permission info for " + str + ", manifest likely missing custom permission declaration");
            g.Log(5, "Permission " + str + " ignored");
          }
        }
        if (!localLinkedList.isEmpty()) {
          break label275;
        }
      }
      catch (Exception localException2)
      {
        g.Log(6, "Unable to query for permission: " + localException2.getMessage());
        return;
      }
      paramRunnable.run();
      return;
      label275:
      i locali = new i(paramRunnable);
      Bundle localBundle = new Bundle();
      localBundle.putStringArray("PermissionNames", (String[])localLinkedList.toArray(new String[0]));
      locali.setArguments(localBundle);
      FragmentTransaction localFragmentTransaction = paramActivity.getFragmentManager().beginTransaction();
      localFragmentTransaction.add(0, locali);
      localFragmentTransaction.commit();
      return;
      label347:
      i++;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.h
 * JD-Core Version:    0.7.0.1
 */