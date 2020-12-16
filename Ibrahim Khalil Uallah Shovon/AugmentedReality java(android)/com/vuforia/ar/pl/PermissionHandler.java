package com.vuforia.ar.pl;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.List;

public class PermissionHandler
{
  private static final int AR_PERMISSIONS_STATUS_DENIED = 2;
  private static final int AR_PERMISSIONS_STATUS_FAILED = 0;
  private static final int AR_PERMISSIONS_STATUS_GRANTED = 3;
  private static final int AR_PERMISSIONS_STATUS_REQUESTED = 1;
  private static final String MODULENAME = "PermissionHandler";
  private static final int PERMISSIONS_REQUEST_CODE = 100;
  private boolean mIsPermissionsRequested = false;
  private String[] mPermissionsArrayToRequest;
  private int mPermissionsStatus = 0;
  
  public int requestPermissions(Activity paramActivity, String[] paramArrayOfString)
  {
    int i;
    if ((this.mPermissionsStatus == 3) || (this.mPermissionsStatus == 1) || (this.mPermissionsStatus == 2)) {
      i = this.mPermissionsStatus;
    }
    do
    {
      return i;
      i = 0;
    } while (paramActivity == null);
    PackageManager localPackageManager = paramActivity.getPackageManager();
    ArrayList localArrayList = new ArrayList(paramArrayOfString.length);
    for (int j = 0; j < paramArrayOfString.length; j++) {
      if (localPackageManager.checkPermission(paramArrayOfString[j], paramActivity.getPackageName()) != 0) {
        localArrayList.add(paramArrayOfString[j]);
      }
    }
    if (localArrayList.isEmpty()) {
      this.mPermissionsStatus = 3;
    }
    if ((Build.VERSION.SDK_INT >= 23) && (!this.mIsPermissionsRequested) && (!localArrayList.isEmpty())) {}
    try
    {
      FragmentManager localFragmentManager = paramActivity.getFragmentManager();
      this.mPermissionsArrayToRequest = ((String[])localArrayList.toArray(new String[localArrayList.size()]));
      PermissionsRequestFragment localPermissionsRequestFragment = new PermissionsRequestFragment();
      FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
      localFragmentTransaction.add(0, localPermissionsRequestFragment);
      localFragmentTransaction.commit();
      this.mPermissionsStatus = 1;
      return this.mPermissionsStatus;
    }
    catch (Exception localException) {}
    return 0;
  }
  
  public class PermissionsRequestFragment
    extends Fragment
  {
    public PermissionsRequestFragment() {}
    
    private void removeSelf()
    {
      FragmentTransaction localFragmentTransaction = getActivity().getFragmentManager().beginTransaction();
      localFragmentTransaction.remove(this);
      localFragmentTransaction.commit();
    }
    
    public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      if (paramInt != 100) {
        return;
      }
      for (int i = 0;; i++) {
        if (i < paramArrayOfInt.length)
        {
          if (paramArrayOfInt[i] == -1) {
            PermissionHandler.access$202(PermissionHandler.this, 2);
          }
        }
        else
        {
          if (PermissionHandler.this.mPermissionsStatus != 2) {
            PermissionHandler.access$202(PermissionHandler.this, 3);
          }
          removeSelf();
          return;
        }
      }
    }
    
    public void onStart()
    {
      super.onStart();
      if (!PermissionHandler.this.mIsPermissionsRequested)
      {
        requestPermissions(PermissionHandler.this.mPermissionsArrayToRequest, 100);
        PermissionHandler.access$002(PermissionHandler.this, true);
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.PermissionHandler
 * JD-Core Version:    0.7.0.1
 */