package com.vuforia.ar.pl;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCaptureSession.CaptureCallback;
import android.hardware.camera2.CameraCaptureSession.StateCallback;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraCharacteristics.Key;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraDevice.StateCallback;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureRequest.Builder;
import android.hardware.camera2.CaptureRequest.Key;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.CaptureResult.Key;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.Image.Plane;
import android.media.ImageReader;
import android.media.ImageReader.OnImageAvailableListener;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.Semaphore;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(21)
public class Camera2_Preview
{
  private static final int AR_CAMERA_DIRECTION_BACK = 268443665;
  private static final int AR_CAMERA_DIRECTION_FRONT = 268443666;
  private static final int AR_CAMERA_DIRECTION_UNKNOWN = 268443664;
  private static final int AR_CAMERA_EXPOSUREMODE_AUTO = 805314560;
  private static final int AR_CAMERA_EXPOSUREMODE_CONTINUOUSAUTO = 805322752;
  private static final int AR_CAMERA_EXPOSUREMODE_LOCKED = 805310464;
  private static final int AR_CAMERA_EXPOSUREMODE_MANUAL = 805339136;
  private static final int AR_CAMERA_EXPOSUREMODE_SHUTTER_PRIORITY = 805371904;
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
  private static final int AR_CAMERA_IMAGE_FORMAT_YUV420P = 268439828;
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
  private static final int[] CAMERA_VALID_IMAGE_FORMAT_PL = { 268439817, 268439815, 268439818, 268439828 };
  private static final Range<Integer> EMPTY_RANGE = new Range(Integer.valueOf(0), Integer.valueOf(0));
  private static final String FOCUS_MODE_NORMAL = "normal";
  private static final int MAX_HIGHEST_FPS_ALLOWED = 300;
  private static final int MAX_LOWEST_FPS_ALLOWED = 150;
  private static final String MODULENAME = "Camera2_Preview";
  private static final int NUM_CAPTURE_BUFFERS = 2;
  private static final int NUM_MAX_CAMERAOPEN_RETRY = 10;
  private static final int TIME_CAMERAOPEN_RETRY_DELAY_MS = 250;
  private static final int _NUM_CAMERA_CAPSINFO_VALUE_ = 6;
  private static final int _NUM_CAMERA_CAPTUREINFO_VALUE_ = 5;
  private HashMap<ImageReader, Integer> mCameraCacheInfoIndexCache = null;
  private Vector<CameraCacheInfo> mCameraCacheInfos = null;
  private Vector<CameraCacheInfo> mCameraCacheInfosInProgress = null;
  private CameraManager mCameraManager;
  private Context mContext;
  private int mIsPermissionGranted = -1;
  private Semaphore mOpenCloseSemaphore = new Semaphore(1);
  
  private boolean checkCameraManager()
  {
    if (this.mCameraManager != null) {
      return true;
    }
    Activity localActivity = SystemTools.getActivityFromNative();
    if (localActivity == null) {
      return false;
    }
    Application localApplication = localActivity.getApplication();
    if (localApplication == null) {
      return false;
    }
    this.mCameraManager = ((CameraManager)localApplication.getSystemService("camera"));
    return this.mCameraManager != null;
  }
  
