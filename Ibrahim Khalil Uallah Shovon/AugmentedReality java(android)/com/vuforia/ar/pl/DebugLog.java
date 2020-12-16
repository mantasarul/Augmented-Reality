package com.vuforia.ar.pl;

import android.util.Log;

public class DebugLog
{
  private static final String LOGTAG = "AR";
  
  public static final void LOGD(String paramString1, String paramString2)
  {
    if (paramString1.length() > 0) {
      paramString2 = paramString1 + ": " + paramString2;
    }
    Log.d("AR", paramString2);
  }
  
  public static final void LOGE(String paramString1, String paramString2)
  {
    if (paramString1.length() > 0) {
      paramString2 = paramString1 + ": " + paramString2;
    }
    Log.e("AR", paramString2);
  }
  
  public static final void LOGI(String paramString1, String paramString2)
  {
    if (paramString1.length() > 0) {
      paramString2 = paramString1 + ": " + paramString2;
    }
    Log.i("AR", paramString2);
  }
  
  public static final void LOGW(String paramString1, String paramString2)
  {
    if (paramString1.length() > 0) {
      paramString2 = paramString1 + ": " + paramString2;
    }
    Log.w("AR", paramString2);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.DebugLog
 * JD-Core Version:    0.7.0.1
 */