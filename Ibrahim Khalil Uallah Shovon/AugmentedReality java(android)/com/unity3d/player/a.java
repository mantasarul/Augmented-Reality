package com.unity3d.player;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCaptureSession.CaptureCallback;
import android.hardware.camera2.CameraCaptureSession.StateCallback;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraDevice.StateCallback;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureRequest.Builder;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.Image.Plane;
import android.media.ImageReader;
import android.media.ImageReader.OnImageAvailableListener;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.Arrays;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class a
{
  private static CameraManager b = null;
  private static String[] c = null;
  private static Semaphore e = new Semaphore(1);
  private d a = null;
  private CameraDevice d;
  private HandlerThread f;
  private Handler g;
  private Rect h;
  private Range i;
  private ImageReader j;
  private CaptureRequest.Builder k;
  private CameraCaptureSession l;
  private final CameraDevice.StateCallback m = new CameraDevice.StateCallback()
  {
    public final void onClosed(CameraDevice paramAnonymousCameraDevice)
    {
      g.Log(4, "Camera2: CameraDevice closed.");
      a.e().release();
    }
    
    public final void onDisconnected(CameraDevice paramAnonymousCameraDevice)
    {
      paramAnonymousCameraDevice.close();
      a.a(a.this, null);
      g.Log(5, "Camera2: CameraDevice disconnected.");
      a.e().release();
    }
    
    public final void onError(CameraDevice paramAnonymousCameraDevice, int paramAnonymousInt)
    {
      paramAnonymousCameraDevice.close();
      a.a(a.this, null);
      g.Log(6, "Camera2: Error opeining CameraDevice " + paramAnonymousInt);
      a.e().release();
    }
    
    public final void onOpened(CameraDevice paramAnonymousCameraDevice)
    {
      a.a(a.this, paramAnonymousCameraDevice);
      g.Log(4, "Camera2: CameraDevice opened.");
      a.e().release();
    }
  };
  private final ImageReader.OnImageAvailableListener n = new ImageReader.OnImageAvailableListener()
  {
    public final void onImageAvailable(ImageReader paramAnonymousImageReader)
    {
      Image localImage;
      if (a.e().tryAcquire())
      {
        localImage = paramAnonymousImageReader.acquireLatestImage();
        if (localImage != null)
        {
          Image.Plane[] arrayOfPlane = localImage.getPlanes();
          if ((localImage.getFormat() != 35) || (arrayOfPlane == null) || (arrayOfPlane.length != 3)) {
            break label101;
          }
          a.h(a.this).a(arrayOfPlane[0].getBuffer(), arrayOfPlane[1].getBuffer(), arrayOfPlane[2].getBuffer(), arrayOfPlane[0].getRowStride(), arrayOfPlane[1].getRowStride(), arrayOfPlane[1].getPixelStride());
        }
      }
      for (;;)
      {
        localImage.close();
        a.e().release();
        return;
        label101:
        g.Log(6, "Camera2: Wrong image format.");
      }
    }
  };
  private CameraCaptureSession.CaptureCallback o = new CameraCaptureSession.CaptureCallback()
  {
    public final void onCaptureCompleted(CameraCaptureSession paramAnonymousCameraCaptureSession, CaptureRequest paramAnonymousCaptureRequest, TotalCaptureResult paramAnonymousTotalCaptureResult) {}
    
    public final void onCaptureFailed(CameraCaptureSession paramAnonymousCameraCaptureSession, CaptureRequest paramAnonymousCaptureRequest, CaptureFailure paramAnonymousCaptureFailure)
    {
      g.Log(5, "Camera2: Capture session failed " + paramAnonymousCaptureFailure.getReason());
    }
    
    public final void onCaptureSequenceAborted(CameraCaptureSession paramAnonymousCameraCaptureSession, int paramAnonymousInt)
    {
      g.Log(4, "Camera2: Capture sequence aborted.");
    }
    
    public final void onCaptureSequenceCompleted(CameraCaptureSession paramAnonymousCameraCaptureSession, int paramAnonymousInt, long paramAnonymousLong)
    {
      g.Log(4, "Camera2: Capture sequence completed.");
    }
  };
  
  protected a(d paramd)
  {
    this.a = paramd;
    f();
  }
  
  public static int a(Context paramContext)
  {
    return c(paramContext).length;
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    try
    {
      int i1 = ((Integer)b(paramContext).getCameraCharacteristics(c(paramContext)[paramInt]).get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
      return i1;
    }
    catch (CameraAccessException localCameraAccessException)
    {
      g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
    }
    return 0;
  }
  
  private static Rect a(Size[] paramArrayOfSize, double paramDouble1, double paramDouble2)
  {
    int i1 = 0;
    int i2 = 0;
    double d1 = 1.7976931348623157E+308D;
    for (int i3 = 0; i3 < paramArrayOfSize.length; i3++)
    {
      int i4 = paramArrayOfSize[i3].getWidth();
      int i5 = paramArrayOfSize[i3].getHeight();
      double d2 = Math.abs(Math.log(paramDouble1 / i4)) + Math.abs(Math.log(paramDouble2 / i5));
      if (d2 < d1)
      {
        d1 = d2;
        i2 = i5;
        i1 = i4;
      }
      g.Log(4, "Camera2: FrameSize " + i4 + " x " + i5 + " [" + d2 + "]");
    }
    return new Rect(0, 0, i1, i2);
  }
  
  private static Range a(Range[] paramArrayOfRange, double paramDouble)
  {
    double d1 = 1.7976931348623157E+308D;
    int i1 = -1;
    for (int i2 = 0; i2 < paramArrayOfRange.length; i2++)
    {
      int i3 = ((Integer)paramArrayOfRange[i2].getLower()).intValue();
      int i4 = ((Integer)paramArrayOfRange[i2].getUpper()).intValue();
      double d2 = Math.abs(Math.log(paramDouble / i3)) + Math.abs(Math.log(paramDouble / i4));
      if (d2 < d1)
      {
        d1 = d2;
        i1 = i2;
      }
      g.Log(4, "Camera2: Frame rate[" + i2 + "] = " + i3 + "-" + i4 + " [" + d2 + "]");
    }
    return paramArrayOfRange[i1];
  }
  
  private static CameraManager b(Context paramContext)
  {
    if (b == null) {
      b = (CameraManager)paramContext.getSystemService("camera");
    }
    return b;
  }
  
  public static boolean b(Context paramContext, int paramInt)
  {
    try
    {
      int i1 = ((Integer)b(paramContext).getCameraCharacteristics(c(paramContext)[paramInt]).get(CameraCharacteristics.LENS_FACING)).intValue();
      return i1 == 0;
    }
    catch (CameraAccessException localCameraAccessException)
    {
      g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
    }
    return false;
  }
  
  private static String[] c(Context paramContext)
  {
    if (c == null) {}
    try
    {
      c = b(paramContext).getCameraIdList();
      return c;
    }
    catch (CameraAccessException localCameraAccessException)
    {
      for (;;)
      {
        g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
        c = new String[0];
      }
    }
  }
  
  private void f()
  {
    this.f = new HandlerThread("CameraBackground");
    this.f.start();
    this.g = new Handler(this.f.getLooper());
  }
  
  private void g()
  {
    this.f.quit();
    try
    {
      this.f.join(4000L);
      this.f = null;
      this.g = null;
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      this.f.interrupt();
      g.Log(6, "Camera2: Interrupted while waiting for the background thread to finish " + localInterruptedException);
    }
  }
  
  private void h()
  {
    try
    {
      if (!e.tryAcquire(4L, TimeUnit.SECONDS))
      {
        g.Log(5, "Camera2: Timeout waiting to lock camera for closing.");
        return;
      }
    }
    catch (InterruptedException localInterruptedException1)
    {
      g.Log(6, "Camera2: Interrupted while trying to lock camera for closing " + localInterruptedException1);
      return;
    }
    this.d.close();
    try
    {
      if (!e.tryAcquire(4L, TimeUnit.SECONDS)) {
        g.Log(5, "Camera2: Timeout waiting to close camera.");
      }
      e.release();
      return;
    }
    catch (InterruptedException localInterruptedException2)
    {
      for (;;)
      {
        g.Log(6, "Camera2: Interrupted while waiting to close camera " + localInterruptedException2);
      }
    }
  }
  
  public final Rect a()
  {
    return this.h;
  }
  
  /* Error */
  public final boolean a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    // Byte code:
    //   0: getstatic 38	com/unity3d/player/a:b	Landroid/hardware/camera2/CameraManager;
    //   3: aload_1
    //   4: invokestatic 76	com/unity3d/player/a:c	(Landroid/content/Context;)[Ljava/lang/String;
    //   7: iload_2
    //   8: aaload
    //   9: invokevirtual 88	android/hardware/camera2/CameraManager:getCameraCharacteristics	(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    //   12: astore 7
    //   14: iconst_4
    //   15: new 106	java/lang/StringBuilder
    //   18: dup
    //   19: ldc_w 295
    //   22: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload 7
    //   27: getstatic 298	android/hardware/camera2/CameraCharacteristics:INFO_SUPPORTED_HARDWARE_LEVEL	Landroid/hardware/camera2/CameraCharacteristics$Key;
    //   30: invokevirtual 98	android/hardware/camera2/CameraCharacteristics:get	(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    //   33: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   42: aload 7
    //   44: getstatic 298	android/hardware/camera2/CameraCharacteristics:INFO_SUPPORTED_HARDWARE_LEVEL	Landroid/hardware/camera2/CameraCharacteristics$Key;
    //   47: invokevirtual 98	android/hardware/camera2/CameraCharacteristics:get	(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    //   50: checkcast 100	java/lang/Integer
    //   53: invokevirtual 104	java/lang/Integer:intValue	()I
    //   56: iconst_2
    //   57: if_icmpne +38 -> 95
    //   60: iconst_5
    //   61: ldc_w 300
    //   64: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   67: iconst_0
    //   68: ireturn
    //   69: astore 6
    //   71: bipush 6
    //   73: new 106	java/lang/StringBuilder
    //   76: dup
    //   77: ldc 108
    //   79: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload 6
    //   84: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   93: iconst_0
    //   94: ireturn
    //   95: aload 7
    //   97: getstatic 303	android/hardware/camera2/CameraCharacteristics:SCALER_STREAM_CONFIGURATION_MAP	Landroid/hardware/camera2/CameraCharacteristics$Key;
    //   100: invokevirtual 98	android/hardware/camera2/CameraCharacteristics:get	(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    //   103: checkcast 305	android/hardware/camera2/params/StreamConfigurationMap
    //   106: astore 8
    //   108: aload 8
    //   110: ifnonnull +13 -> 123
    //   113: bipush 6
    //   115: ldc_w 307
    //   118: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   121: iconst_0
    //   122: ireturn
    //   123: aload 8
    //   125: bipush 35
    //   127: invokevirtual 311	android/hardware/camera2/params/StreamConfigurationMap:getOutputSizes	(I)[Landroid/util/Size;
    //   130: astore 9
    //   132: aload 9
    //   134: ifnull +9 -> 143
    //   137: aload 9
    //   139: arraylength
    //   140: ifne +13 -> 153
    //   143: bipush 6
    //   145: ldc_w 313
    //   148: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   151: iconst_0
    //   152: ireturn
    //   153: aload_0
    //   154: aload 9
    //   156: iload_3
    //   157: i2d
    //   158: iload 4
    //   160: i2d
    //   161: invokestatic 315	com/unity3d/player/a:a	([Landroid/util/Size;DD)Landroid/graphics/Rect;
    //   164: putfield 292	com/unity3d/player/a:h	Landroid/graphics/Rect;
    //   167: aload 7
    //   169: getstatic 318	android/hardware/camera2/CameraCharacteristics:CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES	Landroid/hardware/camera2/CameraCharacteristics$Key;
    //   172: invokevirtual 98	android/hardware/camera2/CameraCharacteristics:get	(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    //   175: checkcast 320	[Landroid/util/Range;
    //   178: astore 10
    //   180: aload 10
    //   182: ifnull +9 -> 191
    //   185: aload 10
    //   187: arraylength
    //   188: ifne +13 -> 201
    //   191: bipush 6
    //   193: ldc_w 322
    //   196: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   199: iconst_0
    //   200: ireturn
    //   201: aload_0
    //   202: aload 10
    //   204: iload 5
    //   206: i2d
    //   207: invokestatic 324	com/unity3d/player/a:a	([Landroid/util/Range;D)Landroid/util/Range;
    //   210: putfield 218	com/unity3d/player/a:i	Landroid/util/Range;
    //   213: getstatic 48	com/unity3d/player/a:e	Ljava/util/concurrent/Semaphore;
    //   216: ldc2_w 262
    //   219: getstatic 269	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   222: invokevirtual 273	java/util/concurrent/Semaphore:tryAcquire	(JLjava/util/concurrent/TimeUnit;)Z
    //   225: ifne +39 -> 264
    //   228: iconst_5
    //   229: ldc_w 326
    //   232: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   235: iconst_0
    //   236: ireturn
    //   237: astore 11
    //   239: bipush 6
    //   241: new 106	java/lang/StringBuilder
    //   244: dup
    //   245: ldc_w 328
    //   248: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload 11
    //   253: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   256: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   259: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   262: iconst_0
    //   263: ireturn
    //   264: getstatic 38	com/unity3d/player/a:b	Landroid/hardware/camera2/CameraManager;
    //   267: aload_1
    //   268: invokestatic 76	com/unity3d/player/a:c	(Landroid/content/Context;)[Ljava/lang/String;
    //   271: iload_2
    //   272: aaload
    //   273: aload_0
    //   274: getfield 60	com/unity3d/player/a:m	Landroid/hardware/camera2/CameraDevice$StateCallback;
    //   277: aload_0
    //   278: getfield 223	com/unity3d/player/a:g	Landroid/os/Handler;
    //   281: invokevirtual 332	android/hardware/camera2/CameraManager:openCamera	(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    //   284: getstatic 48	com/unity3d/player/a:e	Ljava/util/concurrent/Semaphore;
    //   287: ldc2_w 262
    //   290: getstatic 269	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   293: invokevirtual 273	java/util/concurrent/Semaphore:tryAcquire	(JLjava/util/concurrent/TimeUnit;)Z
    //   296: ifne +44 -> 340
    //   299: iconst_5
    //   300: ldc_w 334
    //   303: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   306: iconst_0
    //   307: ireturn
    //   308: astore 12
    //   310: bipush 6
    //   312: new 106	java/lang/StringBuilder
    //   315: dup
    //   316: ldc 108
    //   318: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   321: aload 12
    //   323: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   332: getstatic 48	com/unity3d/player/a:e	Ljava/util/concurrent/Semaphore;
    //   335: invokevirtual 287	java/util/concurrent/Semaphore:release	()V
    //   338: iconst_0
    //   339: ireturn
    //   340: getstatic 48	com/unity3d/player/a:e	Ljava/util/concurrent/Semaphore;
    //   343: invokevirtual 287	java/util/concurrent/Semaphore:release	()V
    //   346: aload_0
    //   347: getfield 173	com/unity3d/player/a:d	Landroid/hardware/camera2/CameraDevice;
    //   350: ifnull +33 -> 383
    //   353: iconst_1
    //   354: ireturn
    //   355: astore 13
    //   357: bipush 6
    //   359: new 106	java/lang/StringBuilder
    //   362: dup
    //   363: ldc_w 336
    //   366: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   369: aload 13
    //   371: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   374: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   377: invokestatic 125	com/unity3d/player/g:Log	(ILjava/lang/String;)V
    //   380: goto -34 -> 346
    //   383: iconst_0
    //   384: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	385	0	this	a
    //   0	385	1	paramContext	Context
    //   0	385	2	paramInt1	int
    //   0	385	3	paramInt2	int
    //   0	385	4	paramInt3	int
    //   0	385	5	paramInt4	int
    //   69	14	6	localCameraAccessException1	CameraAccessException
    //   12	156	7	localCameraCharacteristics	CameraCharacteristics
    //   106	18	8	localStreamConfigurationMap	android.hardware.camera2.params.StreamConfigurationMap
    //   130	25	9	arrayOfSize	Size[]
    //   178	25	10	arrayOfRange	Range[]
    //   237	15	11	localInterruptedException1	InterruptedException
    //   308	14	12	localCameraAccessException2	CameraAccessException
    //   355	15	13	localInterruptedException2	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   0	14	69	android/hardware/camera2/CameraAccessException
    //   213	235	237	java/lang/InterruptedException
    //   264	284	308	android/hardware/camera2/CameraAccessException
    //   284	306	355	java/lang/InterruptedException
    //   340	346	355	java/lang/InterruptedException
  }
  
  public final void b()
  {
    g.Log(4, "Camera2: Close.");
    if (this.d != null)
    {
      d();
      h();
      this.d = null;
      this.j.close();
      this.j = null;
    }
    g();
  }
  
  public final void c()
  {
    g.Log(4, "Camera2: Start preview.");
    if (this.j == null)
    {
      this.j = ImageReader.newInstance(this.h.width(), this.h.height(), 35, 2);
      this.j.setOnImageAvailableListener(this.n, this.g);
    }
    try
    {
      CameraDevice localCameraDevice = this.d;
      Surface[] arrayOfSurface = new Surface[1];
      arrayOfSurface[0] = this.j.getSurface();
      localCameraDevice.createCaptureSession(Arrays.asList(arrayOfSurface), new CameraCaptureSession.StateCallback()
      {
        public final void onConfigureFailed(CameraCaptureSession paramAnonymousCameraCaptureSession)
        {
          g.Log(6, "Camera2: CaptureSession configuration failed.");
        }
        
        public final void onConfigured(CameraCaptureSession paramAnonymousCameraCaptureSession)
        {
          g.Log(4, "Camera2: CaptureSession is configured.");
          if (a.a(a.this) == null) {
            return;
          }
          a.a(a.this, paramAnonymousCameraCaptureSession);
          try
          {
            a.a(a.this, a.a(a.this).createCaptureRequest(1));
            a.c(a.this).addTarget(a.b(a.this).getSurface());
            a.c(a.this).set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(4));
            a.c(a.this).set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, a.d(a.this));
            a.g(a.this).setRepeatingRequest(a.c(a.this).build(), a.e(a.this), a.f(a.this));
            return;
          }
          catch (CameraAccessException localCameraAccessException)
          {
            g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
          }
        }
      }, this.g);
      return;
    }
    catch (CameraAccessException localCameraAccessException)
    {
      g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
    }
  }
  
  public final void d()
  {
    g.Log(4, "Camera2: Stop preview.");
    if (this.l != null) {}
    try
    {
      this.l.abortCaptures();
      this.l.close();
      this.l = null;
      return;
    }
    catch (CameraAccessException localCameraAccessException)
    {
      for (;;)
      {
        g.Log(6, "Camera2: CameraAccessException " + localCameraAccessException);
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.a
 * JD-Core Version:    0.7.0.1
 */