  public static boolean checkMinimumHardwareSupportLevel(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 == 268443665) {
      i = 1;
    }
    try
    {
      CameraManager localCameraManager = (CameraManager)SystemTools.getActivityFromNative().getSystemService("camera");
      String[] arrayOfString = localCameraManager.getCameraIdList();
      for (int j = 0;; j++)
      {
        int k = arrayOfString.length;
        boolean bool1 = false;
        if (j < k)
        {
          CameraCharacteristics localCameraCharacteristics = localCameraManager.getCameraCharacteristics(arrayOfString[j]);
          if (((Integer)localCameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() != i) {
            continue;
          }
          int m = compareHardwareSupportLevel(((Integer)localCameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue(), paramInt2);
          if (m < 0) {
            break label122;
          }
        }
        label122:
        for (boolean bool2 = true;; bool2 = false)
        {
          bool1 = bool2;
          do
          {
            return bool1;
            bool1 = false;
          } while (paramInt1 != 268443666);
          i = 0;
          break;
        }
      }
      return false;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
    }
  }
  
  private boolean checkPermission()
  {
    if (this.mIsPermissionGranted == 0) {}
    for (;;)
    {
      return true;
      try
      {
        Activity localActivity = SystemTools.getActivityFromNative();
        this.mIsPermissionGranted = localActivity.getPackageManager().checkPermission("android.permission.CAMERA", localActivity.getPackageName());
        int i = this.mIsPermissionGranted;
        if (i == 0) {}
      }
      catch (Exception localException)
      {
        label40:
        break label40;
      }
    }
    return false;
  }
  
  private void cleanupHandlerThread(CameraCacheInfo paramCameraCacheInfo)
  {
    paramCameraCacheInfo.handler = null;
    paramCameraCacheInfo.thread.quitSafely();
    paramCameraCacheInfo.thread = null;
  }
  
  private static int compareHardwareSupportLevel(int paramInt1, int paramInt2)
  {
    int i = 1;
    int j = -1;
    if (paramInt1 == paramInt2) {
      j = 0;
    }
    do
    {
      return j;
      if (paramInt1 != 2) {
        break;
      }
    } while (paramInt2 >= 0);
    return i;
    if (paramInt2 == 2)
    {
      if (paramInt1 >= 0) {}
      for (;;)
      {
        return i;
        i = j;
      }
    }
    return paramInt1 - paramInt2;
  }
  
  private native long getBufferAddress(ByteBuffer paramByteBuffer);
  
  private CameraCacheInfo getCameraCacheInfo(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.mCameraCacheInfos.size())) {
      return null;
    }
    return (CameraCacheInfo)this.mCameraCacheInfos.get(paramInt);
  }
  
  /* Error */
  private int getCameraDeviceIndex(int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iload_2
    //   4: ldc 149
    //   6: if_icmpeq +3 -> 9
    //   9: iload_3
    //   10: tableswitch	default:+26 -> 36, 268443664:+32->42, 268443665:+107->117, 268443666:+113->123
    //   37: invokestatic 327	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   40: iconst_m1
    //   41: ireturn
    //   42: iconst_m1
    //   43: istore 5
    //   45: aload_0
    //   46: getfield 268	com/vuforia/ar/pl/Camera2_Preview:mCameraManager	Landroid/hardware/camera2/CameraManager;
    //   49: invokevirtual 299	android/hardware/camera2/CameraManager:getCameraIdList	()[Ljava/lang/String;
    //   52: astore 8
    //   54: iload 4
    //   56: aload 8
    //   58: arraylength
    //   59: if_icmpge +78 -> 137
    //   62: aload_0
    //   63: getfield 268	com/vuforia/ar/pl/Camera2_Preview:mCameraManager	Landroid/hardware/camera2/CameraManager;
    //   66: aload 8
    //   68: iload 4
    //   70: aaload
    //   71: invokevirtual 303	android/hardware/camera2/CameraManager:getCameraCharacteristics	(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    //   74: astore 9
    //   76: iload 5
    //   78: iflt +26 -> 104
    //   81: aload 9
    //   83: getstatic 309	android/hardware/camera2/CameraCharacteristics:LENS_FACING	Landroid/hardware/camera2/CameraCharacteristics$Key;
    //   86: invokevirtual 313	android/hardware/camera2/CameraCharacteristics:get	(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    //   89: checkcast 218	java/lang/Integer
    //   92: invokevirtual 317	java/lang/Integer:intValue	()I
    //   95: istore 10
    //   97: iload 5
    //   99: iload 10
    //   101: if_icmpne +28 -> 129
    //   104: iload_1
    //   105: iflt +9 -> 114
    //   108: iload_1
    //   109: iload 4
    //   111: if_icmpne +18 -> 129
    //   114: iload 4
    //   116: ireturn
    //   117: iconst_1
    //   118: istore 5
    //   120: goto -75 -> 45
    //   123: iconst_0
    //   124: istore 5
    //   126: goto -81 -> 45
    //   129: iinc 4 1
    //   132: goto -78 -> 54
    //   135: astore 7
    //   137: bipush 6
    //   139: invokestatic 327	com/vuforia/ar/pl/SystemTools:setSystemErrorCode	(I)V
    //   142: iconst_m1
    //   143: ireturn
    //   144: astore 6
    //   146: goto -9 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	Camera2_Preview
    //   0	149	1	paramInt1	int
    //   0	149	2	paramInt2	int
    //   0	149	3	paramInt3	int
    //   1	129	4	i	int
    //   43	82	5	j	int
    //   144	1	6	localCameraAccessException	CameraAccessException
    //   135	1	7	localIllegalArgumentException	IllegalArgumentException
    //   52	15	8	arrayOfString	String[]
    //   74	8	9	localCameraCharacteristics	CameraCharacteristics
    //   95	7	10	k	int
    // Exception table:
    //   from	to	target	type
    //   45	54	135	java/lang/IllegalArgumentException
    //   54	76	135	java/lang/IllegalArgumentException
    //   81	97	135	java/lang/IllegalArgumentException
    //   45	54	144	android/hardware/camera2/CameraAccessException
    //   54	76	144	android/hardware/camera2/CameraAccessException
    //   81	97	144	android/hardware/camera2/CameraAccessException
  }
  
  private List<Integer> getSupportedPreviewFrameRates(CameraCharacteristics paramCameraCharacteristics)
  {
    Range[] arrayOfRange = (Range[])paramCameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
    int i = 2147483647;
    int j = arrayOfRange.length;
    int k = 0;
    int m = -2147483648;
    while (k < j)
    {
      Range localRange = arrayOfRange[k];
      int i3 = Math.min(i, ((Integer)localRange.getLower()).intValue());
      int i4 = Math.max(m, ((Integer)localRange.getUpper()).intValue());
      k++;
      m = i4;
      i = i3;
    }
    LinkedList localLinkedList = new LinkedList();
    if ((i < 0) || (i >= 150) || (m < 0) || (m >= 300))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(m);
      DebugLog.LOGW("Camera2_Preview", String.format("Detected odd fps values from Camera2 API: low=%d, high=%d.  Using saner defaults instead.", arrayOfObject));
      localLinkedList.add(Integer.valueOf(30));
      return localLinkedList;
    }
    int n = i;
    label176:
    int i1;
    if (n <= m) {
      i1 = arrayOfRange.length;
    }
    for (int i2 = 0;; i2++) {
      if (i2 < i1)
      {
        if (arrayOfRange[i2].contains(Integer.valueOf(n))) {
          localLinkedList.add(Integer.valueOf(n));
        }
      }
      else
      {
        n++;
        break label176;
        break;
      }
    }
  }
  
  private <T> CaptureRequest.Key<T> mapStringToKey(String paramString, CameraCharacteristics paramCameraCharacteristics, T paramT)
  {
    Iterator localIterator = paramCameraCharacteristics.getAvailableCaptureRequestKeys().iterator();
    while (localIterator.hasNext())
    {
      CaptureRequest.Key localKey = (CaptureRequest.Key)localIterator.next();
      if (localKey.getName().equals(paramString)) {
        return localKey;
      }
    }
    return null;
  }
  
  private native void newFrameAvailable(long paramLong, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt, int paramInt4, ByteBuffer paramByteBuffer, Object paramObject);
  
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
  
  private boolean setCameraCaptureParams(CameraCacheInfo paramCameraCacheInfo, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i;
    int j;
    label32:
    int k;
    if ((paramArrayOfInt1 != null) || (paramArrayOfInt2 != null))
    {
      if (paramArrayOfInt2 == null) {
        break label78;
      }
      i = paramArrayOfInt2[0];
      paramCameraCacheInfo.overrideWidth = i;
      if (paramArrayOfInt2 == null) {
        break label86;
      }
      j = paramArrayOfInt2[1];
      paramCameraCacheInfo.overrideHeight = j;
      if (paramArrayOfInt2 == null) {
        break label94;
      }
      k = paramArrayOfInt2[2];
      label47:
      paramCameraCacheInfo.overrideFormatPL = k;
      if (paramArrayOfInt2 == null) {
        break label102;
      }
    }
    label78:
    label86:
    label94:
    label102:
    for (int m = paramArrayOfInt2[2];; m = paramArrayOfInt1[2])
    {
      paramCameraCacheInfo.overrideFormatAndroid = translateImageFormatPLToAndroid(m);
      if (paramArrayOfInt1 != null) {
        break label110;
      }
      return true;
      i = paramArrayOfInt1[0];
      break;
      j = paramArrayOfInt1[1];
      break label32;
      k = paramArrayOfInt1[2];
      break label47;
    }
    label110:
    if ((paramCameraCacheInfo == null) || (paramCameraCacheInfo.builder == null) || (paramCameraCacheInfo.characteristics == null)) {
      return false;
    }
    paramCameraCacheInfo.requestWidth = paramArrayOfInt1[0];
    paramCameraCacheInfo.requestHeight = paramArrayOfInt1[1];
    paramCameraCacheInfo.requestFormatPL = paramArrayOfInt1[2];
    paramCameraCacheInfo.requestFormatAndroid = translateImageFormatPLToAndroid(paramArrayOfInt1[2]);
    paramCameraCacheInfo.requestFramerate = paramArrayOfInt1[3];
    Size[] arrayOfSize = ((StreamConfigurationMap)paramCameraCacheInfo.characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(paramCameraCacheInfo.requestFormatAndroid);
    if (arrayOfSize == null) {
      return false;
    }
    int n = arrayOfSize.length;
    int i1 = 0;
    boolean bool = false;
    for (;;)
    {
      if (i1 < n)
      {
        bool = arrayOfSize[i1].equals(new Size(paramCameraCacheInfo.requestWidth, paramCameraCacheInfo.requestHeight));
        if (!bool) {}
      }
      else
      {
        if (bool) {
          break;
        }
        return false;
      }
      i1++;
    }
    Range[] arrayOfRange = (Range[])paramCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
    Object localObject1 = null;
    int i2 = 2147483647;
    int i3 = arrayOfRange.length;
    int i4 = 0;
    Range localRange;
    if (i4 < i3)
    {
      localRange = arrayOfRange[i4];
      if ((((Integer)localRange.getLower()).intValue() >= 150) || (((Integer)localRange.getUpper()).intValue() >= 300))
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localRange.getLower();
        arrayOfObject[1] = localRange.getUpper();
        DebugLog.LOGW("Camera2_Preview", String.format("Detected odd fps values from Camera2 API: low=%d, high=%d.  Using first fps range as default instead of searching for perfect fit.", arrayOfObject));
        localObject1 = arrayOfRange[0];
      }
    }
    else
    {
      if (localObject1 != null) {
        break label453;
      }
      return false;
    }
    int i5;
    if (localRange.contains(Integer.valueOf(paramCameraCacheInfo.requestFramerate)))
    {
      i5 = ((Integer)localRange.getUpper()).intValue() - ((Integer)localRange.getLower()).intValue();
      if (i5 >= i2) {}
    }
    for (Object localObject2 = localRange;; localObject2 = localObject1)
    {
      i4++;
      localObject1 = localObject2;
      i2 = i5;
      break;
      label453:
      paramCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, localObject1);
      return true;
      i5 = i2;
    }
  }
  
  private boolean setCustomCameraParams(CameraCacheInfo paramCameraCacheInfo, String paramString)
  {
    if ((paramCameraCacheInfo == null) || (paramCameraCacheInfo.builder == null) || (paramCameraCacheInfo.characteristics == null)) {
      return false;
    }
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
        String str;
        Object localObject = localJSONObject.get(str);
        Class localClass = localObject.getClass();
        if ((localClass != String.class) && (localClass != Integer.class)) {
          break label136;
        }
        if (mapStringToKey(str, paramCameraCacheInfo.characteristics, localObject) == null) {
          break label134;
        }
        paramCameraCacheInfo.builder.set(mapStringToKey(str, paramCameraCacheInfo.characteristics, localObject), localObject);
      }
      catch (JSONException localJSONException1)
      {
        return false;
      }
      localJSONException2 = localJSONException2;
      return false;
    }
    if (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      label134:
      return false;
      label136:
      return false;
    }
    return true;
  }
  
  private boolean setupPreviewBuffer(CameraCacheInfo paramCameraCacheInfo)
  {
    paramCameraCacheInfo.reader = ImageReader.newInstance(paramCameraCacheInfo.requestWidth, paramCameraCacheInfo.requestHeight, paramCameraCacheInfo.requestFormatAndroid, 2);
    paramCameraCacheInfo.imageSemaphore = new Semaphore(2);
    paramCameraCacheInfo.images = new Image[2];
    int i;
    int j;
    if (paramCameraCacheInfo.requestWidth == paramCameraCacheInfo.overrideWidth)
    {
      i = paramCameraCacheInfo.reader.getWidth();
      paramCameraCacheInfo.bufferWidth = i;
      if (paramCameraCacheInfo.requestHeight != paramCameraCacheInfo.overrideHeight) {
        break label204;
      }
      j = paramCameraCacheInfo.reader.getHeight();
      label83:
      paramCameraCacheInfo.bufferHeight = j;
      if (paramCameraCacheInfo.requestFormatAndroid != paramCameraCacheInfo.overrideFormatAndroid) {
        break label212;
      }
      paramCameraCacheInfo.reader.getImageFormat();
      label107:
      if (paramCameraCacheInfo.requestFormatPL != paramCameraCacheInfo.overrideFormatPL) {
        break label220;
      }
    }
    label204:
    label212:
    label220:
    for (int k = paramCameraCacheInfo.requestFormatPL;; k = paramCameraCacheInfo.overrideFormatPL)
    {
      paramCameraCacheInfo.bufferFormatPL = k;
      paramCameraCacheInfo.reader.setOnImageAvailableListener(new OnCameraDataAvailable(null), paramCameraCacheInfo.handler);
      if (paramCameraCacheInfo.surfaces == null) {
        paramCameraCacheInfo.surfaces = new LinkedList();
      }
      paramCameraCacheInfo.surfaces.clear();
      paramCameraCacheInfo.surfaces.add(paramCameraCacheInfo.reader.getSurface());
      return true;
      i = paramCameraCacheInfo.overrideWidth;
      break;
      j = paramCameraCacheInfo.overrideHeight;
      break label83;
      break label107;
    }
  }
  
  private int translateImageFormatPLToAndroid(int paramInt)
  {
    for (int i = 0;; i++)
    {
      int j = CAMERA_VALID_IMAGE_FORMAT_PL.length;
      int k = 0;
      if (i < j)
      {
        if (paramInt == CAMERA_VALID_IMAGE_FORMAT_PL[i]) {
          k = 35;
        }
      }
      else {
        return k;
      }
    }
  }
  
  public boolean close(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    this.mCameraCacheInfoIndexCache.remove(localCameraCacheInfo.reader);
    try
    {
      if (localCameraCacheInfo.session != null) {
        localCameraCacheInfo.session.close();
      }
      if (localCameraCacheInfo.device != null) {
        localCameraCacheInfo.device.close();
      }
      if (localCameraCacheInfo.reader != null) {
        localCameraCacheInfo.reader.close();
      }
      bool = true;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    localCameraCacheInfo.session = null;
    localCameraCacheInfo.reader = null;
    localCameraCacheInfo.images = null;
    localCameraCacheInfo.status = 268443649;
    cleanupHandlerThread(localCameraCacheInfo);
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
    if (!checkCameraManager())
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    if (localCameraCacheInfo.caps != null) {
      return localCameraCacheInfo.caps;
    }
    for (;;)
    {
      List localList;
      LinkedList localLinkedList;
      Boolean localBoolean1;
      int m;
      try
      {
        String str = this.mCameraManager.getCameraIdList()[localCameraCacheInfo.deviceID];
        StreamConfigurationMap localStreamConfigurationMap = (StreamConfigurationMap)this.mCameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        Size[] arrayOfSize = localStreamConfigurationMap.getOutputSizes(35);
        localList = getSupportedPreviewFrameRates(localCameraCacheInfo.characteristics);
        int[] arrayOfInt1 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        Arrays.sort(arrayOfInt1);
        int[] arrayOfInt2 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        Arrays.sort(arrayOfInt2);
        localLinkedList = new LinkedList();
        localLinkedList.add(Integer.valueOf(35));
        if (arrayOfSize != null)
        {
          i = arrayOfSize.length;
          if (localList == null) {
            break label1124;
          }
          j = localList.size();
          if (localLinkedList == null) {
            break label1130;
          }
          k = localLinkedList.size();
          float[] arrayOfFloat = (float[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
          if ((arrayOfFloat == null) || (arrayOfFloat.length <= 0)) {
            break label1136;
          }
          bool1 = true;
          localBoolean1 = (Boolean)localCameraCacheInfo.characteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
          if (localBoolean1 != null) {
            break label1373;
          }
          localBoolean2 = Boolean.valueOf(false);
          Integer localInteger1 = (Integer)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
          if ((localInteger1 == null) || (localInteger1.intValue() <= 0)) {
            break label1142;
          }
          bool2 = true;
          Range localRange1 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
          if ((localRange1 == null) || (EMPTY_RANGE.equals(localRange1))) {
            break label1148;
          }
          bool3 = true;
          Range localRange2 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
          if ((localRange2 == null) || (EMPTY_RANGE.equals(localRange2))) {
            break label1154;
          }
          bool4 = true;
          Range localRange3 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
          if ((localRange2 == null) || (EMPTY_RANGE.equals(localRange3))) {
            break label1160;
          }
          bool5 = true;
          int[] arrayOfInt3 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
          int[] arrayOfInt4 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION);
          if (((arrayOfInt3 == null) || (arrayOfInt3.length <= 1)) && ((arrayOfInt4 == null) || (arrayOfInt4.length <= 1))) {
            break label1166;
          }
          bool6 = true;
          localCameraCacheInfo.caps = new int[k + (j + (6 + i * 2))];
          localCameraCacheInfo.caps[0] = 536870912;
          setCameraCapsBit(localCameraCacheInfo, 0, 536870913, localBoolean2.booleanValue());
          if (arrayOfInt1.length <= 0) {
            break label1172;
          }
          bool7 = true;
          setCameraCapsBit(localCameraCacheInfo, 0, 536870914, bool7);
          setCameraCapsBit(localCameraCacheInfo, 0, 536870916, bool1);
          setCameraCapsBit(localCameraCacheInfo, 0, 536870928, bool2);
          if (arrayOfInt2.length <= 0) {
            break label1178;
          }
          bool8 = true;
          setCameraCapsBit(localCameraCacheInfo, 0, 536870944, bool8);
          setCameraCapsBit(localCameraCacheInfo, 0, 536871936, bool3);
          setCameraCapsBit(localCameraCacheInfo, 0, 536872960, bool3);
          setCameraCapsBit(localCameraCacheInfo, 0, 536870976, bool4);
          setCameraCapsBit(localCameraCacheInfo, 0, 536871040, bool4);
          setCameraCapsBit(localCameraCacheInfo, 0, 536871168, bool5);
          setCameraCapsBit(localCameraCacheInfo, 0, 536871424, bool5);
          setCameraCapsBit(localCameraCacheInfo, 0, 536903680, bool1);
          setCameraCapsBit(localCameraCacheInfo, 0, 536936448, bool1);
          setCameraCapsBit(localCameraCacheInfo, 0, 553648128, bool6);
          localCameraCacheInfo.caps[1] = 536870912;
          setCameraCapsBit(localCameraCacheInfo, 1, 536870913, localBoolean2.booleanValue());
          if (arrayOfInt1.length <= 0) {
            break label1184;
          }
          bool9 = true;
          setCameraCapsBit(localCameraCacheInfo, 1, 536870914, bool9);
          setCameraCapsBit(localCameraCacheInfo, 1, 536870928, bool2);
          if (arrayOfInt2.length <= 0) {
            break label1190;
          }
          bool10 = true;
          setCameraCapsBit(localCameraCacheInfo, 1, 536870944, bool10);
          setCameraCapsBit(localCameraCacheInfo, 1, 536871936, bool3);
          setCameraCapsBit(localCameraCacheInfo, 1, 536870976, bool4);
          setCameraCapsBit(localCameraCacheInfo, 1, 536871168, bool5);
          setCameraCapsBit(localCameraCacheInfo, 1, 536903680, bool1);
          setCameraCapsBit(localCameraCacheInfo, 1, 553648128, bool6);
          localCameraCacheInfo.caps[2] = 805306368;
          if (localBoolean2.booleanValue())
          {
            setCameraCapsBit(localCameraCacheInfo, 2, 805306369, true);
            setCameraCapsBit(localCameraCacheInfo, 2, 805306370, true);
          }
          if (arrayOfInt1 != null)
          {
            if (Arrays.binarySearch(arrayOfInt1, 1) == -1) {
              break label1196;
            }
            bool14 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306384, bool14);
            if (Arrays.binarySearch(arrayOfInt1, 1) == -1) {
              break label1202;
            }
            bool15 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306400, bool15);
            if (Arrays.binarySearch(arrayOfInt1, 3) == -1) {
              break label1208;
            }
            bool16 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306432, bool16);
            if (Arrays.binarySearch(arrayOfInt1, 2) == -1) {
              break label1214;
            }
            bool17 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306496, bool17);
            if ((Arrays.binarySearch(arrayOfInt1, 0) == -1) || (CaptureRequest.LENS_FOCUS_DISTANCE == null)) {
              break label1220;
            }
            bool18 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306624, bool18);
            if (Arrays.binarySearch(arrayOfInt1, 0) == -1) {
              break label1226;
            }
            bool19 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805306880, bool19);
          }
          if (arrayOfInt2 != null)
          {
            if (Arrays.binarySearch(arrayOfInt2, 0) == -1) {
              break label1232;
            }
            bool11 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805310464, bool11);
            if (Arrays.binarySearch(arrayOfInt2, 0) == -1) {
              break label1238;
            }
            bool12 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805339136, bool12);
            if (Arrays.binarySearch(arrayOfInt2, 1) == -1) {
              break label1244;
            }
            bool13 = true;
            setCameraCapsBit(localCameraCacheInfo, 2, 805322752, bool13);
          }
          localCameraCacheInfo.caps[3] = i;
          localCameraCacheInfo.caps[4] = j;
          localCameraCacheInfo.caps[5] = k;
          m = 6;
          if (i <= 0) {
            break label1250;
          }
          int i2 = arrayOfSize.length;
          int i3 = 0;
          if (i3 >= i2) {
            break label1250;
          }
          Size localSize = arrayOfSize[i3];
          localCameraCacheInfo.caps[m] = localSize.getWidth();
          localCameraCacheInfo.caps[(m + 1)] = localSize.getHeight();
          int i4 = m + 2;
          i3++;
          m = i4;
          continue;
        }
        int i = 0;
      }
      catch (CameraAccessException localCameraAccessException)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      continue;
      label1124:
      int j = 0;
      continue;
      label1130:
      int k = 0;
      continue;
      label1136:
      boolean bool1 = false;
      continue;
      label1142:
      boolean bool2 = false;
      continue;
      label1148:
      boolean bool3 = false;
      continue;
      label1154:
      boolean bool4 = false;
      continue;
      label1160:
      boolean bool5 = false;
      continue;
      label1166:
      boolean bool6 = false;
      continue;
      label1172:
      boolean bool7 = false;
      continue;
      label1178:
      boolean bool8 = false;
      continue;
      label1184:
      boolean bool9 = false;
      continue;
      label1190:
      boolean bool10 = false;
      continue;
      label1196:
      boolean bool14 = false;
      continue;
      label1202:
      boolean bool15 = false;
      continue;
      label1208:
      boolean bool16 = false;
      continue;
      label1214:
      boolean bool17 = false;
      continue;
      label1220:
      boolean bool18 = false;
      continue;
      label1226:
      boolean bool19 = false;
      continue;
      label1232:
      boolean bool11 = false;
      continue;
      label1238:
      boolean bool12 = false;
      continue;
      label1244:
      boolean bool13 = false;
      continue;
      label1250:
      if (j > 0)
      {
        Iterator localIterator2 = localList.iterator();
        for (int i1 = m; localIterator2.hasNext(); i1++)
        {
          Integer localInteger2 = (Integer)localIterator2.next();
          localCameraCacheInfo.caps[i1] = localInteger2.intValue();
        }
        m = i1;
      }
      if (k > 0)
      {
        Iterator localIterator1 = localLinkedList.iterator();
        for (int n = m; localIterator1.hasNext(); n++)
        {
          ((Integer)localIterator1.next());
          localCameraCacheInfo.caps[n] = localCameraCacheInfo.requestFormatPL;
        }
      }
      return localCameraCacheInfo.caps;
      label1373:
      Boolean localBoolean2 = localBoolean1;
    }
  }
  
  public int[] getCaptureInfo(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    for (;;)
    {
      try
      {
        int[] arrayOfInt = new int[5];
        if (localCameraCacheInfo.reader != null)
        {
          arrayOfInt[0] = localCameraCacheInfo.reader.getWidth();
          arrayOfInt[1] = localCameraCacheInfo.reader.getHeight();
          arrayOfInt[2] = localCameraCacheInfo.requestFormatPL;
          if (localCameraCacheInfo.builder != null)
          {
            arrayOfInt[3] = ((Integer)((Range)localCameraCacheInfo.builder.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE)).getUpper()).intValue();
            arrayOfInt[4] = 1;
            return arrayOfInt;
          }
        }
        else
        {
          arrayOfInt[0] = localCameraCacheInfo.requestWidth;
          arrayOfInt[1] = localCameraCacheInfo.requestHeight;
          continue;
        }
        arrayOfInt[3] = localCameraCacheInfo.requestFramerate;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
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
    if (!checkCameraManager())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(21)) {
      try
      {
        String[] arrayOfString = this.mCameraManager.getCameraIdList();
        if (paramInt < arrayOfString.length)
        {
          int i = ((Integer)this.mCameraManager.getCameraCharacteristics(arrayOfString[paramInt]).get(CameraCharacteristics.LENS_FACING)).intValue();
          switch (i)
          {
          default: 
            return 268443664;
          case 1: 
            return 268443665;
          }
          return 268443666;
        }
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return -1;
      }
    }
    return 268443665;
  }
  
  String getNamedParameter(int paramInt1, int paramInt2)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt1);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null))
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    List localList1 = localCameraCacheInfo.characteristics.getAvailableCaptureRequestKeys();
    List localList2 = localCameraCacheInfo.characteristics.getKeys();
    if (paramInt2 < localList1.size())
    {
      CaptureRequest.Key localKey1 = (CaptureRequest.Key)localList1.get(paramInt2);
      if (localKey1 == null) {
        return null;
      }
      return localKey1.getName();
    }
    if (paramInt2 - localList1.size() < localList2.size())
    {
      CameraCharacteristics.Key localKey = (CameraCharacteristics.Key)localList2.get(paramInt2 - localList1.size());
      if (localKey == null) {
        return null;
      }
      return localKey.getName();
    }
    SystemTools.setSystemErrorCode(6);
    return null;
  }
  
  int getNamedParameterCount(int paramInt)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null))
    {
      SystemTools.setSystemErrorCode(4);
      return -1;
    }
    List localList1 = localCameraCacheInfo.characteristics.getAvailableCaptureRequestKeys();
    List localList2 = localCameraCacheInfo.characteristics.getKeys();
    return localList1.size() + localList2.size();
  }
  
  public int getNumberOfCameras()
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (!checkCameraManager())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(21)) {
      try
      {
        int i = this.mCameraManager.getCameraIdList().length;
        return i;
      }
      catch (Exception localException) {}
    }
    SystemTools.setSystemErrorCode(6);
    return -1;
  }
  
  public int getOrientation(int paramInt)
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (!checkCameraManager())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (SystemTools.checkMinimumApiLevel(21)) {
      try
      {
        String[] arrayOfString = this.mCameraManager.getCameraIdList();
        if (paramInt < arrayOfString.length)
        {
          int i = ((Integer)this.mCameraManager.getCameraCharacteristics(arrayOfString[paramInt]).get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
          return i;
        }
      }
      catch (Exception localException) {}
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
    Object localObject;
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.characteristics == null))
    {
      SystemTools.setSystemErrorCode(4);
      localObject = null;
    }
    CaptureResult localCaptureResult;
    int k;
    do
    {
      do
      {
        return localObject;
        localCaptureResult = localCameraCacheInfo.lastResult;
        switch (paramInt2)
        {
        default: 
          return null;
        case 536870913: 
          if (localCaptureResult != null) {
            break;
          }
        }
        try
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        catch (Exception localException)
        {
          Integer localInteger8;
          Integer localInteger7;
          Float localFloat;
          Pair localPair;
          float[] arrayOfFloat5;
          Integer localInteger6;
          MeteringRectangle[] arrayOfMeteringRectangle;
          Rect localRect1;
          Rect localRect2;
          float[] arrayOfFloat4;
          Integer localInteger5;
          Integer localInteger4;
          Range localRange3;
          float[] arrayOfFloat3;
          Long localLong;
          Range localRange2;
          float[] arrayOfFloat2;
          Integer localInteger3;
          Rational localRational2;
          Range localRange1;
          Rational localRational1;
          float[] arrayOfFloat1;
          Integer localInteger1;
          CaptureResult.Key localKey;
          Integer localInteger2;
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        localInteger8 = (Integer)localCaptureResult.get(CaptureResult.FLASH_MODE);
        if ((localInteger8 == null) || (CaptureResult.FLASH_MODE == null))
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        if (localInteger8.equals(Integer.valueOf(2))) {
          return Integer.valueOf(805306370);
        }
        if (localInteger8.equals(Integer.valueOf(0))) {
          return Integer.valueOf(805306369);
        }
        SystemTools.setSystemErrorCode(6);
        return null;
        if (localCaptureResult == null)
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        localInteger7 = (Integer)localCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
        if ((localInteger7 == null) || (CaptureResult.CONTROL_AF_MODE == null))
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        if (localInteger7.equals(Integer.valueOf(1)))
        {
          if (!localCameraCacheInfo.isAutoFocusing) {
            break label1626;
          }
          k = 805306400;
          return Integer.valueOf(k);
        }
        if (localInteger7.equals(Integer.valueOf(3))) {
          return Integer.valueOf(805306432);
        }
        if (localInteger7.equals(Integer.valueOf(0)))
        {
          localFloat = (Float)localCaptureResult.get(CaptureResult.LENS_FOCUS_DISTANCE);
          if ((localFloat == null) || (CaptureResult.LENS_FOCUS_DISTANCE == null) || (!localFloat.equals(Float.valueOf(0.0F)))) {
            return Integer.valueOf(805306880);
          }
          return Integer.valueOf(805306624);
        }
        if (localInteger7.equals(Integer.valueOf(2))) {
          return Integer.valueOf(805306496);
        }
        SystemTools.setSystemErrorCode(6);
        return null;
        if (localCaptureResult == null)
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        localObject = (Float)localCaptureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
      } while ((localObject != null) && (CaptureResult.LENS_FOCAL_LENGTH != null));
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localPair = (Pair)localCaptureResult.get(CaptureResult.LENS_FOCUS_RANGE);
      if ((localPair != null) && (CaptureResult.LENS_FOCUS_RANGE != null))
      {
        arrayOfFloat5 = new float[2];
        arrayOfFloat5[0] = ((Float)localPair.first).floatValue();
        arrayOfFloat5[1] = ((Float)localPair.second).floatValue();
        return arrayOfFloat5;
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localInteger6 = (Integer)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
      if ((localInteger6 != null) && (CameraCharacteristics.CONTROL_MAX_REGIONS_AF != null) && (localInteger6.intValue() > 0) && (CaptureResult.CONTROL_AF_REGIONS != null))
      {
        arrayOfMeteringRectangle = (MeteringRectangle[])localCaptureResult.get(CaptureResult.CONTROL_AF_REGIONS);
        if ((arrayOfMeteringRectangle == null) || (arrayOfMeteringRectangle.length == 0)) {
          break label1633;
        }
        localRect1 = (Rect)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (localRect1 == null)
        {
          SystemTools.setSystemErrorCode(6);
          return Boolean.valueOf(false);
        }
        localRect2 = arrayOfMeteringRectangle[0].getRect();
        arrayOfFloat4 = new float[5];
        arrayOfFloat4[0] = (localRect2.left / (-1 + localRect1.width()));
        arrayOfFloat4[1] = (localRect2.top / (-1 + localRect1.height()));
        arrayOfFloat4[2] = (localRect2.right / (-1 + localRect1.width()));
        arrayOfFloat4[3] = (localRect2.bottom / (-1 + localRect1.height()));
        arrayOfFloat4[4] = ((0 + arrayOfMeteringRectangle[0].getMeteringWeight()) / 1000);
        return arrayOfFloat4;
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localInteger5 = (Integer)localCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
      if ((localInteger5 == null) || (CaptureResult.CONTROL_AE_MODE == null))
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      if (localInteger5.equals(Integer.valueOf(0))) {
        return Integer.valueOf(805339136);
      }
      if (localInteger5.equals(Integer.valueOf(1))) {
        return Integer.valueOf(805322752);
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localInteger4 = (Integer)localCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
      if ((localInteger4 != null) && (CaptureResult.SENSOR_SENSITIVITY != null)) {
        return Float.valueOf(localInteger4.floatValue());
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      localRange3 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
      if ((localRange3 == null) || (CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE == null))
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      arrayOfFloat3 = new float[2];
      arrayOfFloat3[0] = ((Integer)localRange3.getLower()).floatValue();
      arrayOfFloat3[1] = ((Integer)localRange3.getUpper()).floatValue();
      return arrayOfFloat3;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localLong = (Long)localCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
      if ((localLong != null) && (CaptureResult.SENSOR_EXPOSURE_TIME != null)) {
        return Float.valueOf((float)(localLong.doubleValue() / 1000000000.0D));
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      localRange2 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
      if ((localRange2 == null) || (CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE == null))
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      arrayOfFloat2 = new float[2];
      arrayOfFloat2[0] = ((float)(((Long)localRange2.getLower()).doubleValue() / 1000000000.0D));
      arrayOfFloat2[1] = ((float)(((Long)localRange2.getUpper()).doubleValue() / 1000000000.0D));
      return arrayOfFloat2;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localInteger3 = (Integer)localCaptureResult.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION);
      localRational2 = (Rational)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
      if ((localInteger3 != null) && (CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION != null) && (localRational2 != null) && (CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP != null)) {
        return Float.valueOf(localRational2.floatValue() * localInteger3.intValue());
      }
      SystemTools.setSystemErrorCode(6);
      return null;
      localRange1 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
      localRational1 = (Rational)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
      if ((localRange1 == null) || (CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE == null) || (localRational1 == null) || (CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP == null))
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      arrayOfFloat1 = new float[2];
      arrayOfFloat1[0] = (localRational1.floatValue() * ((Integer)localRange1.getLower()).intValue());
      arrayOfFloat1[1] = (localRational1.floatValue() * ((Integer)localRange1.getUpper()).intValue());
      return arrayOfFloat1;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      SystemTools.setSystemErrorCode(6);
      return null;
      if (localCaptureResult == null)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      localObject = (Float)localCaptureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
    } while ((localObject != null) && (CaptureResult.LENS_FOCAL_LENGTH != null));
    SystemTools.setSystemErrorCode(6);
    return null;
    SystemTools.setSystemErrorCode(6);
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
    if (localCaptureResult == null)
    {
      SystemTools.setSystemErrorCode(6);
      return null;
    }
    localInteger1 = (Integer)localCaptureResult.get(CaptureResult.CONTROL_VIDEO_STABILIZATION_MODE);
    int i = 0;
    if (localInteger1 != null)
    {
      localKey = CaptureResult.CONTROL_VIDEO_STABILIZATION_MODE;
      i = 0;
      if (localKey != null)
      {
        if (!localInteger1.equals(Integer.valueOf(1))) {
          break label1635;
        }
        return Boolean.valueOf(true);
      }
    }
    label1548:
    localInteger2 = (Integer)localCaptureResult.get(CaptureResult.LENS_OPTICAL_STABILIZATION_MODE);
    if ((localInteger2 != null) && (CaptureResult.LENS_OPTICAL_STABILIZATION_MODE != null))
    {
      if (!localInteger2.equals(Integer.valueOf(1))) {
        break label1641;
      }
      return Boolean.valueOf(true);
    }
    for (;;)
    {
      if (j == 0)
      {
        SystemTools.setSystemErrorCode(6);
        return null;
      }
      Boolean localBoolean = Boolean.valueOf(false);
      return localBoolean;
      int j = i;
      continue;
      label1626:
      k = 805306384;
      break;
      label1633:
      return null;
      label1635:
      i = 1;
      break label1548;
      label1641:
      j = 1;
    }
  }
  
  Object getUntypedCameraParameter(int paramInt, String paramString)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null) || (paramString == null))
    {
      SystemTools.setSystemErrorCode(4);
      return null;
    }
    List localList1 = localCameraCacheInfo.characteristics.getAvailableCaptureRequestKeys();
    CaptureRequest.Key localKey1;
    for (int i = 0;; i++)
    {
      if (i >= localList1.size()) {
        break label392;
      }
      localKey1 = (CaptureRequest.Key)localList1.get(i);
      if (localKey1.getName().equals(paramString)) {
        break;
      }
    }
    label385:
    label392:
    for (Object localObject1 = localCameraCacheInfo.builder.get(localKey1);; localObject1 = null)
    {
      List localList2 = localCameraCacheInfo.characteristics.getKeys();
      CameraCharacteristics.Key localKey;
      for (int j = 0;; j++)
      {
        if (j >= localList2.size()) {
          break label385;
        }
        localKey = (CameraCharacteristics.Key)localList2.get(j);
        if (localKey.getName().equals(paramString)) {
          break;
        }
      }
      for (Object localObject2 = localCameraCacheInfo.characteristics.get(localKey);; localObject2 = localObject1)
      {
        if (localObject2 == null)
        {
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        if (((localObject2 instanceof Long)) || ((localObject2 instanceof Float)) || ((localObject2 instanceof Boolean)) || ((localObject2 instanceof String))) {
          return localObject2;
        }
        if ((localObject2 instanceof Integer)) {
          return new Long(((Integer)localObject2).longValue());
        }
        if ((localObject2 instanceof Byte)) {
          return new Long(((Byte)localObject2).longValue());
        }
        if ((localObject2 instanceof Range))
        {
          Comparable localComparable1 = ((Range)localObject2).getLower();
          Comparable localComparable2 = ((Range)localObject2).getUpper();
          if ((localComparable1 instanceof Integer))
          {
            long[] arrayOfLong2 = new long[2];
            arrayOfLong2[0] = ((Integer)localComparable1).longValue();
            arrayOfLong2[1] = ((Integer)localComparable2).longValue();
            return arrayOfLong2;
          }
          if ((localComparable1 instanceof Long))
          {
            long[] arrayOfLong1 = new long[2];
            arrayOfLong1[0] = ((Long)localComparable1).longValue();
            arrayOfLong1[1] = ((Long)localComparable2).longValue();
            return arrayOfLong1;
          }
          SystemTools.setSystemErrorCode(6);
          return null;
        }
        SystemTools.setSystemErrorCode(6);
        return null;
      }
    }
  }
  
  int getUntypedCameraParameterType(int paramInt, String paramString)
  {
    int i = 1;
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null) || (paramString == null))
    {
      SystemTools.setSystemErrorCode(4);
      i = -1;
      return i;
    }
    List localList1 = localCameraCacheInfo.characteristics.getAvailableCaptureRequestKeys();
    int j = 0;
    Object localObject3;
    int k;
    while (j < localList1.size())
    {
      CaptureRequest.Key localKey1 = (CaptureRequest.Key)localList1.get(j);
      if (!localKey1.getName().equals(paramString))
      {
        j++;
      }
      else
      {
        localObject3 = localCameraCacheInfo.builder.get(localKey1);
        k = i;
      }
    }
    for (Object localObject1 = localObject3;; localObject1 = null)
    {
      List localList2 = localCameraCacheInfo.characteristics.getKeys();
      int m = 0;
      Object localObject2;
      while (m < localList2.size())
      {
        CameraCharacteristics.Key localKey = (CameraCharacteristics.Key)localList2.get(m);
        if (!localKey.getName().equals(paramString))
        {
          m++;
        }
        else
        {
          localObject2 = localCameraCacheInfo.characteristics.get(localKey);
          k = i;
        }
      }
      for (;;)
      {
        if (k == 0)
        {
          SystemTools.setSystemErrorCode(6);
          return -1;
        }
        if (localObject2 == null) {
          return -1;
        }
        if (((localObject2 instanceof Integer)) || ((localObject2 instanceof Byte)) || ((localObject2 instanceof Long))) {
          break;
        }
        if ((localObject2 instanceof Float)) {
          return 2;
        }
        if ((localObject2 instanceof Boolean)) {
          return 3;
        }
        if ((localObject2 instanceof String)) {
          return 0;
        }
        if ((localObject2 instanceof Range))
        {
          Comparable localComparable = ((Range)localObject2).getLower();
          if ((localComparable instanceof Integer)) {
            return 4;
          }
          if ((localComparable instanceof Long)) {
            return 4;
          }
        }
        return -1;
        localObject2 = localObject1;
      }
      k = 0;
    }
  }
  
  public boolean init()
  {
    this.mCameraCacheInfos = new Vector();
    this.mCameraCacheInfosInProgress = new Vector();
    this.mCameraCacheInfoIndexCache = new HashMap();
    return true;
  }
  
  public int open(long paramLong, int paramInt1, int paramInt2, int paramInt3, String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (!checkPermission())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    if (!checkCameraManager())
    {
      SystemTools.setSystemErrorCode(6);
      return -1;
    }
    int i = getCameraDeviceIndex(paramInt1, paramInt2, paramInt3);
    if (i < 0) {
      return -1;
    }
    Object localObject1 = null;
    int j = this.mCameraCacheInfos.size();
    int k = 0;
    if (k < j)
    {
      localObject1 = (CameraCacheInfo)this.mCameraCacheInfos.get(k);
      if (((CameraCacheInfo)localObject1).deviceID != i) {}
    }
    label657:
    label835:
    for (;;)
    {
      if (k < 0) {}
      int m;
      int i2;
      for (;;)
      {
        try
        {
          CameraCacheInfo localCameraCacheInfo = new CameraCacheInfo();
          localCameraCacheInfo.deviceID = i;
          localCameraCacheInfo.deviceHandle = paramLong;
          localCameraCacheInfo.deviceIDString = this.mCameraManager.getCameraIdList()[localCameraCacheInfo.deviceID];
          localCameraCacheInfo.characteristics = this.mCameraManager.getCameraCharacteristics(localCameraCacheInfo.deviceIDString);
          localCameraCacheInfo.device = null;
          localCameraCacheInfo.session = null;
          localCameraCacheInfo.builder = null;
          localCameraCacheInfo.surfaces = null;
          localCameraCacheInfo.reader = null;
          localCameraCacheInfo.images = null;
          localCameraCacheInfo.imageSemaphore = null;
          localCameraCacheInfo.overrideWidth = 0;
          localCameraCacheInfo.bufferWidth = 0;
          localCameraCacheInfo.overrideHeight = 0;
          localCameraCacheInfo.bufferHeight = 0;
          localCameraCacheInfo.bufferFormatPL = 268439808;
          localCameraCacheInfo.overrideFormatPL = 268439808;
          localCameraCacheInfo.overrideFormatAndroid = 0;
          localCameraCacheInfo.caps = null;
          localCameraCacheInfo.status = 268443649;
          localCameraCacheInfo.isAutoFocusing = false;
          localCameraCacheInfo.requestFormatPL = 268439817;
          localCameraCacheInfo.requestFormatAndroid = 35;
          Size[] arrayOfSize = ((StreamConfigurationMap)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(localCameraCacheInfo.requestFormatAndroid);
          if ((arrayOfSize != null) && (arrayOfSize.length > 0))
          {
            i6 = arrayOfSize[0].getWidth();
            localCameraCacheInfo.requestWidth = i6;
            if ((arrayOfSize == null) || (arrayOfSize.length <= 0)) {
              continue;
            }
            i7 = arrayOfSize[0].getHeight();
            localCameraCacheInfo.requestHeight = i7;
            localObject1 = localCameraCacheInfo;
            m = 0;
            n = 10;
            ((CameraCacheInfo)localObject1).thread = new HandlerThread(((CameraCacheInfo)localObject1).deviceIDString + "_camera_thread");
            ((CameraCacheInfo)localObject1).thread.start();
            ((CameraCacheInfo)localObject1).handler = new Handler(((CameraCacheInfo)localObject1).thread.getLooper());
            i1 = n;
            i2 = m;
          }
        }
        catch (CameraAccessException localCameraAccessException)
        {
          int i6;
          int i7;
          int n;
          int i1;
          CaptureRequest.Builder localBuilder;
          SystemTools.setSystemErrorCode(6);
          return -1;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          SystemTools.setSystemErrorCode(6);
          return -1;
        }
        try
        {
          this.mOpenCloseSemaphore.acquire();
          this.mCameraCacheInfosInProgress.add(localObject1);
          this.mCameraManager.openCamera(((CameraCacheInfo)localObject1).deviceIDString, new CameraDevice.StateCallback()
          {
            public void onDisconnected(CameraDevice paramAnonymousCameraDevice)
            {
              paramAnonymousCameraDevice.close();
              Camera2_Preview.this.mOpenCloseSemaphore.release();
            }
            
            public void onError(CameraDevice paramAnonymousCameraDevice, int paramAnonymousInt)
            {
              paramAnonymousCameraDevice.close();
              Camera2_Preview.this.mOpenCloseSemaphore.release();
            }
            
            public void onOpened(CameraDevice paramAnonymousCameraDevice)
            {
              Object localObject1 = null;
              for (;;)
              {
                try
                {
                  Iterator localIterator = Camera2_Preview.this.mCameraCacheInfosInProgress.iterator();
                  if (localIterator.hasNext())
                  {
                    localObject3 = (Camera2_Preview.CameraCacheInfo)localIterator.next();
                    boolean bool = ((Camera2_Preview.CameraCacheInfo)localObject3).deviceIDString.equals(paramAnonymousCameraDevice.getId());
                    if (!bool) {
                      break label194;
                    }
                  }
                }
                catch (CameraAccessException localCameraAccessException1)
                {
                  localObject1.builder = null;
                  localObject1.device = null;
                  return;
                }
                catch (IllegalArgumentException localIllegalArgumentException1)
                {
                  localObject1.builder = null;
                  localObject1.device = null;
                  return;
                }
                catch (IllegalStateException localIllegalStateException1)
                {
                  localObject1.builder = null;
                  localObject1.device = null;
                  return;
                }
                finally
                {
                  Camera2_Preview.this.mOpenCloseSemaphore.release();
                }
                try
                {
                  ((Camera2_Preview.CameraCacheInfo)localObject3).device = paramAnonymousCameraDevice;
                  ((Camera2_Preview.CameraCacheInfo)localObject3).builder = paramAnonymousCameraDevice.createCaptureRequest(1);
                  localObject1 = localObject3;
                }
                catch (IllegalStateException localIllegalStateException2)
                {
                  localObject1 = localObject3;
                  continue;
                }
                catch (IllegalArgumentException localIllegalArgumentException2)
                {
                  localObject1 = localObject3;
                  continue;
                }
                catch (CameraAccessException localCameraAccessException2)
                {
                  localObject1 = localObject3;
                  continue;
                }
                Camera2_Preview.this.mOpenCloseSemaphore.release();
                return;
                label194:
                Object localObject3 = localObject1;
              }
            }
          }, ((CameraCacheInfo)localObject1).handler);
          this.mOpenCloseSemaphore.acquire();
          this.mCameraCacheInfosInProgress.remove(localObject1);
          this.mOpenCloseSemaphore.release();
          if (((CameraCacheInfo)localObject1).device == null) {
            break label630;
          }
          localBuilder = ((CameraCacheInfo)localObject1).builder;
          if (localBuilder == null) {
            break label630;
          }
          i5 = 1;
          m = i5;
        }
        catch (Exception localException1)
        {
          m = i2;
          continue;
        }
        if ((m == 0) && (i1 > 0)) {}
        try {}catch (Exception localException2)
        {
          continue;
          if (((paramArrayOfInt1 == null) || (paramArrayOfInt1.length <= 0)) && ((paramArrayOfInt2 == null) || (paramArrayOfInt2.length <= 0))) {
            break label737;
          }
          int i3 = 1;
          if ((paramString == null) || (paramString.length() <= 0)) {
            break label743;
          }
          int i4 = 1;
          for (;;)
          {
            if ((i3 != 0) || (i4 != 0))
            {
              if (i3 != 0)
              {
                if ((paramArrayOfInt1 != null) && (paramArrayOfInt1.length != 5))
                {
                  SystemTools.setSystemErrorCode(2);
                  cleanupHandlerThread((CameraCacheInfo)localObject1);
                  return -1;
                  i3 = 0;
                  break;
                  i4 = 0;
                  continue;
                }
                if (!setCameraCaptureParams((CameraCacheInfo)localObject1, paramArrayOfInt1, paramArrayOfInt2))
                {
                  SystemTools.setSystemErrorCode(6);
                  cleanupHandlerThread((CameraCacheInfo)localObject1);
                  return -1;
                }
              }
              if ((i4 != 0) && (!setCustomCameraParams((CameraCacheInfo)localObject1, paramString)))
              {
                SystemTools.setSystemErrorCode(2);
                cleanupHandlerThread((CameraCacheInfo)localObject1);
                return -1;
              }
            }
          }
          ((CameraCacheInfo)localObject1).status = 268443650;
          if (k >= 0) {
            break label835;
          }
          this.mCameraCacheInfos.add(localObject1);
          return -1 + this.mCameraCacheInfos.size();
          return k;
        }
        try
        {
          wait(250L);
          if (m == 0)
          {
            n = i1 - 1;
            if (i1 > 0) {
              continue;
            }
          }
          if ((((CameraCacheInfo)localObject1).device != null) && (((CameraCacheInfo)localObject1).builder != null)) {
            break label657;
          }
          SystemTools.setSystemErrorCode(6);
          cleanupHandlerThread((CameraCacheInfo)localObject1);
          return -1;
        }
        finally {}
        k++;
        break;
        i6 = 0;
        continue;
        i7 = 0;
        continue;
        label630:
        int i5 = 0;
      }
      label737:
      label743:
      k = -1;
    }
  }
  
  public boolean setBatchParameters(int paramInt, String paramString)
  {
    if (paramString == null) {}
    CameraCacheInfo localCameraCacheInfo;
    do
    {
      return false;
      localCameraCacheInfo = getCameraCacheInfo(paramInt);
      if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null))
      {
        SystemTools.setSystemErrorCode(4);
        return false;
      }
    } while (!setCustomCameraParams(localCameraCacheInfo, paramString));
    return true;
  }
  
  public boolean setCaptureInfo(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if (localCameraCacheInfo == null)
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    if (paramArrayOfInt1.length != 5)
    {
      SystemTools.setSystemErrorCode(2);
      return false;
    }
    if (!setCameraCaptureParams(localCameraCacheInfo, paramArrayOfInt1, paramArrayOfInt2))
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    return true;
  }
  
  boolean setTypedCameraParameter(int paramInt1, int paramInt2, Object paramObject)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt1);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null))
    {
      SystemTools.setSystemErrorCode(4);
      return false;
    }
    int i = 0;
    label368:
    int i18;
    int i9;
    int i15;
    int i16;
    label1257:
    label1278:
    int i17;
    int i11;
    int i12;
    label1322:
    label1344:
    int i13;
    int i5;
    label1916:
    int i6;
    switch (paramInt2)
    {
    default: 
      return false;
    case 541065216: 
    case 536870913: 
    case 536870914: 
    case 536870916: 
    case 536870920: 
    case 536870928: 
    case 536870944: 
    case 536870976: 
    case 536871040: 
    case 536871168: 
    case 536871424: 
    case 536871936: 
    case 536872960: 
    case 536875008: 
    case 536879104: 
    case 536887296: 
    case 536903680: 
      do
      {
        for (;;)
        {
          try
          {
            if (CaptureRequest.CONTROL_CAPTURE_INTENT == null)
            {
              SystemTools.setSystemErrorCode(6);
              return false;
            }
            int i19 = ((Number)paramObject).intValue();
            CaptureRequest.Builder localBuilder = localCameraCacheInfo.builder;
            CaptureRequest.Key localKey2 = CaptureRequest.CONTROL_CAPTURE_INTENT;
            if (i19 != 0)
            {
              i20 = 3;
              localBuilder.set(localKey2, Integer.valueOf(i20));
              if (localCameraCacheInfo.session == null) {}
            }
          }
          catch (Exception localException2)
          {
            int i20;
            SystemTools.setSystemErrorCode(6);
            return false;
          }
          try
          {
            localCameraCacheInfo.session.setRepeatingRequest(localCameraCacheInfo.builder.build(), new OnFrameCapturedCallback(localCameraCacheInfo), localCameraCacheInfo.handler);
            if (i != 0) {}
            switch (paramInt2)
            {
            default: 
              return true;
            }
          }
          catch (CameraAccessException localCameraAccessException)
          {
            int i3;
            float[] arrayOfFloat1;
            int i4;
            float f1;
            int[] arrayOfInt1;
            int[] arrayOfInt2;
            SystemTools.setSystemErrorCode(6);
            return false;
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            SystemTools.setSystemErrorCode(6);
            return false;
          }
          catch (IllegalStateException localIllegalStateException)
          {
            SystemTools.setSystemErrorCode(6);
            return false;
          }
          i20 = 1;
          continue;
          if (CaptureRequest.FLASH_MODE == null)
          {
            SystemTools.setSystemErrorCode(6);
            return false;
          }
          switch (((Number)paramObject).intValue())
          {
          case 805306371: 
          default: 
            SystemTools.setSystemErrorCode(3);
            return false;
          case 805306370: 
            localCameraCacheInfo.builder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(2));
            i = 0;
            break;
          case 805306369: 
            localCameraCacheInfo.builder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(0));
            i = 0;
            break;
          case 805306372: 
            SystemTools.setSystemErrorCode(3);
            return false;
            if (CaptureRequest.CONTROL_AF_MODE == null)
            {
              SystemTools.setSystemErrorCode(6);
              return false;
            }
            int[] arrayOfInt4 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
            Arrays.sort(arrayOfInt4);
            switch (((Number)paramObject).intValue())
            {
            default: 
              SystemTools.setSystemErrorCode(3);
              return false;
            case 805306384: 
            case 805306400: 
              if (Arrays.binarySearch(arrayOfInt4, 1) == -1)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(1));
              i18 = 1;
              break;
            case 805306432: 
              if (Arrays.binarySearch(arrayOfInt4, 3) == -1)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(3));
              i18 = 0;
              break;
            case 805306496: 
              if (Arrays.binarySearch(arrayOfInt4, 2) == -1)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(2));
              i18 = 1;
              break;
            case 805306624: 
              if (CaptureRequest.LENS_FOCUS_DISTANCE == null)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              if (Arrays.binarySearch(arrayOfInt4, 0) == -1)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(0));
              localCameraCacheInfo.builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(0.0F));
              i18 = 0;
              break;
            case 805306880: 
              if (Arrays.binarySearch(arrayOfInt4, 0) == -1)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(0));
              i18 = 0;
              break;
              if (CaptureRequest.LENS_FOCUS_DISTANCE == null)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              Float localFloat = Float.valueOf(((Number)paramObject).floatValue());
              localCameraCacheInfo.builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, localFloat);
              i = 0;
              continue;
              SystemTools.setSystemErrorCode(6);
              return false;
              float[] arrayOfFloat2 = (float[])paramObject;
              if (arrayOfFloat2.length != 5)
              {
                SystemTools.setSystemErrorCode(2);
                return false;
              }
              if ((arrayOfFloat2[0] < 0.0F) || (arrayOfFloat2[0] > 1.0F) || (arrayOfFloat2[1] < 0.0F) || (arrayOfFloat2[1] > 1.0F) || (arrayOfFloat2[2] < 0.0F) || (arrayOfFloat2[2] > 1.0F) || (arrayOfFloat2[3] < 0.0F) || (arrayOfFloat2[3] > 1.0F) || (arrayOfFloat2[4] < 0.0F) || (arrayOfFloat2[4] > 1.0F))
              {
                SystemTools.setSystemErrorCode(2);
                return false;
              }
              Integer localInteger2 = (Integer)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
              if ((CaptureRequest.CONTROL_AF_REGIONS == null) || (localInteger2 == null) || (localInteger2.intValue() == 0))
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              Rect localRect = (Rect)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
              if (localRect == null)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              MeteringRectangle[] arrayOfMeteringRectangle3 = new MeteringRectangle[1];
              arrayOfMeteringRectangle3[0] = new MeteringRectangle(new Rect(Math.min((int)(arrayOfFloat2[0] * localRect.width()), -1 + localRect.width()), Math.min((int)(arrayOfFloat2[1] * localRect.height()), -1 + localRect.height()), Math.min((int)(arrayOfFloat2[2] * localRect.width()), -1 + localRect.width()), Math.min((int)(arrayOfFloat2[3] * localRect.height()), -1 + localRect.height())), (int)(0.0F + 1000.0F * arrayOfFloat2[4]));
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_REGIONS, arrayOfMeteringRectangle3);
              i = 1;
              continue;
              i9 = ((Number)paramObject).intValue();
              int[] arrayOfInt3 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
              if ((arrayOfInt3 != null) && (CaptureRequest.CONTROL_AE_MODE != null)) {
                break label2458;
              }
              SystemTools.setSystemErrorCode(6);
              return false;
              SystemTools.setSystemErrorCode(3);
              return false;
              int i14 = arrayOfInt3.length;
              i15 = 0;
              i16 = 0;
              if (i16 >= i14) {
                break label2444;
              }
              if (arrayOfInt3[i16] != 0) {
                break label2508;
              }
              i15 = 1;
              break label2496;
              if (i17 == 0)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(0));
              i = 0;
              continue;
              int i10 = arrayOfInt3.length;
              i11 = 0;
              i12 = 0;
              if (i12 >= i10) {
                break label2437;
              }
              if (arrayOfInt3[i12] != 1) {
                break label2532;
              }
              i11 = 1;
              break label2520;
              if (i13 == 0)
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(1));
              i = 0;
              continue;
              Range localRange3 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
              if ((localRange3 == null) || (CaptureRequest.SENSOR_SENSITIVITY == null))
              {
                SystemTools.setSystemErrorCode(6);
                return false;
              }
              int i8 = ((Number)paramObject).intValue();
              if (localRange3.contains(Integer.valueOf(i8)))
              {
                localCameraCacheInfo.builder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(i8));
                i = 0;
              }
              else
              {
                SystemTools.setSystemErrorCode(6);
                return false;
                SystemTools.setSystemErrorCode(6);
                return false;
                Range localRange2 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
                if ((localRange2 == null) || (CaptureRequest.SENSOR_EXPOSURE_TIME == null))
                {
                  SystemTools.setSystemErrorCode(6);
                  return false;
                }
                Long localLong = Long.valueOf(Math.round(1000000000.0D * ((Number)paramObject).floatValue()));
                if (localRange2.contains(localLong))
                {
                  localCameraCacheInfo.builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, localLong);
                  i = 0;
                }
                else
                {
                  SystemTools.setSystemErrorCode(6);
                  return false;
                  SystemTools.setSystemErrorCode(6);
                  return false;
                  float f2 = ((Number)paramObject).floatValue();
                  Range localRange1 = (Range)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
                  Rational localRational = (Rational)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
                  if ((EMPTY_RANGE.equals(localRange1)) || (CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION == null) || (localRational == null) || (CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP == null))
                  {
                    SystemTools.setSystemErrorCode(6);
                    return false;
                  }
                  int i7 = Math.round(f2 / localRational.floatValue());
                  if (localRange1.contains(Integer.valueOf(i7)))
                  {
                    localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(i7));
                    i = 0;
                  }
                  else
                  {
                    SystemTools.setSystemErrorCode(6);
                    return false;
                    SystemTools.setSystemErrorCode(6);
                    return false;
                    switch (((Number)paramObject).intValue())
                    {
                    default: 
                      SystemTools.setSystemErrorCode(3);
                      return false;
                    case 806354944: 
                      if (CaptureRequest.CONTROL_AWB_LOCK == null)
                      {
                        SystemTools.setSystemErrorCode(6);
                        return false;
                      }
                      localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(true));
                      i = 0;
                      break;
                    case 809500672: 
                      if ((CaptureRequest.CONTROL_AWB_LOCK != null) && (((Boolean)localCameraCacheInfo.builder.get(CaptureRequest.CONTROL_AWB_LOCK)).booleanValue())) {
                        localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(false));
                      }
                      CaptureRequest.Key localKey1 = CaptureRequest.CONTROL_AWB_MODE;
                      i = 0;
                      if (localKey1 != null)
                      {
                        localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(1));
                        i = 0;
                      }
                      break;
                    }
                  }
                }
              }
              break;
            }
            break;
          }
        }
        SystemTools.setSystemErrorCode(6);
        return false;
        SystemTools.setSystemErrorCode(6);
        return false;
        i3 = ((Number)paramObject).intValue();
        arrayOfFloat1 = (float[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
        if ((arrayOfFloat1 == null) || (CaptureRequest.LENS_FOCAL_LENGTH == null))
        {
          SystemTools.setSystemErrorCode(6);
          return false;
        }
        i4 = arrayOfFloat1.length;
        i5 = 0;
        if (i5 >= i4) {
          break label2431;
        }
        f1 = arrayOfFloat1[i5];
        if (Math.abs(f1 - i3) >= 0.01F) {
          break label2544;
        }
        i6 = 1;
        localCameraCacheInfo.builder.set(CaptureRequest.LENS_FOCAL_LENGTH, Float.valueOf(f1));
        i = 0;
      } while (i6 != 0);
      SystemTools.setSystemErrorCode(2);
      return false;
    case 536936448: 
      SystemTools.setSystemErrorCode(6);
      return false;
    case 537001984: 
      SystemTools.setSystemErrorCode(6);
      return false;
    case 537133056: 
      SystemTools.setSystemErrorCode(6);
      return false;
    case 537395200: 
      SystemTools.setSystemErrorCode(6);
      return false;
    case 537919488: 
      SystemTools.setSystemErrorCode(6);
      return false;
    case 538968064: 
      label1965:
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    arrayOfInt1 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION);
    int j;
    if ((arrayOfInt1 != null) && (arrayOfInt1.length > 1) && (CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE != null))
    {
      j = 1;
      label2058:
      arrayOfInt2 = (int[])localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
      if ((arrayOfInt2 == null) || (arrayOfInt2.length <= 1) || (CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE == null)) {
        break label2556;
      }
    }
    label2437:
    label2444:
    label2458:
    label2496:
    label2508:
    label2514:
    label2520:
    label2532:
    label2538:
    label2544:
    label2556:
    for (int k = 1;; k = 0)
    {
      for (;;)
      {
        if ((j == 0) && (k == 0))
        {
          SystemTools.setSystemErrorCode(6);
          return false;
        }
        boolean bool = ((Boolean)paramObject).booleanValue();
        if (j != 0) {
          localCameraCacheInfo.builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, Integer.valueOf(0));
        }
        if (k != 0) {
          localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(0));
        }
        i = 0;
        if (!bool) {
          break;
        }
        if (j != 0)
        {
          localCameraCacheInfo.builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, Integer.valueOf(1));
          i = 0;
          break;
        }
        i = 0;
        if (k == 0) {
          break;
        }
        localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(1));
        i = 0;
        break;
        try
        {
          Integer localInteger1 = (Integer)localCameraCacheInfo.characteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
          if ((localInteger1 != null) && (CameraCharacteristics.CONTROL_MAX_REGIONS_AF != null) && (localInteger1.intValue() > 0) && (CaptureRequest.CONTROL_AF_REGIONS != null))
          {
            MeteringRectangle[] arrayOfMeteringRectangle1 = (MeteringRectangle[])localCameraCacheInfo.builder.get(CaptureRequest.CONTROL_AF_REGIONS);
            if ((arrayOfMeteringRectangle1 != null) && (arrayOfMeteringRectangle1.length > 0))
            {
              MeteringRectangle[] arrayOfMeteringRectangle2 = new MeteringRectangle[arrayOfMeteringRectangle1.length];
              int m = 0;
              int n = arrayOfMeteringRectangle1.length;
              int i1 = 0;
              while (i1 < n)
              {
                MeteringRectangle localMeteringRectangle = arrayOfMeteringRectangle1[i1];
                int i2 = m + 1;
                arrayOfMeteringRectangle2[m] = new MeteringRectangle(localMeteringRectangle.getRect(), 0);
                i1++;
                m = i2;
              }
              localCameraCacheInfo.builder.set(CaptureRequest.CONTROL_AF_REGIONS, arrayOfMeteringRectangle2);
            }
          }
          if (new AutofocusRunner(localCameraCacheInfo).triggerAutofocus()) {
            break label368;
          }
          SystemTools.setSystemErrorCode(6);
          return false;
        }
        catch (Exception localException1)
        {
          SystemTools.setSystemErrorCode(6);
          return false;
        }
      }
      label2431:
      i6 = 0;
      break label1965;
      i13 = i11;
      break label1344;
      i17 = i15;
      break label1278;
      i = i18;
      break;
      switch (i9)
      {
      }
      for (;;)
      {
        if (i15 == 0) {
          break label2514;
        }
        i17 = i15;
        break;
        i15 = 0;
      }
      i16++;
      break label1257;
      for (;;)
      {
        if (i11 == 0) {
          break label2538;
        }
        i13 = i11;
        break;
        i11 = 0;
      }
      i12++;
      break label1322;
      i5++;
      break label1916;
      j = 0;
      break label2058;
    }
  }
  
  boolean setUntypedCameraParameter(int paramInt, String paramString, Object paramObject)
  {
    CameraCacheInfo localCameraCacheInfo = getCameraCacheInfo(paramInt);
    if ((localCameraCacheInfo == null) || (localCameraCacheInfo.builder == null) || (localCameraCacheInfo.characteristics == null) || (paramString == null) || (paramObject == null)) {
      SystemTools.setSystemErrorCode(4);
    }
    CaptureRequest.Key localKey;
    Object localObject1;
    do
    {
      return false;
      List localList = localCameraCacheInfo.characteristics.getAvailableCaptureRequestKeys();
      for (int i = 0;; i++)
      {
        if (i >= localList.size()) {
          break label294;
        }
        localKey = (CaptureRequest.Key)localList.get(i);
        if (localKey.getName().equals(paramString)) {
          break;
        }
      }
      localObject1 = localCameraCacheInfo.builder.get(localKey);
    } while ((!(localObject1 instanceof Integer)) && (!(localObject1 instanceof Float)) && (!(localObject1 instanceof Boolean)) && (!(localObject1 instanceof Byte)) && (!(localObject1 instanceof Long)));
    if (((localObject1 instanceof Byte)) && ((paramObject instanceof Long))) {}
    for (Object localObject2 = new Byte(((Long)paramObject).byteValue());; localObject2 = paramObject)
    {
      if (((localObject1 instanceof Integer)) && ((localObject2 instanceof Long))) {
        localObject2 = new Integer(((Long)localObject2).intValue());
      }
      if (!localObject1.getClass().equals(localObject2.getClass())) {
        break;
      }
      try
      {
        localCameraCacheInfo.builder.set(localKey, localObject2);
        if (localCameraCacheInfo.session != null) {
          localCameraCacheInfo.session.setRepeatingRequest(localCameraCacheInfo.builder.build(), new OnFrameCapturedCallback(localCameraCacheInfo), localCameraCacheInfo.handler);
        }
        return true;
      }
      catch (Exception localException)
      {
        SystemTools.setSystemErrorCode(6);
        return false;
      }
      label294:
      SystemTools.setSystemErrorCode(6);
      return false;
    }
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
      if (localCameraCacheInfo.session == null)
      {
        this.mOpenCloseSemaphore.acquire();
        localCameraCacheInfo.device.createCaptureSession(localCameraCacheInfo.surfaces, new CameraCaptureSession.StateCallback()
        {
          public void onConfigureFailed(CameraCaptureSession paramAnonymousCameraCaptureSession)
          {
            paramAnonymousCameraCaptureSession.close();
            Camera2_Preview.this.mOpenCloseSemaphore.release();
          }
          
          public void onConfigured(CameraCaptureSession paramAnonymousCameraCaptureSession)
          {
            Iterator localIterator1 = Camera2_Preview.this.mCameraCacheInfos.iterator();
            Camera2_Preview.CameraCacheInfo localCameraCacheInfo;
            do
            {
              boolean bool = localIterator1.hasNext();
              localObject = null;
              if (!bool) {
                break;
              }
              localCameraCacheInfo = (Camera2_Preview.CameraCacheInfo)localIterator1.next();
            } while (!localCameraCacheInfo.deviceIDString.equals(paramAnonymousCameraCaptureSession.getDevice().getId()));
            Object localObject = localCameraCacheInfo;
            localObject.session = paramAnonymousCameraCaptureSession;
            Iterator localIterator2 = localObject.surfaces.iterator();
            while (localIterator2.hasNext())
            {
              Surface localSurface = (Surface)localIterator2.next();
              localObject.builder.addTarget(localSurface);
            }
            Camera2_Preview.this.mOpenCloseSemaphore.release();
          }
        }, localCameraCacheInfo.handler);
        this.mOpenCloseSemaphore.acquire();
        this.mOpenCloseSemaphore.release();
        if (localCameraCacheInfo.session == null)
        {
          SystemTools.setSystemErrorCode(6);
          return false;
        }
      }
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
      return false;
    }
    localCameraCacheInfo.session.setRepeatingRequest(localCameraCacheInfo.builder.build(), new OnFrameCapturedCallback(localCameraCacheInfo), localCameraCacheInfo.handler);
    localCameraCacheInfo.status = 268443651;
    this.mCameraCacheInfoIndexCache.put(localCameraCacheInfo.reader, Integer.valueOf(paramInt));
    return true;
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
      localCameraCacheInfo.session.abortCaptures();
      localCameraCacheInfo.status = 268443650;
      return true;
    }
    catch (Exception localException)
    {
      SystemTools.setSystemErrorCode(6);
    }
    return false;
  }
  
  private class AutofocusRunner
    extends CameraCaptureSession.CaptureCallback
  {
    private Camera2_Preview.CameraCacheInfo mCCI;
    private CaptureRequest mCancelRequest;
    private CaptureRequest mFocusRequest;
    
    public AutofocusRunner(Camera2_Preview.CameraCacheInfo paramCameraCacheInfo)
    {
      this.mCCI = paramCameraCacheInfo;
      this.mCancelRequest = null;
      this.mFocusRequest = null;
    }
    
    public void onCaptureCompleted(CameraCaptureSession paramCameraCaptureSession, CaptureRequest paramCaptureRequest, TotalCaptureResult paramTotalCaptureResult)
    {
      super.onCaptureCompleted(paramCameraCaptureSession, paramCaptureRequest, paramTotalCaptureResult);
      Integer localInteger = (Integer)paramTotalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
      if ((paramCaptureRequest.equals(this.mCancelRequest)) && (localInteger.intValue() == 0)) {}
      for (;;)
      {
        try
        {
          paramCameraCaptureSession.capture(this.mFocusRequest, this, this.mCCI.handler);
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          return;
        }
        catch (CameraAccessException localCameraAccessException) {}
        if ((paramCaptureRequest.equals(this.mFocusRequest)) && ((localInteger.intValue() == 4) || (localInteger.intValue() == 5)))
        {
          this.mCCI.isAutoFocusing = false;
          return;
        }
      }
    }
    
    public boolean triggerAutofocus()
      throws CameraAccessException
    {
      if ((this.mCCI == null) || (this.mCCI.builder == null) || (this.mCCI.session == null)) {
        return false;
      }
      Integer localInteger = (Integer)this.mCCI.builder.get(CaptureRequest.CONTROL_AF_MODE);
      if ((CaptureRequest.CONTROL_AF_MODE == null) || (localInteger == null)) {
        return false;
      }
      if ((localInteger.intValue() != 1) && (localInteger.intValue() != 2)) {
        return false;
      }
      this.mCCI.isAutoFocusing = true;
      this.mCCI.builder.set(CaptureRequest.CONTROL_AF_TRIGGER, Integer.valueOf(2));
      this.mCancelRequest = this.mCCI.builder.build();
      this.mCCI.builder.set(CaptureRequest.CONTROL_AF_TRIGGER, Integer.valueOf(0));
      this.mCCI.builder.set(CaptureRequest.CONTROL_AF_TRIGGER, Integer.valueOf(1));
      this.mFocusRequest = this.mCCI.builder.build();
      this.mCCI.builder.set(CaptureRequest.CONTROL_AF_TRIGGER, Integer.valueOf(0));
      this.mCCI.session.capture(this.mCancelRequest, this, this.mCCI.handler);
      return true;
    }
  }
  
  public class CameraCacheInfo
  {
    int bufferFormatPL;
    int bufferHeight;
    int bufferWidth;
    CaptureRequest.Builder builder;
    int[] caps;
    CameraCharacteristics characteristics;
    CameraDevice device;
    long deviceHandle;
    int deviceID;
    String deviceIDString;
    Handler handler;
    Semaphore imageSemaphore;
    Image[] images;
    boolean isAutoFocusing;
    CaptureResult lastResult;
    int overrideFormatAndroid;
    int overrideFormatPL;
    int overrideHeight;
    int overrideWidth;
    ImageReader reader;
    int requestFormatAndroid;
    int requestFormatPL;
    int requestFramerate;
    int requestHeight;
    int requestWidth;
    CameraCaptureSession session;
    int status;
    List<Surface> surfaces;
    HandlerThread thread;
    
    public CameraCacheInfo() {}
  }
  
  public class FrameInfo
  {
    long exposureTime;
    int iso;
    long timestamp;
    
    public FrameInfo() {}
  }
  
  private class OnCameraDataAvailable
    implements ImageReader.OnImageAvailableListener
  {
    private int[] actualBufferSize = null;
    private int actualCaptureFormat = 268439808;
    private long prevTimestamp = -1L;
    
    private OnCameraDataAvailable() {}
    
    private int[] calculateActualBufferSize(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      int i;
      int[] arrayOfInt;
      if (((paramInt5 == 268439815) || (paramInt5 == 268439817)) && (paramLong1 + paramInt4 * paramInt3 != paramLong2))
      {
        i = 1;
        arrayOfInt = null;
        if (i != 0)
        {
          arrayOfInt = new int[4];
          arrayOfInt[0] = paramInt1;
          arrayOfInt[1] = ((int)((paramLong2 - paramLong1) / paramInt1));
          arrayOfInt[2] = paramInt2;
          if ((paramInt5 != 268439815) && (paramInt5 != 268439817)) {
            break label153;
          }
          arrayOfInt[3] = (paramInt4 / 2);
        }
      }
      label153:
      while ((paramInt5 != 268439818) && (paramInt5 != 268439828))
      {
        return arrayOfInt;
        if (paramInt5 != 268439818)
        {
          i = 0;
          if (paramInt5 != 268439828) {
            break;
          }
        }
        if (paramLong1 + paramInt4 * paramInt3 == paramLong2)
        {
          boolean bool = paramLong2 + paramInt4 / 2 * (paramInt3 / 2) < paramLong3;
          i = 0;
          if (!bool) {
            break;
          }
        }
        i = 1;
        break;
      }
      arrayOfInt[3] = ((int)((paramLong3 - paramLong2) / paramInt2));
      return arrayOfInt;
    }
    
    private int getImageFormat(Image paramImage)
    {
      if ((paramImage == null) || (paramImage.getPlanes().length != 3) || (paramImage.getFormat() != 35)) {}
      Image.Plane localPlane1;
      Image.Plane localPlane2;
      long[] arrayOfLong;
      do
      {
        do
        {
          Image.Plane localPlane3;
          do
          {
            return 268439808;
            localPlane1 = paramImage.getPlanes()[0];
            localPlane2 = paramImage.getPlanes()[1];
            localPlane3 = paramImage.getPlanes()[2];
          } while ((localPlane1.getPixelStride() != 1) || (localPlane2.getPixelStride() != localPlane3.getPixelStride()) || (localPlane2.getRowStride() != localPlane3.getRowStride()));
          arrayOfLong = new long[3];
          arrayOfLong[0] = Camera2_Preview.this.getBufferAddress(localPlane1.getBuffer());
          arrayOfLong[1] = Camera2_Preview.this.getBufferAddress(localPlane2.getBuffer());
          arrayOfLong[2] = Camera2_Preview.this.getBufferAddress(localPlane3.getBuffer());
        } while ((arrayOfLong[0] == 0L) || (arrayOfLong[1] == 0L) || (arrayOfLong[2] == 0L));
        if (localPlane2.getPixelStride() == 2)
        {
          if (1L + arrayOfLong[1] == arrayOfLong[2])
          {
            this.actualBufferSize = calculateActualBufferSize(arrayOfLong[0], arrayOfLong[1], arrayOfLong[2], localPlane1.getRowStride(), localPlane2.getRowStride(), paramImage.getWidth(), paramImage.getHeight(), 268439815);
            return 268439815;
          }
          if (1L + arrayOfLong[2] == arrayOfLong[1])
          {
            this.actualBufferSize = calculateActualBufferSize(arrayOfLong[0], arrayOfLong[2], arrayOfLong[1], localPlane1.getRowStride(), localPlane2.getRowStride(), paramImage.getWidth(), paramImage.getHeight(), 268439817);
            return 268439817;
          }
        }
      } while (localPlane2.getPixelStride() != 1);
      if (arrayOfLong[1] < arrayOfLong[2])
      {
        this.actualBufferSize = calculateActualBufferSize(arrayOfLong[0], arrayOfLong[1], arrayOfLong[2], localPlane1.getRowStride(), localPlane2.getRowStride(), paramImage.getWidth(), paramImage.getHeight(), 268439818);
        return 268439818;
      }
      this.actualBufferSize = calculateActualBufferSize(arrayOfLong[0], arrayOfLong[2], arrayOfLong[1], localPlane1.getRowStride(), localPlane2.getRowStride(), paramImage.getWidth(), paramImage.getHeight(), 268439828);
      return 268439828;
    }
    
    public void onImageAvailable(ImageReader paramImageReader)
    {
      Trace.beginSection("onImageAvailable (java)");
      Integer localInteger1 = (Integer)Camera2_Preview.this.mCameraCacheInfoIndexCache.get(paramImageReader);
      if (localInteger1 == null) {
        Trace.endSection();
      }
      Camera2_Preview.CameraCacheInfo localCameraCacheInfo;
      Image localImage;
      Camera2_Preview.FrameInfo localFrameInfo;
      do
      {
        return;
        localCameraCacheInfo = (Camera2_Preview.CameraCacheInfo)Camera2_Preview.this.mCameraCacheInfos.get(localInteger1.intValue());
        if (localCameraCacheInfo == null)
        {
          Trace.endSection();
          return;
        }
        if (!localCameraCacheInfo.imageSemaphore.tryAcquire())
        {
          DebugLog.LOGE("Camera2_Preview", "Unable to aquire image semaphore, need to free some buffers!!");
          Trace.endSection();
          return;
        }
        if (paramImageReader.getMaxImages() <= 0) {
          break;
        }
        localImage = paramImageReader.acquireLatestImage();
        if (localImage == null) {
          break;
        }
        localFrameInfo = new Camera2_Preview.FrameInfo(Camera2_Preview.this);
        localFrameInfo.timestamp = localImage.getTimestamp();
        CaptureResult localCaptureResult = localCameraCacheInfo.lastResult;
        if (localCaptureResult != null)
        {
          Long localLong = (Long)localCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
          if (localLong != null)
          {
            localFrameInfo.exposureTime = localLong.longValue();
            localFrameInfo.timestamp += localLong.longValue();
          }
          Integer localInteger2 = (Integer)localCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
          if (localInteger2 != null) {
            localFrameInfo.iso = localInteger2.intValue();
          }
        }
      } while (localFrameInfo.timestamp <= this.prevTimestamp);
      this.prevTimestamp = localFrameInfo.timestamp;
      if (this.actualCaptureFormat == 268439808) {
        this.actualCaptureFormat = getImageFormat(localImage);
      }
      Camera2_Preview.this.newFrameAvailable(localCameraCacheInfo.deviceHandle, localInteger1.intValue(), localCameraCacheInfo.bufferWidth, localCameraCacheInfo.bufferHeight, this.actualBufferSize, this.actualCaptureFormat, localImage.getPlanes()[0].getBuffer(), localFrameInfo);
      localImage.close();
      localCameraCacheInfo.imageSemaphore.release();
      Trace.endSection();
    }
  }
  
  private class OnFrameCapturedCallback
    extends CameraCaptureSession.CaptureCallback
  {
    Camera2_Preview.CameraCacheInfo mCCI;
    
    public OnFrameCapturedCallback(Camera2_Preview.CameraCacheInfo paramCameraCacheInfo)
    {
      this.mCCI = paramCameraCacheInfo;
    }
    
    public void onCaptureCompleted(CameraCaptureSession paramCameraCaptureSession, CaptureRequest paramCaptureRequest, TotalCaptureResult paramTotalCaptureResult)
    {
      if (this.mCCI != null) {
        this.mCCI.lastResult = paramTotalCaptureResult;
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.Camera2_Preview
 * JD-Core Version:    0.7.0.1
 */