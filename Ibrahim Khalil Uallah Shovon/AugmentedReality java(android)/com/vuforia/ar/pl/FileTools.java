package com.vuforia.ar.pl;

import android.app.Activity;
import android.content.res.AssetManager;
import android.os.Environment;
import java.io.File;

public class FileTools
{
  private static final int FILE_PATHTYPEINDEX_ABSOLUTE = -1;
  private static final int FILE_PATHTYPEINDEX_ANDROID_ASSETS = 0;
  private static final int FILE_PATHTYPEINDEX_ANDROID_DATALOCAL = 4;
  private static final int FILE_PATHTYPEINDEX_ANDROID_MEDIASTORAGE = 3;
  private static final int FILE_PATHTYPEINDEX_ANDROID_PRIVATEAPPCACHE = 2;
  private static final int FILE_PATHTYPEINDEX_ANDROID_PRIVATEAPPSTORAGE = 1;
  private static final String MODULENAME = "FileTools";
  
  public static String getAbsolutePath(int paramInt, String paramString)
  {
    String str = null;
    switch (paramInt)
    {
    default: 
      SystemTools.setSystemErrorCode(6);
      return str;
    case 1: 
      Activity localActivity2 = SystemTools.getActivityFromNative();
      if (localActivity2 == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      File localFile3 = localActivity2.getFilesDir();
      if (localFile3 == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      str = localFile3.getAbsolutePath();
    }
    while ((str != null) && (paramString != null))
    {
      if ((str.length() > 0) && (str.charAt(-1 + str.length()) != '/')) {
        str = str + "/";
      }
      return str + paramString;
      Activity localActivity1 = SystemTools.getActivityFromNative();
      if (localActivity1 == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      File localFile2 = localActivity1.getCacheDir();
      if (localFile2 == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      str = localFile2.getAbsolutePath();
      continue;
      File localFile1 = Environment.getExternalStorageDirectory();
      if (localFile1 == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      str = localFile1.getAbsolutePath();
    }
  }
  
  public static AssetManager get_assetmanager()
  {
    Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null)
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    return localActivity.getAssets();
  }
  
  public static boolean mediastorage_isAvailable()
  {
    String str = Environment.getExternalStorageState();
    return ("mounted".equals(str)) || ("mounted_ro".equals(str));
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.FileTools
 * JD-Core Version:    0.7.0.1
 */