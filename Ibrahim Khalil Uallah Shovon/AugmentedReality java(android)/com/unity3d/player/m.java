package com.unity3d.player;

import android.os.Build;

final class m
  implements Thread.UncaughtExceptionHandler
{
  private volatile Thread.UncaughtExceptionHandler a;
  
  /* Error */
  final boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 19	java/lang/Thread:getDefaultUncaughtExceptionHandler	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   5: astore_2
    //   6: aload_2
    //   7: aload_0
    //   8: if_acmpne +9 -> 17
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: aload_0
    //   18: aload_2
    //   19: putfield 21	com/unity3d/player/m:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   22: aload_0
    //   23: invokestatic 25	java/lang/Thread:setDefaultUncaughtExceptionHandler	(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   26: iconst_1
    //   27: istore_3
    //   28: goto -15 -> 13
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	m
    //   31	4	1	localObject	Object
    //   5	14	2	localUncaughtExceptionHandler	Thread.UncaughtExceptionHandler
    //   12	16	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	6	31	finally
    //   17	26	31	finally
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    try
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramThread.getName();
      StringBuilder localStringBuilder2 = localStringBuilder1.append(String.format("FATAL EXCEPTION [%s]\n", arrayOfObject1)).append(String.format("Unity version     : %s\n", new Object[] { "2018.2.5f1" }));
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Build.MANUFACTURER;
      arrayOfObject2[1] = Build.MODEL;
      StringBuilder localStringBuilder3 = localStringBuilder2.append(String.format("Device model      : %s %s\n", arrayOfObject2));
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Build.FINGERPRINT;
      Error localError = new Error(String.format("Device fingerprint: %s\n", arrayOfObject3));
      localError.setStackTrace(new StackTraceElement[0]);
      localError.initCause(paramThrowable);
      this.a.uncaughtException(paramThread, localError);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        this.a.uncaughtException(paramThread, paramThrowable);
      }
    }
    finally {}
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.m
 * JD-Core Version:    0.7.0.1
 */