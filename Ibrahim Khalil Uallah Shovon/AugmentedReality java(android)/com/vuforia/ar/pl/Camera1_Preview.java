package com.vuforia.ar.pl;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Vector;
import org.json.JSONException;
import org.json.JSONObject;

public class Camera1_Preview
  implements Camera.PreviewCallback
{
  private static final int AR_CAMERA_DIRECTION_BACK = 268443665;
  private static final int AR_CAMERA_DIRECTION_FRONT = 268443666;
  private static final int AR_CAMERA_DIRECTION_UNKNOWN = 268443664;
  private static final int AR_CAMERA_EXPOSUREMODE_AUTO = 805314560;
  private static final int AR_CAMERA_EXPOSUREMODE_CONTINUOUSAUTO = 805322752;
  private static final int AR_CAMERA_EXPOSUREMODE_LOCKED = 805310464;
  private static final int AR_CAMERA_FOCUSMODE_AUTO = 805306400;
  private static final int AR_CAMERA_FOCUSMODE_CONTINUOUSAUTO = 805306432;
  private static final int AR_CAMERA_FOCUSMODE_FIXED = 805306880;
  private static final int AR_CAMERA_FOCUSMODE_INFINITY = 805306624;
  private static final int AR_CAMERA_FOCUSMODE_MACRO = 805306496;
  private static final int AR_CAMERA_FOCUSMODE_NORMAL = 805306384;
  private static final int AR_CAMERA_IMAGE_FORMAT_ARGB32 = 268439813;
  private static final int AR_CAMERA_IMAGE_FORMAT_ARGB8888 = 268439813;
  private static final int AR_CAMERA_IMAGE_FORMAT_BGR24 = 268439822;
  private static final int AR_CAMERA_IMAGE_FORMAT_BGR888 = 268439822;
  private static final int AR_CAMERA_IMAGE_FORMAT_BGRA32 = 268439814;
  private static final int AR_CAMERA_IMAGE_FORMAT_BGRA8888 = 268439814;
  private static final int AR_CAMERA_IMAGE_FORMAT_LUM = 268439809;
  private static final int AR_CAMERA_IMAGE_FORMAT_NV12 = 268439815;
  private static final int AR_CAMERA_IMAGE_FORMAT_NV16 = 268439816;
  private static final int AR_CAMERA_IMAGE_FORMAT_NV21 = 268439817;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGB24 = 268439811;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGB565 = 268439810;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGB888 = 268439811;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGBA32 = 268439812;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGBA4444 = 268439821;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGBA5551 = 268439820;
  private static final int AR_CAMERA_IMAGE_FORMAT_RGBA8888 = 268439812;
  private static final int AR_CAMERA_IMAGE_FORMAT_UNKNOWN = 268439808;
  private static final int AR_CAMERA_IMAGE_FORMAT_YV12 = 268439818;
  private static final int AR_CAMERA_IMAGE_FORMAT_YV16 = 268439819;
  private static final int AR_CAMERA_PARAMTYPE_BASE = 536870912;
  private static final int AR_CAMERA_PARAMTYPE_BRIGHTNESSRANGE = 537133056;
  private static final int AR_CAMERA_PARAMTYPE_BRIGHTNESSVALUE = 537001984;
  private static final int AR_CAMERA_PARAMTYPE_CONTRASTRANGE = 537919488;
  private static final int AR_CAMERA_PARAMTYPE_CONTRASTVALUE = 537395200;
  private static final int AR_CAMERA_PARAMTYPE_EXPOSUREMODE = 536870944;
  private static final int AR_CAMERA_PARAMTYPE_EXPOSURETIME = 536871168;
  private static final int AR_CAMERA_PARAMTYPE_EXPOSURETIMERANGE = 536871424;
  private static final int AR_CAMERA_PARAMTYPE_EXPOSUREVALUE = 536871936;
  private static final int AR_CAMERA_PARAMTYPE_EXPOSUREVALUERANGE = 536872960;
  private static final int AR_CAMERA_PARAMTYPE_FOCUSMODE = 536870914;
  private static final int AR_CAMERA_PARAMTYPE_FOCUSRANGE = 536870920;
  private static final int AR_CAMERA_PARAMTYPE_FOCUSREGION = 536870928;
  private static final int AR_CAMERA_PARAMTYPE_FOCUSVALUE = 536870916;
  private static final int AR_CAMERA_PARAMTYPE_ISO = 536870976;
  private static final int AR_CAMERA_PARAMTYPE_ISORANGE = 536871040;
  private static final int AR_CAMERA_PARAMTYPE_LENS_IS_ADJUSTING = 545259520;
  private static final int AR_CAMERA_PARAMTYPE_RECORDING_HINT = 541065216;
  private static final int AR_CAMERA_PARAMTYPE_ROTATION = 538968064;
  private static final int AR_CAMERA_PARAMTYPE_TORCHMODE = 536870913;
  private static final int AR_CAMERA_PARAMTYPE_VIDEO_STABILIZATION = 553648128;
  private static final int AR_CAMERA_PARAMTYPE_WHITEBALANCEMODE = 536875008;
  private static final int AR_CAMERA_PARAMTYPE_WHITEBALANCERANGE = 536887296;
  private static final int AR_CAMERA_PARAMTYPE_WHITEBALANCEVALUE = 536879104;
  private static final int AR_CAMERA_PARAMTYPE_ZOOMRANGE = 536936448;
  private static final int AR_CAMERA_PARAMTYPE_ZOOMVALUE = 536903680;
  private static final int AR_CAMERA_PARAMVALUE_BASE = 805306368;
  private static final int AR_CAMERA_STATUS_CAPTURE_RUNNING = 268443651;
  private static final int AR_CAMERA_STATUS_OPENED = 268443650;
  private static final int AR_CAMERA_STATUS_UNINITIALIZED = 268443649;
  private static final int AR_CAMERA_STATUS_UNKNOWN = 268443648;
  private static final int AR_CAMERA_TORCHMODE_AUTO = 805306372;
  private static final int AR_CAMERA_TORCHMODE_CONTINUOUSAUTO = 805306376;
  private static final int AR_CAMERA_TORCHMODE_OFF = 805306369;
  private static final int AR_CAMERA_TORCHMODE_ON = 805306370;
  private static final int AR_CAMERA_TYPE_MONO = 268447761;
  private static final int AR_CAMERA_TYPE_STEREO = 268447762;
  private static final int AR_CAMERA_TYPE_UNKNOWN = 268447760;
  private static final int AR_CAMERA_WHITEBALANCEMODE_AUTO = 807403520;
  private static final int AR_CAMERA_WHITEBALANCEMODE_CONTINUOUSAUTO = 809500672;
  private static final int AR_CAMERA_WHITEBALANCEMODE_LOCKED = 806354944;
  private static final int CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_FRAMERATES = 4;
  private static final int CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_IMAGEFORMATS = 5;
  private static final int CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_IMAGESIZES = 3;
  private static final int CAMERA_CAPSINFO_VALUE_SUPPORTED_PARAMVALUES = 2;
  private static final int CAMERA_CAPSINFO_VALUE_SUPPORTED_QUERYABLE_PARAMS = 0;
  private static final int CAMERA_CAPSINFO_VALUE_SUPPORTED_SETTABLE_PARAMS = 1;
  private static final int CAMERA_CAPTUREINFO_VALUE_FORMAT = 2;
  private static final int CAMERA_CAPTUREINFO_VALUE_FRAMERATE = 3;
  private static final int CAMERA_CAPTUREINFO_VALUE_HEIGHT = 1;
  private static final int CAMERA_CAPTUREINFO_VALUE_PREVIEWSURFACEENABLED = 4;
  private static final int CAMERA_CAPTUREINFO_VALUE_WIDTH = 0;
  private static final int[] CAMERA_IMAGE_FORMAT_CONVERSIONTABLE = { 16, 268439816, 17, 268439817, 4, 268439810, 842094169, 268439818 };
  private static boolean CONVERT_FORMAT_TO_ANDROID = false;
  private static boolean CONVERT_FORMAT_TO_PL = true;
  private static final String FOCUS_MODE_NORMAL = "normal";
  private static final String MODULENAME = "Camera1_Preview";
  private static final int NUM_CAPTURE_BUFFERS = 2;
  private static final int NUM_CAPTURE_BUFFERS_TO_ADD = 2;
  private static final int NUM_MAX_CAMERAOPEN_RETRY = 10;
  private static final String SAMSUNG_PARAM_FAST_FPS_MODE = "fast-fps-mode";
  private static final String SAMSUNG_PARAM_VRMODE = "vrmode";
  private static final String SAMSUNG_PARAM_VRMODE_SUPPORTED = "vrmode-supported";
  private static final int TIME_CAMERAOPEN_RETRY_DELAY_MS = 250;
  private static final int _NUM_CAMERA_CAPSINFO_VALUE_ = 6;
  private static final int _NUM_CAMERA_CAPTUREINFO_VALUE_ = 5;
  private Vector<CameraCacheInfo> cameraCacheInfo = null;
  private HashMap<Camera, Integer> cameraCacheInfoIndexCache = null;
  private SurfaceManager surfaceManager = null;
  
  private boolean checkPermission()
  {
    try
    {
      Activity localActivity = SystemTools.getActivityFromNative();
      if (localActivity == null) {
        return false;
      }
      int i = localActivity.getPackageManager().checkPermission("android.permission.CAMERA", localActivity.getPackageName());
      if (i == 0) {
        return true;
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  private boolean checkSamsungHighFPS(CameraCacheInfo paramCameraCacheInfo)
  {
    Camera.Parameters localParameters1 = getCameraParameters(paramCameraCacheInfo.camera);
    if (localParameters1 == null)
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    if (("true".equalsIgnoreCase(localParameters1.get("vrmode-supported"))) && (paramCameraCacheInfo.requestWidth > 0) && (paramCameraCacheInfo.requestHeight > 0) && (localParameters1.get("fast-fps-mode") != null) && (localParameters1.getInt("fast-fps-mode") != 0) && ((paramCameraCacheInfo.requestWidth != localParameters1.getPreviewSize().width) || (paramCameraCacheInfo.requestHeight != localParameters1.getPreviewSize().height)))
    {
      DebugLog.LOGW("Camera1_Preview", "Detected Samsung high fps camera driver bug.");
      DebugLog.LOGW("Camera1_Preview", "Preview size doesn't match request; width " + paramCameraCacheInfo.requestWidth + "!=" + localParameters1.getPreviewSize().width + " or height " + paramCameraCacheInfo.requestHeight + "!=" + localParameters1.getPreviewSize().height);
      setCameraPreviewFps(30, localParameters1);
      localParameters1.setPreviewSize(paramCameraCacheInfo.requestWidth, paramCameraCacheInfo.requestHeight);
      try
      {
        paramCameraCacheInfo.camera.setParameters(localParameters1);
        Camera.Parameters localParameters2 = getCameraParameters(paramCameraCacheInfo.camera);
        if ((paramCameraCacheInfo.requestWidth != localParameters2.getPreviewSize().width) || (paramCameraCacheInfo.requestHeight != localParameters2.getPreviewSize().height))
        {
          DebugLog.LOGE("Camera1_Preview", "Unable to workaround Samsung high fps camera driver bug.");
          DebugLog.LOGE("Camera1_Preview", "Preview size doesn't match request; width " + paramCameraCacheInfo.requestWidth + "!=" + localParameters2.getPreviewSize().width + " or height " + paramCameraCacheInfo.requestHeight + "!=" + localParameters2.getPreviewSize().height);
          return false;
        }
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return false;
      }
    }
    return true;
  }
  
  private CameraCacheInfo getCameraCacheInfo(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cameraCacheInfo.size())) {
      return null;
    }
    return (CameraCacheInfo)this.cameraCacheInfo.get(paramInt);
  }
  
  private int getCameraDeviceIndex(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    int j = 0;
    if ((paramInt2 == 268447760) || (SystemTools.checkMinimumApiLevel(9)))
    {
      int k;
      switch (paramInt3)
      {
      default: 
        SystemTools.setSystemErrorCode(2);
        return -1;
      case 268443664: 
        i = -1;
      case 268443666: 
        k = Camera.getNumberOfCameras();
      }
      label121:
      for (;;)
      {
        if (j >= k) {
          break label127;
        }
        Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
        try
        {
          Camera.getCameraInfo(j, localCameraInfo);
          if (((i >= 0) && (i != localCameraInfo.facing)) || ((paramInt1 >= 0) && (paramInt1 != j))) {
            break label121;
          }
          return j;
        }
        catch (Exception localException)
        {
          j++;
        }
        i = 0;
        break;
      }
      label127:
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (paramInt3 == 268443666)
    {
      SystemTools.setSystemErrorCode(2);
      return -1;
    }
    if (paramInt1 >= i)
    {
      SystemTools.setSystemErrorCode(2);
      return -1;
    }
    return 0;
  }
  
  private Camera.Parameters getCameraParameters(Camera paramCamera)
  {
    try
    {
      Camera.Parameters localParameters = paramCamera.getParameters();
      return localParameters;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private native void newFrameAvailable(long paramLong1, int paramInt1, int paramInt2, int paramInt3, int paramInt4, byte[] paramArrayOfByte, long paramLong2);
  
  private void setCameraCapsBit(CameraCacheInfo paramCameraCacheInfo, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    int j;
    for (int i = 805306368;; i = 536870912)
    {
      j = (int)(Math.log(paramInt2 & (i ^ 0xFFFFFFFF)) / Math.log(2.0D));
      if (!paramBoolean) {
        break;
      }
      int[] arrayOfInt2 = paramCameraCacheInfo.caps;
      arrayOfInt2[paramInt1] |= 1 << j;
      return;
    }
    int[] arrayOfInt1 = paramCameraCacheInfo.caps;
    arrayOfInt1[paramInt1] &= (0xFFFFFFFF ^ 1 << j);
  }
  
  /* Error */
  private boolean setCameraCaptureParams(CameraCacheInfo paramCameraCacheInfo, Camera.Parameters paramParameters, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnonnull +8 -> 9
    //   4: aload 4
    //   6: ifnull +61 -> 67
    //   9: aload 4
    //   11: ifnull +62 -> 73
    //   14: aload 4
    //   16: iconst_0
    //   17: iaload
    //   18: istore 5
    //   20: aload_1
    //   21: iload 5
    //   23: putfield 406	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideWidth	I
    //   26: aload 4
    //   28: ifnull +53 -> 81
    //   31: aload 4
    //   33: iconst_1
    //   34: iaload
    //   35: istore 6
    //   37: aload_1
    //   38: iload 6
    //   40: putfield 409	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideHeight	I
    //   43: aload 4
    //   45: ifnull +44 -> 89
    //   48: aload 4
    //   50: iconst_2
    //   51: iaload
    //   52: istore 7
    //   54: aload_1
    //   55: aload_0
    //   56: iload 7
    //   58: getstatic 212	com/vuforia/ar/pl/Camera1_Preview:CONVERT_FORMAT_TO_ANDROID	Z
    //   61: invokespecial 413	com/vuforia/ar/pl/Camera1_Preview:translateImageFormat	(IZ)I
    //   64: putfield 416	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideFormatAndroid	I
    //   67: aload_3
    //   68: ifnonnull +29 -> 97
    //   71: iconst_1
    //   72: ireturn
    //   73: aload_3
    //   74: iconst_0
    //   75: iaload
    //   76: istore 5
    //   78: goto -58 -> 20
    //   81: aload_3
    //   82: iconst_1
    //   83: iaload
    //   84: istore 6
    //   86: goto -49 -> 37
    //   89: aload_3
    //   90: iconst_2
    //   91: iaload
    //   92: istore 7
    //   94: goto -40 -> 54
    //   97: aload_1
    //   98: aload_3
    //   99: iconst_0
    //   100: iaload
    //   101: putfield 289	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestWidth	I
    //   104: aload_1
    //   105: aload_3
    //   106: iconst_1
    //   107: iaload
    //   108: putfield 292	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestHeight	I
    //   111: aload_1
    //   112: aload_0
    //   113: aload_3
    //   114: iconst_2
    //   115: iaload
    //   116: getstatic 212	com/vuforia/ar/pl/Camera1_Preview:CONVERT_FORMAT_TO_ANDROID	Z
    //   119: invokespecial 413	com/vuforia/ar/pl/Camera1_Preview:translateImageFormat	(IZ)I
    //   122: putfield 419	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestFormatAndroid	I
    //   125: aload_3
    //   126: iconst_3
    //   127: iaload
    //   128: istore 8
    //   130: aload_1
    //   131: getfield 289	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestWidth	I
    //   134: ifle +22 -> 156
    //   137: aload_1
    //   138: getfield 292	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestHeight	I
    //   141: ifle +15 -> 156
    //   144: aload_2
    //   145: aload_1
    //   146: getfield 289	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestWidth	I
    //   149: aload_1
    //   150: getfield 292	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestHeight	I
    //   153: invokevirtual 343	android/hardware/Camera$Parameters:setPreviewSize	(II)V
    //   156: iload 8
    //   158: ifle +27 -> 185
    //   161: bipush 8
    //   163: invokestatic 369	com/vuforia/ar/pl/SystemTools:checkMinimumApiLevel	(I)Z
    //   166: ifeq +81 -> 247
    //   169: aload_0
    //   170: iload 8
    //   172: aload_2
    //   173: invokespecial 339	com/vuforia/ar/pl/Camera1_Preview:setCameraPreviewFps	(ILandroid/hardware/Camera$Parameters;)Z
    //   176: ifne +9 -> 185
    //   179: aload_2
    //   180: iload 8
    //   182: invokevirtual 422	android/hardware/Camera$Parameters:setPreviewFrameRate	(I)V
    //   185: aload_1
    //   186: getfield 419	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestFormatAndroid	I
    //   189: ifeq +11 -> 200
    //   192: aload_2
    //   193: aload_1
    //   194: getfield 419	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestFormatAndroid	I
    //   197: invokevirtual 425	android/hardware/Camera$Parameters:setPreviewFormat	(I)V
    //   200: aload_3
    //   201: iconst_4
    //   202: iaload
    //   203: ifle +57 -> 260
    //   206: iconst_1
    //   207: istore 10
    //   209: iload 10
    //   211: ifeq +34 -> 245
    //   214: bipush 11
    //   216: invokestatic 369	com/vuforia/ar/pl/SystemTools:checkMinimumApiLevel	(I)Z
    //   219: ifeq +51 -> 270
    //   222: aload_1
    //   223: new 427	android/graphics/SurfaceTexture
    //   226: dup
    //   227: iconst_m1
    //   228: invokespecial 429	android/graphics/SurfaceTexture:<init>	(I)V
    //   231: putfield 433	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:surfaceTexture	Landroid/graphics/SurfaceTexture;
    //   234: aload_1
    //   235: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   238: aload_1
    //   239: getfield 433	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:surfaceTexture	Landroid/graphics/SurfaceTexture;
    //   242: invokevirtual 437	android/hardware/Camera:setPreviewTexture	(Landroid/graphics/SurfaceTexture;)V
    //   245: iconst_1
    //   246: ireturn
    //   247: aload_2
    //   248: iload 8
    //   250: invokevirtual 422	android/hardware/Camera$Parameters:setPreviewFrameRate	(I)V
    //   253: goto -68 -> 185
    //   256: astore 9
    //   258: iconst_0
    //   259: ireturn
    //   260: iconst_0
    //   261: istore 10
    //   263: goto -54 -> 209
    //   266: astore 11
    //   268: iconst_0
    //   269: ireturn
    //   270: aload_0
    //   271: getfield 217	com/vuforia/ar/pl/Camera1_Preview:surfaceManager	Lcom/vuforia/ar/pl/SurfaceManager;
    //   274: ifnull +16 -> 290
    //   277: aload_0
    //   278: getfield 217	com/vuforia/ar/pl/Camera1_Preview:surfaceManager	Lcom/vuforia/ar/pl/SurfaceManager;
    //   281: aload_1
    //   282: invokevirtual 442	com/vuforia/ar/pl/SurfaceManager:addCameraSurface	(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z
    //   285: ifne -40 -> 245
    //   288: iconst_0
    //   289: ireturn
    //   290: iconst_0
    //   291: ireturn
    //   292: astore 12
    //   294: goto -49 -> 245
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	297	0	this	Camera1_Preview
    //   0	297	1	paramCameraCacheInfo	CameraCacheInfo
    //   0	297	2	paramParameters	Camera.Parameters
    //   0	297	3	paramArrayOfInt1	int[]
    //   0	297	4	paramArrayOfInt2	int[]
    //   18	59	5	i	int
    //   35	50	6	j	int
    //   52	41	7	k	int
    //   128	121	8	m	int
    //   256	1	9	localException1	Exception
    //   207	55	10	n	int
    //   266	1	11	localException2	Exception
    //   292	1	12	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   130	156	256	java/lang/Exception
    //   161	185	256	java/lang/Exception
    //   185	200	256	java/lang/Exception
    //   247	253	256	java/lang/Exception
    //   222	234	266	java/lang/Exception
    //   234	245	292	java/lang/Exception
  }
  
  private boolean setCameraPreviewFps(int paramInt, Camera.Parameters paramParameters)
  {
    List localList = paramParameters.getSupportedPreviewFpsRange();
    int i = paramInt * 1000;
    Object localObject1 = null;
    label197:
    Object localObject2;
    if (((paramInt == 60) || (paramInt == 120)) && ("true".equalsIgnoreCase(paramParameters.get("vrmode-supported"))))
    {
      localObject1 = new int[2];
      paramParameters.set("vrmode", 1);
      paramParameters.setRecordingHint(true);
      paramParameters.set("focus-mode", "continuous-video");
      if (paramInt == 60)
      {
        paramParameters.set("fast-fps-mode", 1);
        localObject1[0] = 60000;
        localObject1[1] = 60000;
      }
      if (paramInt == 120)
      {
        paramParameters.set("fast-fps-mode", 2);
        localObject1[0] = 120000;
        localObject1[1] = 120000;
      }
      if (localObject1 != null)
      {
        paramParameters.setPreviewFpsRange(localObject1[0], localObject1[1]);
        return true;
      }
    }
    else
    {
      if (("true".equalsIgnoreCase(paramParameters.get("vrmode-supported"))) && (paramParameters.get("fast-fps-mode") != null) && (paramParameters.getInt("fast-fps-mode") != 0))
      {
        paramParameters.set("vrmode", 0);
        paramParameters.set("fast-fps-mode", 0);
      }
      Iterator localIterator = localList.iterator();
      if (localIterator.hasNext())
      {
        localObject2 = (int[])localIterator.next();
        if ((localObject2[0] != i) || (localObject2[1] - localObject2[0] >= 2147483647)) {
          break label252;
        }
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      break label197;
      break;
      return false;
      label252:
      localObject2 = localObject1;
    }
  }
  
  private boolean setCustomCameraParams(Camera.Parameters paramParameters, String paramString)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        localJSONObject = new JSONObject(paramString);
        localIterator = localJSONObject.keys();
      }
      catch (JSONException localJSONException2)
      {
        try
        {
          JSONObject localJSONObject;
          Iterator localIterator;
          localObject = localJSONObject.get(str);
          if (localObject.getClass() != String.class) {
            break label78;
          }
          paramParameters.set(str, (String)localObject);
        }
        catch (JSONException localJSONException1)
        {
          return false;
        }
        localJSONException2 = localJSONException2;
        return false;
      }
      if (!localIterator.hasNext()) {
        break label108;
      }
      String str = (String)localIterator.next();
      label78:
      if (localObject.getClass() != Integer.class) {
        break;
      }
      paramParameters.set(str, ((Integer)localObject).intValue());
    }
    return false;
    label108:
    return true;
  }
  
  /* Error */
  private boolean setupPreviewBuffer(CameraCacheInfo paramCameraCacheInfo)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: aload_1
    //   4: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   7: invokespecial 268	com/vuforia/ar/pl/Camera1_Preview:getCameraParameters	(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnonnull +5 -> 17
    //   15: iconst_0
    //   16: ireturn
    //   17: aload_1
    //   18: getfield 289	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestWidth	I
    //   21: aload_1
    //   22: getfield 406	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideWidth	I
    //   25: if_icmpne +137 -> 162
    //   28: aload_3
    //   29: invokevirtual 300	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   32: getfield 305	android/hardware/Camera$Size:width	I
    //   35: istore 5
    //   37: aload_1
    //   38: iload 5
    //   40: putfield 510	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferWidth	I
    //   43: aload_1
    //   44: getfield 292	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestHeight	I
    //   47: aload_1
    //   48: getfield 409	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideHeight	I
    //   51: if_icmpne +120 -> 171
    //   54: aload_3
    //   55: invokevirtual 300	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   58: getfield 308	android/hardware/Camera$Size:height	I
    //   61: istore 6
    //   63: aload_1
    //   64: iload 6
    //   66: putfield 513	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferHeight	I
    //   69: aload_1
    //   70: getfield 419	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestFormatAndroid	I
    //   73: aload_1
    //   74: getfield 416	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideFormatAndroid	I
    //   77: if_icmpne +103 -> 180
    //   80: aload_3
    //   81: invokevirtual 516	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   84: istore 7
    //   86: aload_1
    //   87: aload_0
    //   88: iload 7
    //   90: getstatic 210	com/vuforia/ar/pl/Camera1_Preview:CONVERT_FORMAT_TO_PL	Z
    //   93: invokespecial 413	com/vuforia/ar/pl/Camera1_Preview:translateImageFormat	(IZ)I
    //   96: putfield 519	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferFormatPL	I
    //   99: new 521	android/graphics/PixelFormat
    //   102: dup
    //   103: invokespecial 522	android/graphics/PixelFormat:<init>	()V
    //   106: astore 8
    //   108: iload 7
    //   110: aload 8
    //   112: invokestatic 526	android/graphics/PixelFormat:getPixelFormatInfo	(ILandroid/graphics/PixelFormat;)V
    //   115: aload 8
    //   117: getfield 529	android/graphics/PixelFormat:bitsPerPixel	I
    //   120: istore 10
    //   122: sipush 4096
    //   125: iload 10
    //   127: aload_1
    //   128: getfield 510	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferWidth	I
    //   131: aload_1
    //   132: getfield 513	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferHeight	I
    //   135: imul
    //   136: imul
    //   137: bipush 8
    //   139: idiv
    //   140: iadd
    //   141: istore 11
    //   143: iload 11
    //   145: aload_1
    //   146: getfield 532	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferSize	I
    //   149: if_icmpgt +61 -> 210
    //   152: aload_1
    //   153: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   156: aload_0
    //   157: invokevirtual 536	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   160: iconst_1
    //   161: ireturn
    //   162: aload_1
    //   163: getfield 406	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideWidth	I
    //   166: istore 5
    //   168: goto -131 -> 37
    //   171: aload_1
    //   172: getfield 409	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideHeight	I
    //   175: istore 6
    //   177: goto -114 -> 63
    //   180: aload_1
    //   181: getfield 416	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideFormatAndroid	I
    //   184: istore 7
    //   186: goto -100 -> 86
    //   189: astore 4
    //   191: iconst_0
    //   192: ireturn
    //   193: astore 9
    //   195: aload_0
    //   196: iload 7
    //   198: invokevirtual 540	com/vuforia/ar/pl/Camera1_Preview:getBitsPerPixel	(I)I
    //   201: istore 10
    //   203: iload 10
    //   205: ifne -83 -> 122
    //   208: iconst_0
    //   209: ireturn
    //   210: aload_1
    //   211: iconst_2
    //   212: anewarray 542	[B
    //   215: putfield 546	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:buffer	[[B
    //   218: iload_2
    //   219: iconst_2
    //   220: if_icmpge +37 -> 257
    //   223: aload_1
    //   224: getfield 546	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:buffer	[[B
    //   227: iload_2
    //   228: iload 11
    //   230: newarray byte
    //   232: aastore
    //   233: iload_2
    //   234: iconst_2
    //   235: if_icmpge +16 -> 251
    //   238: aload_1
    //   239: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   242: aload_1
    //   243: getfield 546	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:buffer	[[B
    //   246: iload_2
    //   247: aaload
    //   248: invokevirtual 550	android/hardware/Camera:addCallbackBuffer	([B)V
    //   251: iinc 2 1
    //   254: goto -36 -> 218
    //   257: aload_1
    //   258: iload 11
    //   260: putfield 532	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferSize	I
    //   263: aload_1
    //   264: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   267: aload_0
    //   268: invokevirtual 536	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   271: invokestatic 555	java/lang/System:gc	()V
    //   274: iconst_1
    //   275: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	Camera1_Preview
    //   0	276	1	paramCameraCacheInfo	CameraCacheInfo
    //   1	251	2	i	int
    //   10	71	3	localParameters	Camera.Parameters
    //   189	1	4	localException1	Exception
    //   35	132	5	j	int
    //   61	115	6	k	int
    //   84	113	7	m	int
    //   106	10	8	localPixelFormat	android.graphics.PixelFormat
    //   193	1	9	localException2	Exception
    //   120	84	10	n	int
    //   141	118	11	i1	int
    // Exception table:
    //   from	to	target	type
    //   17	37	189	java/lang/Exception
    //   37	63	189	java/lang/Exception
    //   63	86	189	java/lang/Exception
    //   86	99	189	java/lang/Exception
    //   162	168	189	java/lang/Exception
    //   171	177	189	java/lang/Exception
    //   180	186	189	java/lang/Exception
    //   99	122	193	java/lang/Exception
  }
  
  private int translateImageFormat(int paramInt, boolean paramBoolean)
  {
    for (int i = 0; i < CAMERA_IMAGE_FORMAT_CONVERSIONTABLE.length / 2; i++)
    {
      int k;
      if (paramBoolean == CONVERT_FORMAT_TO_PL) {
        k = CAMERA_IMAGE_FORMAT_CONVERSIONTABLE[(i * 2)];
      }
      while (paramInt == k) {
        if (paramBoolean == CONVERT_FORMAT_TO_PL)
        {
          return CAMERA_IMAGE_FORMAT_CONVERSIONTABLE[(1 + i * 2)];
          k = CAMERA_IMAGE_FORMAT_CONVERSIONTABLE[(1 + i * 2)];
        }
        else
        {
          return CAMERA_IMAGE_FORMAT_CONVERSIONTABLE[(i * 2)];
        }
      }
    }
    boolean bool = CONVERT_FORMAT_TO_PL;
    int j = 0;
    if (paramBoolean == bool) {
      j = 268439808;
    }
    return j;
  }
  
  public boolean close(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    this.cameraCacheInfoIndexCache.remove(localCameraCacheInfo.camera);
    try
    {
      localCameraCacheInfo.camera.release();
      bool = true;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    localCameraCacheInfo.camera = null;
    localCameraCacheInfo.buffer = ((byte[][])null);
    localCameraCacheInfo.status = 268443649;
    System.gc();
    return bool;
  }
  
  int getBitsPerPixel(int paramInt)
  {
    int i = 16;
    switch (paramInt)
    {
    default: 
      i = 0;
    case 4: 
    case 16: 
      return i;
    case 17: 
      return 12;
    }
    return 12;
  }
  
  public int[] getCameraCapabilities(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    if (localCameraCacheInfo.caps != null) {
      return localCameraCacheInfo.caps;
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    List localList1 = localParameters.getSupportedPreviewSizes();
    List localList2 = localParameters.getSupportedPreviewFrameRates();
    List localList3 = localParameters.getSupportedPreviewFormats();
    List localList4 = localParameters.getSupportedFlashModes();
    List localList5 = localParameters.getSupportedFocusModes();
    int i;
    int j;
    label106:
    int k;
    label120:
    boolean bool1;
    label181:
    boolean bool2;
    label270:
    boolean bool3;
    label298:
    boolean bool4;
    if (localList1 != null)
    {
      i = localList1.size();
      if (localList2 == null) {
        break label716;
      }
      j = localList2.size();
      if (localList3 == null) {
        break label722;
      }
      k = localList3.size();
      localCameraCacheInfo.caps = new int[k + (j + (6 + i * 2))];
      localCameraCacheInfo.caps[0] = 536870912;
      if (localList4 == null) {
        break label734;
      }
      if ((!localList4.contains("torch")) && (!localList4.contains("on"))) {
        break label728;
      }
      bool1 = true;
      setCameraCapsBit(localCameraCacheInfo, 0, 536870913, bool1);
      setCameraCapsBit(localCameraCacheInfo, 0, 536870914, true);
      setCameraCapsBit(localCameraCacheInfo, 0, 536870916, SystemTools.checkMinimumApiLevel(8));
      setCameraCapsBit(localCameraCacheInfo, 0, 536870928, SystemTools.checkMinimumApiLevel(14));
      setCameraCapsBit(localCameraCacheInfo, 0, 536871936, SystemTools.checkMinimumApiLevel(8));
      setCameraCapsBit(localCameraCacheInfo, 0, 536872960, SystemTools.checkMinimumApiLevel(8));
      if ((!SystemTools.checkMinimumApiLevel(8)) || (!localParameters.isZoomSupported())) {
        break label740;
      }
      bool2 = true;
      setCameraCapsBit(localCameraCacheInfo, 0, 536903680, bool2);
      if ((!SystemTools.checkMinimumApiLevel(8)) || (!localParameters.isZoomSupported())) {
        break label746;
      }
      bool3 = true;
      setCameraCapsBit(localCameraCacheInfo, 0, 536936448, bool3);
      setCameraCapsBit(localCameraCacheInfo, 0, 553648128, SystemTools.checkMinimumApiLevel(15));
      localCameraCacheInfo.caps[1] = 536870912;
      if (localList4 == null) {
        break label758;
      }
      if ((!localList4.contains("torch")) && (!localList4.contains("on"))) {
        break label752;
      }
      bool4 = true;
      label363:
      setCameraCapsBit(localCameraCacheInfo, 1, 536870913, bool4);
      setCameraCapsBit(localCameraCacheInfo, 1, 536870914, true);
      setCameraCapsBit(localCameraCacheInfo, 1, 536870928, SystemTools.checkMinimumApiLevel(14));
      setCameraCapsBit(localCameraCacheInfo, 1, 536871936, SystemTools.checkMinimumApiLevel(8));
      if ((!SystemTools.checkMinimumApiLevel(8)) || (!localParameters.isZoomSupported())) {
        break label764;
      }
    }
    int i4;
    label716:
    label722:
    label728:
    label734:
    label740:
    label746:
    label752:
    label758:
    label764:
    for (boolean bool5 = true;; bool5 = false)
    {
      setCameraCapsBit(localCameraCacheInfo, 1, 536903680, bool5);
      setCameraCapsBit(localCameraCacheInfo, 1, 553648128, SystemTools.checkMinimumApiLevel(15));
      localCameraCacheInfo.caps[2] = 805306368;
      if ((localList4 != null) && ((localList4.contains("torch")) || (localList4.contains("on"))))
      {
        setCameraCapsBit(localCameraCacheInfo, 2, 805306369, true);
        setCameraCapsBit(localCameraCacheInfo, 2, 805306370, true);
      }
      if (localList5 != null)
      {
        setCameraCapsBit(localCameraCacheInfo, 2, 805306384, true);
        setCameraCapsBit(localCameraCacheInfo, 2, 805306400, localList5.contains("auto"));
        setCameraCapsBit(localCameraCacheInfo, 2, 805306432, localList5.contains("continuous-video"));
        setCameraCapsBit(localCameraCacheInfo, 2, 805306496, localList5.contains("macro"));
        setCameraCapsBit(localCameraCacheInfo, 2, 805306624, localList5.contains("infinity"));
        setCameraCapsBit(localCameraCacheInfo, 2, 805306880, localList5.contains("fixed"));
      }
      localCameraCacheInfo.caps[3] = i;
      localCameraCacheInfo.caps[4] = j;
      localCameraCacheInfo.caps[5] = k;
      m = 6;
      if (i <= 0) {
        break label774;
      }
      ListIterator localListIterator3 = localList1.listIterator();
      for (i4 = m; localListIterator3.hasNext(); i4 += 2)
      {
        Camera.Size localSize = (Camera.Size)localListIterator3.next();
        localCameraCacheInfo.caps[i4] = localSize.width;
        localCameraCacheInfo.caps[(i4 + 1)] = localSize.height;
      }
      i = 0;
      break;
      j = 0;
      break label106;
      k = 0;
      break label120;
      bool1 = false;
      break label181;
      bool1 = false;
      break label181;
      bool2 = false;
      break label270;
      bool3 = false;
      break label298;
      bool4 = false;
      break label363;
      bool4 = false;
      break label363;
    }
    int m = i4;
    label774:
    if (j > 0)
    {
      ListIterator localListIterator2 = localList2.listIterator();
      for (int i2 = m; localListIterator2.hasNext(); i2++)
      {
        int i3 = ((Integer)localListIterator2.next()).intValue();
        localCameraCacheInfo.caps[i2] = i3;
      }
      m = i2;
    }
    if (k > 0)
    {
      ListIterator localListIterator1 = localList3.listIterator();
      for (int n = m; localListIterator1.hasNext(); n++)
      {
        int i1 = ((Integer)localListIterator1.next()).intValue();
        localCameraCacheInfo.caps[n] = translateImageFormat(i1, true);
      }
    }
    return localCameraCacheInfo.caps;
  }
  
  public int[] getCaptureInfo(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    for (;;)
    {
      try
      {
        int[] arrayOfInt = new int[5];
        arrayOfInt[0] = localParameters.getPreviewSize().width;
        arrayOfInt[1] = localParameters.getPreviewSize().height;
        arrayOfInt[2] = translateImageFormat(localParameters.getPreviewFormat(), CONVERT_FORMAT_TO_PL);
        arrayOfInt[3] = localParameters.getPreviewFrameRate();
        if (localCameraCacheInfo.surface == null)
        {
          SurfaceTexture localSurfaceTexture = localCameraCacheInfo.surfaceTexture;
          i = 0;
          if (localSurfaceTexture == null)
          {
            arrayOfInt[4] = i;
            return arrayOfInt;
          }
        }
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      int i = 1;
    }
  }
  
  public int getDeviceID(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return -1;
    }
    return localCameraCacheInfo.deviceID;
  }
  
  public int getDirection(int paramInt)
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(9))
    {
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      try
      {
        Camera.getCameraInfo(paramInt, localCameraInfo);
        switch (localCameraInfo.facing)
        {
        default: 
          return 268443664;
        }
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return -1;
      }
      return 268443665;
      return 268443666;
    }
    return 268443665;
  }
  
  String getFlattenedParameters(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null))
    {
      SystemTools.setSystemErrorCode(4);
      return "";
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return "";
    }
    return localParameters.flatten();
  }
  
  public int getNumberOfCameras()
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(9)) {
      try
      {
        int i = Camera.getNumberOfCameras();
        return i;
      }
      catch (Exception localException2)
      {
        SystemTools.setSystemErrorCode(6);
        return -1;
      }
    }
    try
    {
      boolean bool = SystemTools.getActivityFromNative().getPackageManager().hasSystemFeature("android.hardware.camera");
      if (bool) {
        return 1;
      }
    }
    catch (Exception localException1)
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    return 0;
  }
  
  public int getOrientation(int paramInt)
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(9))
    {
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      try
      {
        Camera.getCameraInfo(paramInt, localCameraInfo);
        return localCameraInfo.orientation;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return -1;
      }
    }
    SystemTools.setSystemErrorCode(6);
    return -1;
  }
  
  int getStatus(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return 268443648;
    }
    return localCameraCacheInfo.status;
  }
  
  Object getTypedCameraParameter(int paramInt1, int paramInt2)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt1);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null))
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    switch (paramInt2)
    {
    default: 
      return null;
    case 536870913: 
    case 536870914: 
    case 536870916: 
    case 536870920: 
      try
      {
        String str2 = localParameters.getFlashMode();
        if ((str2.equals("torch")) || (str2.equals("on"))) {
          return Integer.valueOf(805306370);
        }
        if (str2.equals("off")) {
          return Integer.valueOf(805306369);
        }
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      catch (Exception localException)
      {
        String str1;
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      str1 = localParameters.getFocusMode();
      if (str1.equals("auto")) {
        if (!localCameraCacheInfo.isAutoFocusing) {
          break label834;
        }
      }
      break;
    }
    label834:
    for (int i = 805306400;; i = 805306384)
    {
      return Integer.valueOf(i);
      if (str1.equals("continuous-video")) {
        return Integer.valueOf(805306432);
      }
      if (str1.equals("infinity")) {
        return Integer.valueOf(805306624);
      }
      if (str1.equals("macro")) {
        return Integer.valueOf(805306496);
      }
      if (str1.equals("fixed")) {
        return Integer.valueOf(805306880);
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (SystemTools.checkMinimumApiLevel(8)) {
        return Float.valueOf(localParameters.getFocalLength());
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (SystemTools.checkMinimumApiLevel(9))
      {
        float[] arrayOfFloat3 = new float[3];
        localParameters.getFocusDistances(arrayOfFloat3);
        float[] arrayOfFloat4 = new float[2];
        arrayOfFloat4[0] = arrayOfFloat3[0];
        arrayOfFloat4[1] = arrayOfFloat3[2];
        return arrayOfFloat4;
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if ((SystemTools.checkMinimumApiLevel(14)) && (localParameters.getMaxNumFocusAreas() > 0))
      {
        List localList = localParameters.getFocusAreas();
        if (localList.size() > 0)
        {
          Camera.Area localArea = (Camera.Area)localList.get(0);
          float[] arrayOfFloat2 = new float[5];
          arrayOfFloat2[0] = localArea.rect.left;
          arrayOfFloat2[1] = localArea.rect.top;
          arrayOfFloat2[2] = localArea.rect.right;
          arrayOfFloat2[3] = localArea.rect.bottom;
          arrayOfFloat2[4] = localArea.weight;
          return arrayOfFloat2;
        }
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      if (SystemTools.checkMinimumApiLevel(8)) {
        return Float.valueOf(localParameters.getExposureCompensationStep() * localParameters.getExposureCompensation());
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (SystemTools.checkMinimumApiLevel(8))
      {
        float[] arrayOfFloat1 = new float[2];
        arrayOfFloat1[0] = (localParameters.getExposureCompensationStep() * localParameters.getMinExposureCompensation());
        arrayOfFloat1[1] = (localParameters.getExposureCompensationStep() * localParameters.getMaxExposureCompensation());
        return arrayOfFloat1;
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      if ((SystemTools.checkMinimumApiLevel(8)) && (localParameters.isZoomSupported())) {
        return Integer.valueOf(localParameters.getZoom());
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if ((SystemTools.checkMinimumApiLevel(8)) && (localParameters.isZoomSupported()))
      {
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 0;
        arrayOfInt[1] = localParameters.getMaxZoom();
        return arrayOfInt;
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localParameters.getVideoStabilization()) {
        return Boolean.valueOf(true);
      }
      Boolean localBoolean = Boolean.valueOf(false);
      return localBoolean;
    }
  }
  
  String getUntypedCameraParameter(int paramInt, String paramString)
  {
    String str = null;
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null)) {
      SystemTools.setSystemErrorCode(4);
    }
    do
    {
      return str;
      Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
      if (localParameters == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      str = localParameters.get(paramString);
    } while (str != null);
    SystemTools.setSystemErrorCode(6);
    return str;
  }
  
  public boolean init()
  {
    this.cameraCacheInfo = new Vector();
    this.cameraCacheInfoIndexCache = new HashMap();
    return true;
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    long l = System.nanoTime();
    if (SystemTools.checkMinimumApiLevel(18)) {}
    Object localObject = this.cameraCacheInfoIndexCache.get(paramCamera);
    if (localObject == null) {
      if (!SystemTools.checkMinimumApiLevel(18)) {}
    }
    do
    {
      int i;
      CameraCacheInfo localCameraCacheInfo;
      do
      {
        return;
        i = ((Integer)localObject).intValue();
        localCameraCacheInfo = getCameraCacheInfo(i);
        if (localCameraCacheInfo != null) {
          break;
        }
      } while (!SystemTools.checkMinimumApiLevel(18));
      return;
      newFrameAvailable(localCameraCacheInfo.deviceHandle, i, localCameraCacheInfo.bufferWidth, localCameraCacheInfo.bufferHeight, localCameraCacheInfo.bufferFormatPL, paramArrayOfByte, l);
      paramCamera.addCallbackBuffer(paramArrayOfByte);
    } while (!SystemTools.checkMinimumApiLevel(18));
  }
  
  /* Error */
  public int open(long paramLong, int paramInt1, int paramInt2, int paramInt3, String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 631	com/vuforia/ar/pl/Camera1_Preview:checkPermission	()Z
    //   4: ifne +10 -> 14
    //   7: bipush 6
    //   9: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   12: iconst_m1
    //   13: ireturn
    //   14: aload_0
    //   15: iload_3
    //   16: iload 4
    //   18: iload 5
    //   20: invokespecial 760	com/vuforia/ar/pl/Camera1_Preview:getCameraDeviceIndex	(III)I
    //   23: istore 9
    //   25: iload 9
    //   27: ifge +5 -> 32
    //   30: iconst_m1
    //   31: ireturn
    //   32: aconst_null
    //   33: astore 10
    //   35: aload_0
    //   36: getfield 219	com/vuforia/ar/pl/Camera1_Preview:cameraCacheInfo	Ljava/util/Vector;
    //   39: invokevirtual 360	java/util/Vector:size	()I
    //   42: istore 11
    //   44: iconst_0
    //   45: istore 12
    //   47: iload 12
    //   49: iload 11
    //   51: if_icmpge +566 -> 617
    //   54: aload_0
    //   55: getfield 219	com/vuforia/ar/pl/Camera1_Preview:cameraCacheInfo	Ljava/util/Vector;
    //   58: iload 12
    //   60: invokevirtual 363	java/util/Vector:get	(I)Ljava/lang/Object;
    //   63: checkcast 260	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo
    //   66: astore 10
    //   68: aload 10
    //   70: getfield 628	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:deviceID	I
    //   73: iload 9
    //   75: if_icmpne +235 -> 310
    //   78: iload 12
    //   80: ifge +125 -> 205
    //   83: new 260	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo
    //   86: dup
    //   87: aload_0
    //   88: invokespecial 763	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:<init>	(Lcom/vuforia/ar/pl/Camera1_Preview;)V
    //   91: astore 13
    //   93: aload 13
    //   95: iload 9
    //   97: putfield 628	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:deviceID	I
    //   100: aload 13
    //   102: lload_1
    //   103: putfield 754	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:deviceHandle	J
    //   106: aload 13
    //   108: aconst_null
    //   109: putfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   112: aload 13
    //   114: aconst_null
    //   115: putfield 624	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:surface	Lcom/vuforia/ar/pl/CameraSurface;
    //   118: aload 13
    //   120: aconst_null
    //   121: checkcast 566	[[B
    //   124: putfield 546	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:buffer	[[B
    //   127: aload 13
    //   129: iconst_0
    //   130: putfield 406	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideWidth	I
    //   133: aload 13
    //   135: iconst_0
    //   136: putfield 289	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestWidth	I
    //   139: aload 13
    //   141: iconst_0
    //   142: putfield 510	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferWidth	I
    //   145: aload 13
    //   147: iconst_0
    //   148: putfield 409	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideHeight	I
    //   151: aload 13
    //   153: iconst_0
    //   154: putfield 292	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestHeight	I
    //   157: aload 13
    //   159: iconst_0
    //   160: putfield 513	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferHeight	I
    //   163: aload 13
    //   165: ldc 62
    //   167: putfield 519	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferFormatPL	I
    //   170: aload 13
    //   172: iconst_0
    //   173: putfield 416	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:overrideFormatAndroid	I
    //   176: aload 13
    //   178: iconst_0
    //   179: putfield 419	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:requestFormatAndroid	I
    //   182: aload 13
    //   184: aconst_null
    //   185: putfield 401	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:caps	[I
    //   188: aload 13
    //   190: ldc 126
    //   192: putfield 569	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:status	I
    //   195: aload 13
    //   197: iconst_0
    //   198: putfield 668	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:isAutoFocusing	Z
    //   201: aload 13
    //   203: astore 10
    //   205: aload 10
    //   207: iconst_0
    //   208: putfield 532	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:bufferSize	I
    //   211: bipush 10
    //   213: istore 14
    //   215: iconst_0
    //   216: istore 15
    //   218: bipush 9
    //   220: invokestatic 369	com/vuforia/ar/pl/SystemTools:checkMinimumApiLevel	(I)Z
    //   223: ifeq +93 -> 316
    //   226: aload 10
    //   228: aload 10
    //   230: getfield 628	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:deviceID	I
    //   233: invokestatic 766	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   236: putfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   239: aload 10
    //   241: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   244: astore 28
    //   246: aload 28
    //   248: ifnull +96 -> 344
    //   251: iconst_1
    //   252: istore 29
    //   254: iload 29
    //   256: istore 17
    //   258: iload 17
    //   260: ifne +19 -> 279
    //   263: iload 14
    //   265: ifle +14 -> 279
    //   268: aload_0
    //   269: monitorenter
    //   270: aload_0
    //   271: ldc2_w 767
    //   274: invokevirtual 772	java/lang/Object:wait	(J)V
    //   277: aload_0
    //   278: monitorexit
    //   279: iload 17
    //   281: ifne +14 -> 295
    //   284: iload 14
    //   286: iconst_1
    //   287: isub
    //   288: istore 25
    //   290: iload 14
    //   292: ifgt +314 -> 606
    //   295: aload 10
    //   297: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   300: ifnonnull +62 -> 362
    //   303: bipush 6
    //   305: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   308: iconst_m1
    //   309: ireturn
    //   310: iinc 12 1
    //   313: goto -266 -> 47
    //   316: aload 10
    //   318: getfield 628	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:deviceID	I
    //   321: ifne -82 -> 239
    //   324: aload 10
    //   326: invokestatic 775	android/hardware/Camera:open	()Landroid/hardware/Camera;
    //   329: putfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   332: goto -93 -> 239
    //   335: astore 16
    //   337: iload 15
    //   339: istore 17
    //   341: goto -83 -> 258
    //   344: iconst_0
    //   345: istore 29
    //   347: goto -93 -> 254
    //   350: astore 27
    //   352: aload_0
    //   353: monitorexit
    //   354: aload 27
    //   356: athrow
    //   357: astore 26
    //   359: goto -80 -> 279
    //   362: aload 7
    //   364: ifnull +9 -> 373
    //   367: aload 7
    //   369: arraylength
    //   370: ifgt +14 -> 384
    //   373: aload 8
    //   375: ifnull +61 -> 436
    //   378: aload 8
    //   380: arraylength
    //   381: ifle +55 -> 436
    //   384: iconst_1
    //   385: istore 18
    //   387: aload 6
    //   389: ifnull +53 -> 442
    //   392: aload 6
    //   394: invokevirtual 778	java/lang/String:length	()I
    //   397: ifle +45 -> 442
    //   400: iconst_1
    //   401: istore 19
    //   403: iload 18
    //   405: ifne +8 -> 413
    //   408: iload 19
    //   410: ifeq +135 -> 545
    //   413: aload_0
    //   414: aload 10
    //   416: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   419: invokespecial 268	com/vuforia/ar/pl/Camera1_Preview:getCameraParameters	(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    //   422: astore 20
    //   424: aload 20
    //   426: ifnonnull +22 -> 448
    //   429: bipush 6
    //   431: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   434: iconst_m1
    //   435: ireturn
    //   436: iconst_0
    //   437: istore 18
    //   439: goto -52 -> 387
    //   442: iconst_0
    //   443: istore 19
    //   445: goto -42 -> 403
    //   448: iload 18
    //   450: ifeq +43 -> 493
    //   453: aload 7
    //   455: ifnull +16 -> 471
    //   458: aload 7
    //   460: arraylength
    //   461: iconst_5
    //   462: if_icmpeq +9 -> 471
    //   465: iconst_2
    //   466: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   469: iconst_m1
    //   470: ireturn
    //   471: aload_0
    //   472: aload 10
    //   474: aload 20
    //   476: aload 7
    //   478: aload 8
    //   480: invokespecial 780	com/vuforia/ar/pl/Camera1_Preview:setCameraCaptureParams	(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;Landroid/hardware/Camera$Parameters;[I[I)Z
    //   483: ifne +10 -> 493
    //   486: bipush 6
    //   488: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   491: iconst_m1
    //   492: ireturn
    //   493: iload 19
    //   495: ifeq +20 -> 515
    //   498: aload_0
    //   499: aload 20
    //   501: aload 6
    //   503: invokespecial 782	com/vuforia/ar/pl/Camera1_Preview:setCustomCameraParams	(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    //   506: ifne +9 -> 515
    //   509: iconst_2
    //   510: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   513: iconst_m1
    //   514: ireturn
    //   515: aload 10
    //   517: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   520: aload 20
    //   522: invokevirtual 349	android/hardware/Camera:setParameters	(Landroid/hardware/Camera$Parameters;)V
    //   525: aload_0
    //   526: aload 10
    //   528: invokespecial 784	com/vuforia/ar/pl/Camera1_Preview:checkSamsungHighFPS	(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z
    //   531: ifne +14 -> 545
    //   534: iconst_m1
    //   535: ireturn
    //   536: astore 21
    //   538: bipush 6
    //   540: invokestatic 272	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   543: iconst_m1
    //   544: ireturn
    //   545: aload 10
    //   547: ldc 124
    //   549: putfield 569	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:status	I
    //   552: iload 12
    //   554: ifge +45 -> 599
    //   557: aload_0
    //   558: getfield 219	com/vuforia/ar/pl/Camera1_Preview:cameraCacheInfo	Ljava/util/Vector;
    //   561: aload 10
    //   563: invokevirtual 787	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   566: pop
    //   567: iconst_m1
    //   568: aload_0
    //   569: getfield 219	com/vuforia/ar/pl/Camera1_Preview:cameraCacheInfo	Ljava/util/Vector;
    //   572: invokevirtual 360	java/util/Vector:size	()I
    //   575: iadd
    //   576: istore 22
    //   578: aload_0
    //   579: getfield 221	com/vuforia/ar/pl/Camera1_Preview:cameraCacheInfoIndexCache	Ljava/util/HashMap;
    //   582: aload 10
    //   584: getfield 264	com/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo:camera	Landroid/hardware/Camera;
    //   587: iload 22
    //   589: invokestatic 660	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   592: invokevirtual 791	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   595: pop
    //   596: iload 22
    //   598: ireturn
    //   599: iload 12
    //   601: istore 22
    //   603: goto -25 -> 578
    //   606: iload 25
    //   608: istore 14
    //   610: iload 17
    //   612: istore 15
    //   614: goto -396 -> 218
    //   617: iconst_m1
    //   618: istore 12
    //   620: goto -542 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	623	0	this	Camera1_Preview
    //   0	623	1	paramLong	long
    //   0	623	3	paramInt1	int
    //   0	623	4	paramInt2	int
    //   0	623	5	paramInt3	int
    //   0	623	6	paramString	String
    //   0	623	7	paramArrayOfInt1	int[]
    //   0	623	8	paramArrayOfInt2	int[]
    //   23	73	9	i	int
    //   33	550	10	localObject1	Object
    //   42	10	11	j	int
    //   45	574	12	k	int
    //   91	111	13	localCameraCacheInfo	CameraCacheInfo
    //   213	396	14	m	int
    //   216	397	15	n	int
    //   335	1	16	localException1	Exception
    //   256	355	17	i1	int
    //   385	64	18	i2	int
    //   401	93	19	i3	int
    //   422	99	20	localParameters	Camera.Parameters
    //   536	1	21	localException2	Exception
    //   576	26	22	i4	int
    //   288	319	25	i5	int
    //   357	1	26	localException3	Exception
    //   350	5	27	localObject2	Object
    //   244	3	28	localCamera	Camera
    //   252	94	29	i6	int
    // Exception table:
    //   from	to	target	type
    //   218	239	335	java/lang/Exception
    //   239	246	335	java/lang/Exception
    //   316	332	335	java/lang/Exception
    //   270	279	350	finally
    //   352	354	350	finally
    //   268	270	357	java/lang/Exception
    //   354	357	357	java/lang/Exception
    //   515	525	536	java/lang/Exception
  }
  
  public boolean setBatchParameters(int paramInt, String paramString)
  {
    if (paramString == null) {}
    CameraCacheInfo localCameraCacheInfo;
    Camera.Parameters localParameters;
    do
    {
      return false;
      localCameraCacheInfo = getCameraCacheInfo(paramInt);
      if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null))
      {
        SystemTools.setSystemErrorCode(4);
        return false;
      }
      localParameters = getCameraParameters(localCameraCacheInfo.camera);
      if (localParameters == null)
      {
        SystemTools.setSystemErrorCode(6);
        return false;
      }
    } while (!setCustomCameraParams(localParameters, paramString));
    localCameraCacheInfo.camera.setParameters(localParameters);
    return true;
  }
  
  public boolean setCaptureInfo(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null) {
      SystemTools.setSystemErrorCode(4);
    }
    for (;;)
    {
      return false;
      if (paramArrayOfInt1.length != 5)
      {
        SystemTools.setSystemErrorCode(2);
        return false;
      }
      Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
      if (localParameters == null)
      {
        SystemTools.setSystemErrorCode(6);
        return false;
      }
      if (!setCameraCaptureParams(localCameraCacheInfo, localParameters, paramArrayOfInt1, paramArrayOfInt2))
      {
        SystemTools.setSystemErrorCode(6);
        return false;
      }
      try
      {
        localCameraCacheInfo.camera.setParameters(localParameters);
        if (checkSamsungHighFPS(localCameraCacheInfo)) {
          return true;
        }
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
      }
    }
    return false;
  }
  
  public void setSurfaceManager(SurfaceManager paramSurfaceManager)
  {
    this.surfaceManager = paramSurfaceManager;
  }
  
  boolean setTypedCameraParameter(int paramInt1, int paramInt2, Object paramObject)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt1);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null))
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    int i = 0;
    switch (paramInt2)
    {
    default: 
      return false;
    case 536870976: 
    case 541065216: 
      int m;
      for (;;)
      {
        try
        {
          String str2 = Integer.toString(((Number)paramObject).intValue());
          String str3 = localParameters.get("iso-values");
          if (str3 != null)
          {
            String[] arrayOfString = str3.split(",");
            n = 0;
            if (n < arrayOfString.length)
            {
              if (!arrayOfString[n].toLowerCase().contains(str2.toLowerCase())) {
                continue;
              }
              str2 = arrayOfString[n];
            }
          }
          localParameters.set("iso", str2);
        }
        catch (Exception localException3)
        {
          int n;
          SystemTools.setSystemErrorCode(6);
          return false;
        }
        try
        {
          localCameraCacheInfo.camera.setParameters(localParameters);
          if (i != 0) {}
          switch (paramInt2)
          {
          default: 
            return true;
          }
        }
        catch (Exception localException1)
        {
          SystemTools.setSystemErrorCode(6);
          return false;
        }
        n++;
        continue;
        m = ((Number)paramObject).intValue();
        if (!SystemTools.checkMinimumApiLevel(14)) {
          break label413;
        }
        if (m == 0) {
          break;
        }
      }
      for (boolean bool5 = true;; bool5 = false)
      {
        localParameters.setRecordingHint(bool5);
        i = 0;
        break;
      }
      label413:
      if (m == 0) {
        break;
      }
    }
    for (String str1 = "true";; str1 = "false") {
      for (;;)
      {
        localParameters.set("recording-hint", str1);
        i = 0;
        break;
        switch (((Number)paramObject).intValue())
        {
        case 805306371: 
        default: 
          SystemTools.setSystemErrorCode(3);
          return false;
        case 805306370: 
          if (localParameters.getSupportedFlashModes().contains("torch"))
          {
            localParameters.setFlashMode("torch");
            i = 0;
            break;
          }
          localParameters.setFlashMode("on");
          i = 0;
          break;
        case 805306369: 
          localParameters.setFlashMode("off");
          i = 0;
          break;
        case 805306372: 
          SystemTools.setSystemErrorCode(3);
          return false;
          localCameraCacheInfo.camera.cancelAutoFocus();
          switch (((Number)paramObject).intValue())
          {
          default: 
            SystemTools.setSystemErrorCode(3);
            return false;
          case 805306384: 
            if (localParameters.getSupportedFocusModes().contains("normal"))
            {
              localParameters.setFocusMode("normal");
              i = 0;
              break;
            }
            localParameters.setFocusMode("auto");
            i = 1;
            break;
          case 805306400: 
            localParameters.setFocusMode("auto");
            i = 1;
            break;
          case 805306432: 
            if (localParameters.getSupportedFocusModes().contains("continuous-video"))
            {
              localParameters.setFocusMode("continuous-video");
              i = 0;
              break;
            }
            SystemTools.setSystemErrorCode(6);
            return false;
          case 805306496: 
            localParameters.setFocusMode("macro");
            i = 0;
            break;
          case 805306624: 
            localParameters.setFocusMode("infinity");
            i = 0;
            break;
          case 805306880: 
            localParameters.setFocusMode("fixed");
            i = 0;
            break;
            SystemTools.setSystemErrorCode(6);
            return false;
            SystemTools.setSystemErrorCode(6);
            return false;
            if (SystemTools.checkMinimumApiLevel(14))
            {
              float[] arrayOfFloat = (float[])paramObject;
              if (arrayOfFloat.length != 5)
              {
                SystemTools.setSystemErrorCode(2);
                return false;
              }
              if ((arrayOfFloat[0] < 0.0F) || (arrayOfFloat[0] > 1.0F) || (arrayOfFloat[1] < 0.0F) || (arrayOfFloat[1] > 1.0F) || (arrayOfFloat[2] < 0.0F) || (arrayOfFloat[2] > 1.0F) || (arrayOfFloat[3] < 0.0F) || (arrayOfFloat[3] > 1.0F) || (arrayOfFloat[4] < 0.0F) || (arrayOfFloat[4] > 1.0F))
              {
                SystemTools.setSystemErrorCode(2);
                return false;
              }
              Rect localRect = new Rect(-1000 + (int)(2000.0D * arrayOfFloat[0]), -1000 + (int)(2000.0D * arrayOfFloat[1]), -1000 + (int)(2000.0D * arrayOfFloat[2]), -1000 + (int)(2000.0D * arrayOfFloat[3]));
              ArrayList localArrayList = new ArrayList();
              localArrayList.add(new Camera.Area(localRect, (int)(1000.0D * arrayOfFloat[4])));
              int k = localParameters.getMaxNumFocusAreas();
              i = 0;
              if (k <= 0) {
                break;
              }
              localParameters.setFocusAreas(localArrayList);
              i = 0;
              break;
            }
            SystemTools.setSystemErrorCode(6);
            return false;
            switch (((Number)paramObject).intValue())
            {
            default: 
              SystemTools.setSystemErrorCode(3);
              return false;
            case 805310464: 
              boolean bool4 = localParameters.isAutoExposureLockSupported();
              i = 0;
              if (!bool4) {
                break;
              }
              localParameters.setAutoExposureLock(true);
              i = 0;
              break;
            case 805322752: 
              boolean bool3 = localParameters.isAutoExposureLockSupported();
              i = 0;
              if (!bool3) {
                break;
              }
              localParameters.setAutoExposureLock(false);
              i = 0;
              break;
              if (SystemTools.checkMinimumApiLevel(8))
              {
                float f1 = ((Number)paramObject).floatValue();
                float f2 = localParameters.getExposureCompensationStep();
                if (f2 == 0.0F)
                {
                  SystemTools.setSystemErrorCode(6);
                  return false;
                }
                localParameters.setExposureCompensation(Math.round(f1 / f2));
                i = 0;
                break;
              }
              SystemTools.setSystemErrorCode(6);
              return false;
              SystemTools.setSystemErrorCode(6);
              return false;
              int j = ((Number)paramObject).intValue();
              switch (j)
              {
              default: 
                SystemTools.setSystemErrorCode(3);
                SystemTools.logSystemError("Cannot set unknown white balance mode (" + j + ")");
                return false;
              case 806354944: 
                boolean bool2 = localParameters.isAutoWhiteBalanceLockSupported();
                i = 0;
                if (!bool2) {
                  break;
                }
                localParameters.setAutoWhiteBalanceLock(true);
                i = 0;
                break;
              case 809500672: 
                boolean bool1 = localParameters.isAutoWhiteBalanceLockSupported();
                i = 0;
                if (!bool1) {
                  break;
                }
                localParameters.setAutoWhiteBalanceLock(false);
                i = 0;
                break;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                if ((SystemTools.checkMinimumApiLevel(8)) && (localParameters.isZoomSupported()))
                {
                  localParameters.setZoom(((Number)paramObject).intValue());
                  i = 0;
                  break;
                }
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                if (((Boolean)paramObject).booleanValue())
                {
                  localParameters.setVideoStabilization(true);
                  i = 0;
                  break;
                }
                localParameters.setVideoStabilization(false);
                i = 0;
                break;
                try
                {
                  localCameraCacheInfo.isAutoFocusing = true;
                  localCameraCacheInfo.camera.autoFocus(new Camera.AutoFocusCallback()
                  {
                    public void onAutoFocus(boolean paramAnonymousBoolean, Camera paramAnonymousCamera)
                    {
                      Object localObject = Camera1_Preview.this.cameraCacheInfoIndexCache.get(paramAnonymousCamera);
                      if (localObject == null) {}
                      Camera1_Preview.CameraCacheInfo localCameraCacheInfo;
                      do
                      {
                        return;
                        int i = ((Integer)localObject).intValue();
                        localCameraCacheInfo = Camera1_Preview.this.getCameraCacheInfo(i);
                      } while (localCameraCacheInfo == null);
                      localCameraCacheInfo.isAutoFocusing = false;
                    }
                  });
                }
                catch (Exception localException2)
                {
                  SystemTools.setSystemErrorCode(6);
                  return false;
                }
              }
              break;
            }
            break;
          }
          break;
        }
      }
    }
  }
  
  boolean setUntypedCameraParameter(int paramInt, String paramString1, String paramString2)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.camera == null))
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    Camera.Parameters localParameters = getCameraParameters(localCameraCacheInfo.camera);
    if (localParameters == null)
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    try
    {
      localParameters.set(paramString1, paramString2);
      localCameraCacheInfo.camera.setParameters(localParameters);
      return true;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
    }
    return false;
  }
  
  public boolean start(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    if (!setupPreviewBuffer(localCameraCacheInfo))
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    try
    {
      localCameraCacheInfo.camera.startPreview();
      localCameraCacheInfo.status = 268443651;
      return true;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
    }
    return false;
  }
  
  public boolean stop(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    try
    {
      localCameraCacheInfo.camera.stopPreview();
      localCameraCacheInfo.status = 268443650;
      return true;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
    }
    return false;
  }
  
  public class CameraCacheInfo
  {
    byte[][] buffer;
    int bufferFormatPL;
    int bufferHeight;
    int bufferSize;
    int bufferWidth;
    Camera camera;
    int[] caps;
    long deviceHandle;
    int deviceID;
    boolean isAutoFocusing;
    int overrideFormatAndroid;
    int overrideHeight;
    int overrideWidth;
    int requestFormatAndroid;
    int requestHeight;
    int requestWidth;
    int status;
    CameraSurface surface;
    SurfaceTexture surfaceTexture;
    
    public CameraCacheInfo() {}
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.Camera1_Preview
 * JD-Core Version:    0.7.0.1
 */