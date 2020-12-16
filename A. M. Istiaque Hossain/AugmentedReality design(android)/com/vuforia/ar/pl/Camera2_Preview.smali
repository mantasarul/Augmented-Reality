.class public Lcom/vuforia/ar/pl/Camera2_Preview;
.super Ljava/lang/Object;
.source "Camera2_Preview.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;,
        Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;,
        Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;,
        Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;,
        Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;
    }
.end annotation


# static fields
.field private static final AR_CAMERA_DIRECTION_BACK:I = 0x10002011

.field private static final AR_CAMERA_DIRECTION_FRONT:I = 0x10002012

.field private static final AR_CAMERA_DIRECTION_UNKNOWN:I = 0x10002010

.field private static final AR_CAMERA_EXPOSUREMODE_AUTO:I = 0x30002000

.field private static final AR_CAMERA_EXPOSUREMODE_CONTINUOUSAUTO:I = 0x30004000

.field private static final AR_CAMERA_EXPOSUREMODE_LOCKED:I = 0x30001000

.field private static final AR_CAMERA_EXPOSUREMODE_MANUAL:I = 0x30008000

.field private static final AR_CAMERA_EXPOSUREMODE_SHUTTER_PRIORITY:I = 0x30010000

.field private static final AR_CAMERA_FOCUSMODE_AUTO:I = 0x30000020

.field private static final AR_CAMERA_FOCUSMODE_CONTINUOUSAUTO:I = 0x30000040

.field private static final AR_CAMERA_FOCUSMODE_FIXED:I = 0x30000200

.field private static final AR_CAMERA_FOCUSMODE_INFINITY:I = 0x30000100

.field private static final AR_CAMERA_FOCUSMODE_MACRO:I = 0x30000080

.field private static final AR_CAMERA_FOCUSMODE_NORMAL:I = 0x30000010

.field private static final AR_CAMERA_IMAGE_FORMAT_ARGB32:I = 0x10001105

.field private static final AR_CAMERA_IMAGE_FORMAT_ARGB8888:I = 0x10001105

.field private static final AR_CAMERA_IMAGE_FORMAT_BGR24:I = 0x1000110e

.field private static final AR_CAMERA_IMAGE_FORMAT_BGR888:I = 0x1000110e

.field private static final AR_CAMERA_IMAGE_FORMAT_BGRA32:I = 0x10001106

.field private static final AR_CAMERA_IMAGE_FORMAT_BGRA8888:I = 0x10001106

.field private static final AR_CAMERA_IMAGE_FORMAT_LUM:I = 0x10001101

.field private static final AR_CAMERA_IMAGE_FORMAT_NV12:I = 0x10001107

.field private static final AR_CAMERA_IMAGE_FORMAT_NV16:I = 0x10001108

.field private static final AR_CAMERA_IMAGE_FORMAT_NV21:I = 0x10001109

.field private static final AR_CAMERA_IMAGE_FORMAT_RGB24:I = 0x10001103

.field private static final AR_CAMERA_IMAGE_FORMAT_RGB565:I = 0x10001102

.field private static final AR_CAMERA_IMAGE_FORMAT_RGB888:I = 0x10001103

.field private static final AR_CAMERA_IMAGE_FORMAT_RGBA32:I = 0x10001104

.field private static final AR_CAMERA_IMAGE_FORMAT_RGBA4444:I = 0x1000110d

.field private static final AR_CAMERA_IMAGE_FORMAT_RGBA5551:I = 0x1000110c

.field private static final AR_CAMERA_IMAGE_FORMAT_RGBA8888:I = 0x10001104

.field private static final AR_CAMERA_IMAGE_FORMAT_UNKNOWN:I = 0x10001100

.field private static final AR_CAMERA_IMAGE_FORMAT_YUV420P:I = 0x10001114

.field private static final AR_CAMERA_IMAGE_FORMAT_YV12:I = 0x1000110a

.field private static final AR_CAMERA_IMAGE_FORMAT_YV16:I = 0x1000110b

.field private static final AR_CAMERA_PARAMTYPE_BASE:I = 0x20000000

.field private static final AR_CAMERA_PARAMTYPE_BRIGHTNESSRANGE:I = 0x20040000

.field private static final AR_CAMERA_PARAMTYPE_BRIGHTNESSVALUE:I = 0x20020000

.field private static final AR_CAMERA_PARAMTYPE_CONTRASTRANGE:I = 0x20100000

.field private static final AR_CAMERA_PARAMTYPE_CONTRASTVALUE:I = 0x20080000

.field private static final AR_CAMERA_PARAMTYPE_EXPOSUREMODE:I = 0x20000020

.field private static final AR_CAMERA_PARAMTYPE_EXPOSURETIME:I = 0x20000100

.field private static final AR_CAMERA_PARAMTYPE_EXPOSURETIMERANGE:I = 0x20000200

.field private static final AR_CAMERA_PARAMTYPE_EXPOSUREVALUE:I = 0x20000400

.field private static final AR_CAMERA_PARAMTYPE_EXPOSUREVALUERANGE:I = 0x20000800

.field private static final AR_CAMERA_PARAMTYPE_FOCUSMODE:I = 0x20000002

.field private static final AR_CAMERA_PARAMTYPE_FOCUSRANGE:I = 0x20000008

.field private static final AR_CAMERA_PARAMTYPE_FOCUSREGION:I = 0x20000010

.field private static final AR_CAMERA_PARAMTYPE_FOCUSVALUE:I = 0x20000004

.field private static final AR_CAMERA_PARAMTYPE_ISO:I = 0x20000040

.field private static final AR_CAMERA_PARAMTYPE_ISORANGE:I = 0x20000080

.field private static final AR_CAMERA_PARAMTYPE_LENS_IS_ADJUSTING:I = 0x20800000

.field private static final AR_CAMERA_PARAMTYPE_RECORDING_HINT:I = 0x20400000

.field private static final AR_CAMERA_PARAMTYPE_ROTATION:I = 0x20200000

.field private static final AR_CAMERA_PARAMTYPE_TORCHMODE:I = 0x20000001

.field private static final AR_CAMERA_PARAMTYPE_VIDEO_STABILIZATION:I = 0x21000000

.field private static final AR_CAMERA_PARAMTYPE_WHITEBALANCEMODE:I = 0x20001000

.field private static final AR_CAMERA_PARAMTYPE_WHITEBALANCERANGE:I = 0x20004000

.field private static final AR_CAMERA_PARAMTYPE_WHITEBALANCEVALUE:I = 0x20002000

.field private static final AR_CAMERA_PARAMTYPE_ZOOMRANGE:I = 0x20010000

.field private static final AR_CAMERA_PARAMTYPE_ZOOMVALUE:I = 0x20008000

.field private static final AR_CAMERA_PARAMVALUE_BASE:I = 0x30000000

.field private static final AR_CAMERA_STATUS_CAPTURE_RUNNING:I = 0x10002003

.field private static final AR_CAMERA_STATUS_OPENED:I = 0x10002002

.field private static final AR_CAMERA_STATUS_UNINITIALIZED:I = 0x10002001

.field private static final AR_CAMERA_STATUS_UNKNOWN:I = 0x10002000

.field private static final AR_CAMERA_TORCHMODE_AUTO:I = 0x30000004

.field private static final AR_CAMERA_TORCHMODE_CONTINUOUSAUTO:I = 0x30000008

.field private static final AR_CAMERA_TORCHMODE_OFF:I = 0x30000001

.field private static final AR_CAMERA_TORCHMODE_ON:I = 0x30000002

.field private static final AR_CAMERA_TYPE_MONO:I = 0x10003011

.field private static final AR_CAMERA_TYPE_STEREO:I = 0x10003012

.field private static final AR_CAMERA_TYPE_UNKNOWN:I = 0x10003010

.field private static final AR_CAMERA_WHITEBALANCEMODE_AUTO:I = 0x30200000

.field private static final AR_CAMERA_WHITEBALANCEMODE_CONTINUOUSAUTO:I = 0x30400000

.field private static final AR_CAMERA_WHITEBALANCEMODE_LOCKED:I = 0x30100000

.field private static final CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_FRAMERATES:I = 0x4

.field private static final CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_IMAGEFORMATS:I = 0x5

.field private static final CAMERA_CAPSINFO_VALUE_NUM_SUPPORTED_IMAGESIZES:I = 0x3

.field private static final CAMERA_CAPSINFO_VALUE_SUPPORTED_PARAMVALUES:I = 0x2

.field private static final CAMERA_CAPSINFO_VALUE_SUPPORTED_QUERYABLE_PARAMS:I = 0x0

.field private static final CAMERA_CAPSINFO_VALUE_SUPPORTED_SETTABLE_PARAMS:I = 0x1

.field private static final CAMERA_CAPTUREINFO_VALUE_FORMAT:I = 0x2

.field private static final CAMERA_CAPTUREINFO_VALUE_FRAMERATE:I = 0x3

.field private static final CAMERA_CAPTUREINFO_VALUE_HEIGHT:I = 0x1

.field private static final CAMERA_CAPTUREINFO_VALUE_PREVIEWSURFACEENABLED:I = 0x4

.field private static final CAMERA_CAPTUREINFO_VALUE_WIDTH:I = 0x0

.field private static final CAMERA_VALID_IMAGE_FORMAT_PL:[I = null

.field private static final EMPTY_RANGE:Landroid/util/Range; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOCUS_MODE_NORMAL:Ljava/lang/String; = "normal"

.field private static final MAX_HIGHEST_FPS_ALLOWED:I = 0x12c

.field private static final MAX_LOWEST_FPS_ALLOWED:I = 0x96

.field private static final MODULENAME:Ljava/lang/String; = "Camera2_Preview"

.field private static final NUM_CAPTURE_BUFFERS:I = 0x2

.field private static final NUM_MAX_CAMERAOPEN_RETRY:I = 0xa

.field private static final TIME_CAMERAOPEN_RETRY_DELAY_MS:I = 0xfa

.field private static final _NUM_CAMERA_CAPSINFO_VALUE_:I = 0x6

.field private static final _NUM_CAMERA_CAPTUREINFO_VALUE_:I = 0x5


# instance fields
.field private mCameraCacheInfoIndexCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/ImageReader;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraCacheInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraCacheInfosInProgress:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mIsPermissionGranted:I

.field private mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vuforia/ar/pl/Camera2_Preview;->CAMERA_VALID_IMAGE_FORMAT_PL:[I

    .line 274
    new-instance v0, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/vuforia/ar/pl/Camera2_Preview;->EMPTY_RANGE:Landroid/util/Range;

    return-void

    .line 247
    nop

    :array_0
    .array-data 0x4
        0x9t 0x11t 0x0t 0x10t
        0x7t 0x11t 0x0t 0x10t
        0xat 0x11t 0x0t 0x10t
        0x14t 0x11t 0x0t 0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mIsPermissionGranted:I

    .line 651
    iput-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    .line 652
    iput-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;

    .line 653
    iput-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;

    .line 654
    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vuforia/ar/pl/Camera2_Preview;JIII[IILjava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p9}, Lcom/vuforia/ar/pl/Camera2_Preview;->newFrameAvailable(JIII[IILjava/nio/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vuforia/ar/pl/Camera2_Preview;Ljava/nio/ByteBuffer;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private checkCameraManager()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1094
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1109
    :goto_0
    return v0

    .line 1097
    :cond_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_1

    move v0, v2

    .line 1099
    goto :goto_0

    .line 1101
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1102
    if-nez v0, :cond_2

    move v0, v2

    .line 1103
    goto :goto_0

    .line 1105
    :cond_2
    const-string v3, "camera"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1106
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_3

    move v0, v2

    .line 1107
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1109
    goto :goto_0
.end method

.method public static checkMinimumHardwareSupportLevel(II)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1338
    const v0, 0x10002011

    if-ne p0, v0, :cond_1

    move v5, v2

    .line 1352
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 1353
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1354
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    move v4, v3

    .line 1355
    :goto_1
    array-length v1, v6

    if-ge v4, v1, :cond_0

    .line 1357
    aget-object v1, v6, v4

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 1358
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1361
    if-ne v1, v5, :cond_3

    .line 1363
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1367
    invoke-static {v0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->compareHardwareSupportLevel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_2

    move v0, v2

    :goto_2
    move v3, v0

    .line 1379
    :cond_0
    :goto_3
    return v3

    .line 1342
    :cond_1
    const v0, 0x10002012

    if-ne p0, v0, :cond_0

    move v5, v3

    .line 1344
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1367
    goto :goto_2

    .line 1355
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1375
    :catch_0
    move-exception v0

    .line 1377
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_3
.end method

.method private checkPermission()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 669
    iget v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mIsPermissionGranted:I

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 675
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 677
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mIsPermissionGranted:I

    .line 678
    iget v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mIsPermissionGranted:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 693
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1140
    iput-object v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    .line 1141
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1142
    iput-object v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->thread:Landroid/os/HandlerThread;

    .line 1143
    return-void
.end method

.method private static compareHardwareSupportLevel(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1122
    if-ne p0, p1, :cond_1

    .line 1124
    const/4 v0, 0x0

    .line 1135
    :cond_0
    :goto_0
    return v0

    .line 1126
    :cond_1
    if-ne p0, v2, :cond_2

    .line 1128
    if-gez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 1130
    :cond_2
    if-ne p1, v2, :cond_4

    .line 1132
    if-ltz p0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 1135
    :cond_4
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private native getBufferAddress(Ljava/nio/ByteBuffer;)J
.end method

.method private getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;
    .locals 1
    .parameter

    .prologue
    .line 778
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x0

    .line 785
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    goto :goto_0
.end method

.method private getCameraDeviceIndex(III)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 700
    const v0, 0x10003010

    if-eq p2, v0, :cond_0

    .line 711
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 727
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 771
    :goto_0
    return v0

    :pswitch_0
    move v3, v1

    .line 735
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 738
    :goto_2
    array-length v0, v4

    if-ge v2, v0, :cond_4

    .line 741
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 745
    if-ltz v3, :cond_1

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v3, v0, :cond_3

    .line 749
    :cond_1
    if-ltz p1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    move v0, v2

    .line 752
    goto :goto_0

    .line 718
    :pswitch_1
    const/4 v0, 0x1

    move v3, v0

    .line 719
    goto :goto_1

    :pswitch_2
    move v3, v2

    .line 723
    goto :goto_1

    .line 738
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 762
    :catch_0
    move-exception v0

    .line 769
    :cond_4
    :goto_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 771
    goto :goto_0

    .line 757
    :catch_1
    move-exception v0

    goto :goto_3

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x10002010
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSupportedPreviewFrameRates(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1050
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 1053
    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    .line 1054
    array-length v7, v0

    move v4, v3

    move v5, v1

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v0, v4

    .line 1057
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1058
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1054
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    move v2, v6

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1066
    if-ltz v2, :cond_1

    const/16 v1, 0x96

    if-ge v2, v1, :cond_1

    if-ltz v5, :cond_1

    const/16 v1, 0x12c

    if-lt v5, v1, :cond_3

    .line 1068
    :cond_1
    const-string v0, "Camera2_Preview"

    const-string v1, "Detected odd fps values from Camera2 API: low=%d, high=%d.  Using saner defaults instead."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1068
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_2
    return-object v4

    :cond_3
    move v1, v2

    .line 1076
    :goto_1
    if-gt v1, v5, :cond_2

    .line 1078
    array-length v6, v0

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v0, v2

    .line 1080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1082
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1078
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private mapStringToKey(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "TT;)",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    .line 852
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 854
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native newFrameAvailable(JIII[IILjava/nio/ByteBuffer;Ljava/lang/Object;)V
.end method

.method private setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 990
    .line 991
    packed-switch p2, :pswitch_data_0

    .line 1019
    :goto_0
    return-void

    .line 994
    :pswitch_0
    const/high16 v0, 0x3000

    .line 1007
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1011
    if-eqz p4, :cond_0

    .line 1013
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    aget v2, v1, p2

    shl-int v0, v4, v0

    or-int/2addr v0, v2

    aput v0, v1, p2

    goto :goto_0

    .line 999
    :pswitch_1
    const/high16 v0, 0x2000

    .line 1000
    goto :goto_1

    .line 1017
    :cond_0
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    aget v2, v1, p2

    shl-int v0, v4, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    aput v0, v1, p2

    goto :goto_0

    .line 991
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;[I[I)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 866
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 868
    :cond_0
    if-eqz p3, :cond_2

    aget v0, p3, v6

    :goto_0
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideWidth:I

    .line 869
    if-eqz p3, :cond_3

    aget v0, p3, v5

    :goto_1
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideHeight:I

    .line 870
    if-eqz p3, :cond_4

    aget v0, p3, v10

    :goto_2
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatPL:I

    .line 871
    if-eqz p3, :cond_5

    aget v0, p3, v10

    :goto_3
    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->translateImageFormatPLToAndroid(I)I

    move-result v0

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    .line 874
    :cond_1
    if-nez p2, :cond_6

    move v0, v5

    .line 957
    :goto_4
    return v0

    .line 868
    :cond_2
    aget v0, p2, v6

    goto :goto_0

    .line 869
    :cond_3
    aget v0, p2, v5

    goto :goto_1

    .line 870
    :cond_4
    aget v0, p2, v10

    goto :goto_2

    .line 871
    :cond_5
    aget v0, p2, v10

    goto :goto_3

    .line 880
    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_8

    :cond_7
    move v0, v6

    .line 883
    goto :goto_4

    .line 887
    :cond_8
    aget v0, p2, v6

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    .line 888
    aget v0, p2, v5

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I

    .line 889
    aget v0, p2, v10

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    .line 890
    aget v0, p2, v10

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->translateImageFormatPLToAndroid(I)I

    move-result v0

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    .line 891
    const/4 v0, 0x3

    aget v0, p2, v0

    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFramerate:I

    .line 894
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 895
    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 896
    if-nez v2, :cond_9

    move v0, v6

    .line 899
    goto :goto_4

    .line 903
    :cond_9
    array-length v3, v2

    move v1, v6

    move v0, v6

    :goto_5
    if-ge v1, v3, :cond_a

    aget-object v0, v2, v1

    .line 904
    new-instance v4, Landroid/util/Size;

    iget v7, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    iget v8, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 906
    :cond_a
    if-nez v0, :cond_c

    move v0, v6

    .line 909
    goto :goto_4

    .line 903
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 917
    :cond_c
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 918
    const/4 v4, 0x0

    .line 919
    const v2, 0x7fffffff

    .line 920
    array-length v8, v0

    move v7, v6

    :goto_6
    if-ge v7, v8, :cond_e

    aget-object v3, v0, v7

    .line 924
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v9, 0x96

    if-ge v1, v9, :cond_d

    .line 925
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v9, 0x12c

    if-lt v1, v9, :cond_f

    .line 927
    :cond_d
    const-string v1, "Camera2_Preview"

    const-string v2, "Detected odd fps values from Camera2 API: low=%d, high=%d.  Using first fps range as default instead of searching for perfect fit."

    new-array v4, v10, [Ljava/lang/Object;

    .line 929
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    aput-object v3, v4, v5

    .line 927
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    aget-object v4, v0, v6

    .line 947
    :cond_e
    if-nez v4, :cond_10

    move v0, v6

    .line 950
    goto/16 :goto_4

    .line 936
    :cond_f
    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFramerate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 938
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v9, v1

    .line 939
    if-ge v1, v2, :cond_11

    move-object v2, v3

    .line 920
    :goto_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-object v4, v2

    move v2, v1

    goto :goto_6

    .line 953
    :cond_10
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v0, v5

    .line 957
    goto/16 :goto_4

    :cond_11
    move v1, v2

    move-object v2, v4

    goto :goto_7
.end method

.method private setCustomCameraParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 792
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 844
    :goto_0
    return v0

    .line 799
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 809
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 811
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 824
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 825
    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_2

    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_4

    .line 828
    :cond_2
    iget-object v5, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v0, v5, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->mapStringToKey(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 829
    iget-object v5, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v0, v6, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->mapStringToKey(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 801
    :catch_0
    move-exception v0

    move v0, v1

    .line 805
    goto :goto_0

    .line 817
    :catch_1
    move-exception v0

    move v0, v1

    .line 821
    goto :goto_0

    :cond_3
    move v0, v1

    .line 833
    goto :goto_0

    :cond_4
    move v0, v1

    .line 839
    goto :goto_0

    .line 844
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupPreviewBuffer(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 965
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I

    iget v2, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    .line 966
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->imageSemaphore:Ljava/util/concurrent/Semaphore;

    .line 967
    new-array v0, v3, [Landroid/media/Image;

    iput-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->images:[Landroid/media/Image;

    .line 970
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferWidth:I

    .line 971
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I

    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideHeight:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    :goto_1
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferHeight:I

    .line 972
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    .line 973
    :goto_2
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    iget v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatPL:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    :goto_3
    iput v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferFormatPL:I

    .line 976
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    new-instance v1, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$1;)V

    iget-object v2, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 979
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    .line 981
    :cond_0
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 982
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    const/4 v0, 0x1

    return v0

    .line 970
    :cond_1
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideWidth:I

    goto :goto_0

    .line 971
    :cond_2
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideHeight:I

    goto :goto_1

    .line 972
    :cond_3
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    goto :goto_2

    .line 973
    :cond_4
    iget v0, p1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatPL:I

    goto :goto_3
.end method

.method private translateImageFormatPLToAndroid(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1024
    move v0, v1

    :goto_0
    sget-object v2, Lcom/vuforia/ar/pl/Camera2_Preview;->CAMERA_VALID_IMAGE_FORMAT_PL:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1026
    sget-object v2, Lcom/vuforia/ar/pl/Camera2_Preview;->CAMERA_VALID_IMAGE_FORMAT_PL:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_1

    .line 1028
    const/16 v1, 0x23

    .line 1032
    :cond_0
    return v1

    .line 1024
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1674
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1677
    if-nez v1, :cond_0

    .line 1679
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1719
    :goto_0
    return v0

    .line 1685
    :cond_0
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    :try_start_0
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_1

    .line 1692
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1693
    :cond_1
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_2

    .line 1694
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1695
    :cond_2
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    if-eqz v2, :cond_3

    .line 1696
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_3
    const/4 v0, 0x1

    .line 1705
    :goto_1
    iput-object v4, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1706
    iput-object v4, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    .line 1707
    iput-object v4, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->images:[Landroid/media/Image;

    .line 1710
    const v2, 0x10002001

    iput v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I

    .line 1713
    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera2_Preview;->cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 1716
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1699
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method getBitsPerPixel(I)I
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0xc

    .line 1038
    sparse-switch p1, :sswitch_data_0

    .line 1044
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 1042
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 1043
    goto :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x32315659 -> :sswitch_2
    .end sparse-switch
.end method

.method public getCameraCapabilities(I)[I
    .locals 23
    .parameter

    .prologue
    .line 1727
    invoke-direct/range {p0 .. p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkCameraManager()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1729
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1730
    const/4 v4, 0x0

    .line 1937
    :goto_0
    return-object v4

    .line 1734
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v17

    .line 1737
    if-nez v17, :cond_1

    .line 1739
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1741
    const/4 v4, 0x0

    goto :goto_0

    .line 1747
    :cond_1
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    if-eqz v4, :cond_2

    .line 1749
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    goto :goto_0

    .line 1756
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceID:I

    aget-object v4, v4, v5

    .line 1757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1772
    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v18

    .line 1773
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->getSupportedPreviewFrameRates(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v19

    .line 1774
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1775
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1777
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1778
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1781
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 1782
    const/16 v6, 0x23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    array-length v6, v0

    move/from16 v16, v6

    .line 1785
    :goto_1
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    move v15, v6

    .line 1786
    :goto_2
    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    move v8, v6

    .line 1788
    :goto_3
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 1789
    if-eqz v6, :cond_b

    array-length v6, v6

    if-lez v6, :cond_b

    const/4 v6, 0x1

    move v9, v6

    .line 1793
    :goto_4
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1794
    if-nez v6, :cond_22

    .line 1795
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v10, v6

    .line 1798
    :goto_5
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1799
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_c

    const/4 v6, 0x1

    move v11, v6

    .line 1802
    :goto_6
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    .line 1803
    if-eqz v6, :cond_d

    sget-object v7, Lcom/vuforia/ar/pl/Camera2_Preview;->EMPTY_RANGE:Landroid/util/Range;

    invoke-virtual {v7, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    move v12, v6

    .line 1806
    :goto_7
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    .line 1807
    if-eqz v6, :cond_e

    sget-object v7, Lcom/vuforia/ar/pl/Camera2_Preview;->EMPTY_RANGE:Landroid/util/Range;

    invoke-virtual {v7, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    move v13, v7

    .line 1810
    :goto_8
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 1811
    if-eqz v6, :cond_f

    sget-object v6, Lcom/vuforia/ar/pl/Camera2_Preview;->EMPTY_RANGE:Landroid/util/Range;

    invoke-virtual {v6, v7}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    move v14, v6

    .line 1815
    :goto_9
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1816
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1817
    if-eqz v6, :cond_3

    array-length v6, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    if-gt v6, v0, :cond_4

    :cond_3
    if-eqz v7, :cond_10

    array-length v6, v7

    const/4 v7, 0x1

    if-le v6, v7, :cond_10

    :cond_4
    const/4 v6, 0x1

    .line 1824
    :goto_a
    mul-int/lit8 v7, v16, 0x2

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v15

    add-int/2addr v7, v8

    .line 1829
    new-array v7, v7, [I

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    .line 1834
    const/16 v21, 0x0

    .line 1835
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/high16 v22, 0x2000

    aput v22, v7, v21

    .line 1836
    const v7, 0x20000001

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1837
    const v22, 0x20000002

    array-length v7, v4

    if-lez v7, :cond_11

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1838
    const v7, 0x20000004

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1839
    const v7, 0x20000010

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v11}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1840
    const v22, 0x20000020

    array-length v7, v5

    if-lez v7, :cond_12

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1841
    const v7, 0x20000400

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v12}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1842
    const v7, 0x20000800

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v12}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1843
    const v7, 0x20000040

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v13}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1844
    const v7, 0x20000080

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v13}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1845
    const v7, 0x20000100

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1846
    const v7, 0x20000200

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1847
    const v7, 0x20008000

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1848
    const/high16 v7, 0x2001

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1849
    const/high16 v7, 0x2100

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1852
    const/16 v21, 0x1

    .line 1853
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/high16 v22, 0x2000

    aput v22, v7, v21

    .line 1854
    const v7, 0x20000001

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1855
    const v22, 0x20000002

    array-length v7, v4

    if-lez v7, :cond_13

    const/4 v7, 0x1

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1856
    const v7, 0x20000010

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v11}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1857
    const v11, 0x20000020

    array-length v7, v5

    if-lez v7, :cond_14

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v11, v7}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1858
    const v7, 0x20000400

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v12}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1859
    const v7, 0x20000040

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v13}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1860
    const v7, 0x20000100

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1861
    const v7, 0x20008000

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1862
    const/high16 v7, 0x2100

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1865
    const/4 v7, 0x2

    .line 1866
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/high16 v9, 0x3000

    aput v9, v6, v7

    .line 1867
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1869
    const v6, 0x30000001

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1870
    const v6, 0x30000002

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v9}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1872
    :cond_5
    if-eqz v4, :cond_6

    .line 1875
    const v9, 0x30000010

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_15

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v9, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1876
    const v9, 0x30000020

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_16

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v9, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1877
    const v9, 0x30000040

    const/4 v6, 0x3

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_17

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v9, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1878
    const v9, 0x30000080

    const/4 v6, 0x2

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_18

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v9, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1882
    const v9, 0x30000100

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_19

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v9, v6}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1883
    const v6, 0x30000200

    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1a

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1886
    :cond_6
    if-eqz v5, :cond_7

    .line 1891
    const v6, 0x30001000

    const/4 v4, 0x0

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1b

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1892
    const v6, 0x30008000

    const/4 v4, 0x0

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1c

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1893
    const v6, 0x30004000

    const/4 v4, 0x1

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1d

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7, v6, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;IIZ)V

    .line 1897
    :cond_7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x3

    aput v16, v4, v5

    .line 1898
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x4

    aput v15, v4, v5

    .line 1899
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x5

    aput v8, v4, v5

    .line 1902
    const/4 v4, 0x6

    .line 1905
    if-lez v16, :cond_1e

    .line 1907
    move-object/from16 v0, v18

    array-length v7, v0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v7, :cond_1e

    aget-object v6, v18, v5

    .line 1909
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    aput v10, v9, v4

    .line 1910
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    aput v6, v9, v10

    .line 1911
    add-int/lit8 v6, v4, 0x2

    .line 1907
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_18

    .line 1758
    :catch_0
    move-exception v4

    .line 1759
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1761
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1762
    :catch_1
    move-exception v4

    .line 1763
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1765
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1784
    :cond_8
    const/4 v6, 0x0

    move/from16 v16, v6

    goto/16 :goto_1

    .line 1785
    :cond_9
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_2

    .line 1786
    :cond_a
    const/4 v6, 0x0

    move v8, v6

    goto/16 :goto_3

    .line 1789
    :cond_b
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_4

    .line 1799
    :cond_c
    const/4 v6, 0x0

    move v11, v6

    goto/16 :goto_6

    .line 1803
    :cond_d
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_7

    .line 1807
    :cond_e
    const/4 v7, 0x0

    move v13, v7

    goto/16 :goto_8

    .line 1811
    :cond_f
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_9

    .line 1817
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 1837
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 1840
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 1855
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 1857
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 1875
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 1876
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 1877
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_11

    .line 1878
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_12

    .line 1882
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_13

    .line 1883
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 1891
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_15

    .line 1892
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_16

    .line 1893
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 1916
    :cond_1e
    if-lez v15, :cond_20

    .line 1918
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1920
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v7, v5

    .line 1921
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 1922
    goto :goto_19

    :cond_1f
    move v4, v5

    .line 1926
    :cond_20
    if-lez v8, :cond_21

    .line 1928
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1930
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    aput v7, v4, v5

    .line 1931
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 1932
    goto :goto_1a

    .line 1937
    :cond_21
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    goto/16 :goto_0

    :cond_22
    move-object v10, v6

    goto/16 :goto_5
.end method

.method public getCaptureInfo(I)[I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1981
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v0

    .line 1984
    if-nez v0, :cond_0

    .line 1986
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2035
    :goto_0
    return-object v0

    .line 2000
    :cond_0
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [I

    .line 2001
    iget-object v3, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    if-eqz v3, :cond_1

    .line 2003
    const/4 v3, 0x0

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    aput v4, v2, v3

    .line 2004
    const/4 v3, 0x1

    iget-object v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    aput v4, v2, v3

    .line 2012
    :goto_1
    const/4 v3, 0x2

    iget v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    aput v4, v2, v3

    .line 2014
    iget-object v3, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v3, :cond_2

    .line 2016
    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2017
    const/4 v3, 0x3

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    .line 2025
    :goto_2
    const/4 v0, 0x4

    const/4 v3, 0x1

    aput v3, v2, v0

    move-object v0, v2

    .line 2035
    goto :goto_0

    .line 2008
    :cond_1
    const/4 v3, 0x0

    iget v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    aput v4, v2, v3

    .line 2009
    const/4 v3, 0x1

    iget v4, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2027
    :catch_0
    move-exception v0

    .line 2029
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2031
    goto :goto_0

    .line 2022
    :cond_2
    const/4 v3, 0x3

    :try_start_1
    iget v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFramerate:I

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getDeviceID(I)I
    .locals 1
    .parameter

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v0

    .line 1319
    if-nez v0, :cond_0

    .line 1321
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1323
    const/4 v0, -0x1

    .line 1327
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceID:I

    goto :goto_0
.end method

.method public getDirection(I)I
    .locals 5
    .parameter

    .prologue
    const v2, 0x10002011

    const/4 v4, 0x6

    const/4 v1, -0x1

    .line 1262
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1307
    :goto_0
    return v0

    .line 1269
    :cond_0
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkCameraManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1272
    goto :goto_0

    .line 1275
    :cond_1
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 1280
    array-length v3, v0

    if-ge p1, v3, :cond_2

    .line 1282
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1283
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1291
    const v0, 0x10002010

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 1287
    goto :goto_0

    .line 1289
    :pswitch_1
    const v0, 0x10002012

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1298
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1299
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1307
    goto :goto_0

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getNamedParameter(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2479
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v0

    .line 2482
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v2, :cond_1

    .line 2484
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2510
    :goto_0
    return-object v0

    .line 2489
    :cond_1
    iget-object v2, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v2

    .line 2490
    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 2492
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 2494
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2495
    if-nez v0, :cond_2

    move-object v0, v1

    .line 2496
    goto :goto_0

    .line 2497
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2499
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2501
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2502
    if-nez v0, :cond_4

    move-object v0, v1

    .line 2503
    goto :goto_0

    .line 2504
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2508
    :cond_5
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2510
    goto :goto_0
.end method

.method getNamedParameterCount(I)I
    .locals 2
    .parameter

    .prologue
    .line 2460
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v0

    .line 2463
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_1

    .line 2465
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2467
    const/4 v0, -0x1

    .line 2472
    :goto_0
    return v0

    .line 2470
    :cond_1
    iget-object v1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v1

    .line 2471
    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 2472
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v0, -0x1

    .line 1186
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1188
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1212
    :goto_0
    return v0

    .line 1193
    :cond_0
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkCameraManager()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1195
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1199
    :cond_1
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v1

    .line 1211
    :cond_2
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public getOrientation(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v1, -0x1

    .line 1222
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1254
    :goto_0
    return v0

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkCameraManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1232
    goto :goto_0

    .line 1235
    :cond_1
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 1240
    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 1242
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1244
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1253
    :cond_2
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v0, v1

    .line 1254
    goto :goto_0
.end method

.method getStatus(I)I
    .locals 1
    .parameter

    .prologue
    .line 3667
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v0

    .line 3670
    if-nez v0, :cond_0

    .line 3672
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3674
    const v0, 0x10002000

    .line 3677
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I

    goto :goto_0
.end method

.method getTypedCameraParameter(II)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x6

    const/4 v3, 0x0

    .line 3182
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v4

    .line 3185
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_2

    .line 3187
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3657
    :cond_1
    :goto_0
    return-object v0

    .line 3193
    :cond_2
    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->lastResult:Landroid/hardware/camera2/CaptureResult;

    .line 3197
    sparse-switch p2, :sswitch_data_0

    move-object v0, v3

    .line 3650
    goto :goto_0

    .line 3201
    :sswitch_0
    if-nez v5, :cond_3

    .line 3203
    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3205
    goto :goto_0

    .line 3208
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3209
    if-eqz v0, :cond_4

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_5

    .line 3211
    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3213
    goto :goto_0

    .line 3216
    :cond_5
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3218
    const v0, 0x30000002

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3220
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3222
    const v0, 0x30000001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3225
    :cond_7
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3227
    goto :goto_0

    .line 3231
    :sswitch_1
    if-nez v5, :cond_8

    .line 3233
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3235
    goto :goto_0

    .line 3238
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3239
    if-eqz v0, :cond_9

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_a

    .line 3241
    :cond_9
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3243
    goto :goto_0

    .line 3246
    :cond_a
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3248
    iget-boolean v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->isAutoFocusing:Z

    if-eqz v0, :cond_b

    const v0, 0x30000020

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const v0, 0x30000010

    goto :goto_1

    .line 3250
    :cond_c
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3252
    const v0, 0x30000040

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3254
    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3256
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3257
    if-eqz v0, :cond_e

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3258
    :cond_e
    const v0, 0x30000200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3260
    :cond_f
    const v0, 0x30000100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3262
    :cond_10
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3264
    const v0, 0x30000080

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3267
    :cond_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3269
    goto/16 :goto_0

    .line 3273
    :sswitch_2
    if-nez v5, :cond_12

    .line 3275
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3277
    goto/16 :goto_0

    .line 3283
    :cond_12
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3284
    if-eqz v0, :cond_13

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_1

    .line 3286
    :cond_13
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3288
    goto/16 :goto_0

    .line 3295
    :sswitch_3
    if-nez v5, :cond_14

    .line 3297
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3299
    goto/16 :goto_0

    .line 3302
    :cond_14
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3303
    if-eqz v0, :cond_15

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_15

    .line 3306
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3307
    const/4 v4, 0x0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v4

    .line 3308
    const/4 v1, 0x1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v1

    move-object v0, v2

    .line 3310
    goto/16 :goto_0

    .line 3314
    :cond_15
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3316
    goto/16 :goto_0

    .line 3321
    :sswitch_4
    if-nez v5, :cond_16

    .line 3323
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3325
    goto/16 :goto_0

    .line 3329
    :cond_16
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3330
    if-eqz v0, :cond_1a

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1a

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_1a

    .line 3333
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3334
    if-eqz v0, :cond_17

    array-length v1, v0

    if-nez v1, :cond_18

    :cond_17
    move-object v0, v3

    .line 3335
    goto/16 :goto_0

    .line 3340
    :cond_18
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 3341
    if-nez v1, :cond_19

    .line 3343
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3345
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 3349
    :cond_19
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 3350
    const/4 v2, 0x5

    new-array v2, v2, [F

    .line 3351
    const/4 v5, 0x0

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v2, v5

    .line 3352
    const/4 v5, 0x1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v2, v5

    .line 3353
    const/4 v5, 0x2

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v2, v5

    .line 3354
    const/4 v5, 0x3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int v1, v4, v1

    int-to-float v1, v1

    aput v1, v2, v5

    .line 3357
    const/4 v1, 0x4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    aput v0, v2, v1

    move-object v0, v2

    .line 3360
    goto/16 :goto_0

    .line 3362
    :cond_1a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3364
    goto/16 :goto_0

    .line 3367
    :sswitch_5
    if-nez v5, :cond_1b

    .line 3369
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3371
    goto/16 :goto_0

    .line 3374
    :cond_1b
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3375
    if-eqz v0, :cond_1c

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_1d

    .line 3377
    :cond_1c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3379
    goto/16 :goto_0

    .line 3382
    :cond_1d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3384
    const v0, 0x30008000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3386
    :cond_1e
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3388
    const v0, 0x30004000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3391
    :cond_1f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3393
    goto/16 :goto_0

    .line 3397
    :sswitch_6
    if-nez v5, :cond_20

    .line 3399
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3401
    goto/16 :goto_0

    .line 3404
    :cond_20
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3405
    if-eqz v0, :cond_21

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_21

    .line 3406
    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 3408
    :cond_21
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3410
    goto/16 :goto_0

    .line 3416
    :sswitch_7
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3417
    if-eqz v0, :cond_22

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v1, :cond_23

    .line 3419
    :cond_22
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3421
    goto/16 :goto_0

    .line 3424
    :cond_23
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3425
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    aput v1, v2, v4

    .line 3426
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    aput v0, v2, v1

    move-object v0, v2

    .line 3428
    goto/16 :goto_0

    .line 3433
    :sswitch_8
    if-nez v5, :cond_24

    .line 3435
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3437
    goto/16 :goto_0

    .line 3440
    :cond_24
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3441
    if-eqz v0, :cond_25

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_25

    .line 3442
    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    const-wide v4, 0x41cdcd6500000000L

    div-double/2addr v0, v4

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 3444
    :cond_25
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3446
    goto/16 :goto_0

    .line 3452
    :sswitch_9
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3453
    if-eqz v0, :cond_26

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v1, :cond_27

    .line 3455
    :cond_26
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3457
    goto/16 :goto_0

    .line 3460
    :cond_27
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3461
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x41cdcd6500000000L

    div-double/2addr v6, v8

    double-to-float v1, v6

    aput v1, v2, v4

    .line 3462
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x41cdcd6500000000L

    div-double/2addr v4, v6

    double-to-float v0, v4

    aput v0, v2, v1

    move-object v0, v2

    .line 3464
    goto/16 :goto_0

    .line 3469
    :sswitch_a
    if-nez v5, :cond_28

    .line 3471
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3473
    goto/16 :goto_0

    .line 3476
    :cond_28
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3477
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    .line 3478
    if-eqz v0, :cond_29

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v2, :cond_29

    .line 3480
    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 3482
    :cond_29
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3484
    goto/16 :goto_0

    .line 3490
    :sswitch_b
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3491
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    .line 3492
    if-eqz v0, :cond_2a

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v2, :cond_2a

    if-eqz v1, :cond_2a

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v2, :cond_2b

    .line 3495
    :cond_2a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3497
    goto/16 :goto_0

    .line 3500
    :cond_2b
    const/4 v2, 0x2

    new-array v4, v2, [F

    .line 3501
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v6

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    aput v2, v4, v5

    .line 3502
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    aput v0, v4, v2

    move-object v0, v4

    .line 3504
    goto/16 :goto_0

    .line 3508
    :sswitch_c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3511
    goto/16 :goto_0

    .line 3514
    :sswitch_d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3517
    goto/16 :goto_0

    .line 3520
    :sswitch_e
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3523
    goto/16 :goto_0

    .line 3527
    :sswitch_f
    if-nez v5, :cond_2c

    .line 3529
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3531
    goto/16 :goto_0

    .line 3534
    :cond_2c
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3535
    if-eqz v0, :cond_2d

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_1

    .line 3537
    :cond_2d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3539
    goto/16 :goto_0

    .line 3551
    :sswitch_10
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3578
    :sswitch_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3582
    goto/16 :goto_0

    .line 3585
    :sswitch_12
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3589
    goto/16 :goto_0

    .line 3592
    :sswitch_13
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3596
    goto/16 :goto_0

    .line 3599
    :sswitch_14
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3603
    goto/16 :goto_0

    .line 3606
    :sswitch_15
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3610
    goto/16 :goto_0

    .line 3614
    :sswitch_16
    if-nez v5, :cond_2e

    .line 3616
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3618
    goto/16 :goto_0

    .line 3623
    :cond_2e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3624
    if-eqz v0, :cond_30

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v4, :cond_30

    .line 3627
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3628
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_2f
    move v2, v1

    .line 3631
    :cond_30
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3632
    if-eqz v0, :cond_33

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v4, :cond_33

    .line 3635
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3636
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_31
    move v0, v1

    .line 3639
    :goto_2
    if-nez v0, :cond_32

    .line 3641
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3643
    goto/16 :goto_0

    .line 3646
    :cond_32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 3653
    :catch_0
    move-exception v0

    .line 3655
    invoke-static {v10}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v3

    .line 3657
    goto/16 :goto_0

    :cond_33
    move v0, v2

    goto :goto_2

    .line 3197
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000001 -> :sswitch_0
        0x20000002 -> :sswitch_1
        0x20000004 -> :sswitch_2
        0x20000008 -> :sswitch_3
        0x20000010 -> :sswitch_4
        0x20000020 -> :sswitch_5
        0x20000040 -> :sswitch_6
        0x20000080 -> :sswitch_7
        0x20000100 -> :sswitch_8
        0x20000200 -> :sswitch_9
        0x20000400 -> :sswitch_a
        0x20000800 -> :sswitch_b
        0x20001000 -> :sswitch_c
        0x20002000 -> :sswitch_d
        0x20004000 -> :sswitch_e
        0x20008000 -> :sswitch_f
        0x20010000 -> :sswitch_10
        0x20020000 -> :sswitch_11
        0x20040000 -> :sswitch_12
        0x20080000 -> :sswitch_13
        0x20100000 -> :sswitch_14
        0x20200000 -> :sswitch_15
        0x21000000 -> :sswitch_16
    .end sparse-switch
.end method

.method getUntypedCameraParameter(ILjava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2273
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v5

    .line 2276
    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2278
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2363
    :goto_0
    return-object v4

    .line 2286
    :cond_1
    iget-object v0, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v2

    move v1, v3

    .line 2287
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 2289
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2292
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2295
    :cond_2
    iget-object v1, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 2300
    :goto_2
    iget-object v0, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v6

    move v2, v3

    .line 2301
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 2302
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2304
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2301
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2307
    :cond_3
    iget-object v1, v5, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 2311
    :goto_4
    if-nez v0, :cond_4

    .line 2313
    invoke-static {v8}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 2319
    :cond_4
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    :cond_5
    move-object v4, v0

    .line 2321
    goto :goto_0

    .line 2323
    :cond_6
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 2325
    new-instance v4, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 2327
    :cond_7
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    .line 2329
    new-instance v4, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_0

    .line 2332
    :cond_8
    instance-of v1, v0, Landroid/util/Range;

    if-eqz v1, :cond_b

    move-object v1, v0

    .line 2334
    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    .line 2335
    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    .line 2336
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 2339
    new-array v4, v10, [J

    move-object v0, v1

    .line 2340
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v3

    move-object v0, v2

    .line 2341
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v9

    goto/16 :goto_0

    .line 2344
    :cond_9
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 2347
    new-array v4, v10, [J

    .line 2348
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 2349
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v9

    goto/16 :goto_0

    .line 2354
    :cond_a
    invoke-static {v8}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto/16 :goto_0

    .line 2361
    :cond_b
    invoke-static {v8}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_4

    :cond_d
    move-object v1, v4

    goto/16 :goto_2
.end method

.method getUntypedCameraParameterType(ILjava/lang/String;)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 2379
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v8

    .line 2382
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 2384
    :cond_0
    invoke-static {v7}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v3, v6

    .line 2453
    :cond_1
    :goto_0
    return v3

    .line 2389
    :cond_2
    const/4 v4, 0x0

    .line 2393
    iget-object v0, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v5

    move v1, v2

    .line 2394
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 2396
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2399
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2402
    :cond_3
    iget-object v1, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    .line 2408
    :goto_2
    iget-object v0, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v9

    move v5, v2

    .line 2409
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_c

    .line 2410
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2412
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2409
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 2415
    :cond_4
    iget-object v1, v8, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move v1, v3

    .line 2420
    :goto_4
    if-nez v1, :cond_5

    .line 2422
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move v3, v6

    .line 2424
    goto :goto_0

    .line 2427
    :cond_5
    if-nez v0, :cond_6

    move v3, v6

    .line 2429
    goto :goto_0

    .line 2432
    :cond_6
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 2434
    instance-of v1, v0, Ljava/lang/Byte;

    if-nez v1, :cond_1

    .line 2436
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 2438
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 2439
    const/4 v3, 0x2

    goto :goto_0

    .line 2440
    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 2441
    const/4 v3, 0x3

    goto :goto_0

    .line 2442
    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    move v3, v2

    .line 2443
    goto :goto_0

    .line 2444
    :cond_9
    instance-of v1, v0, Landroid/util/Range;

    if-eqz v1, :cond_b

    .line 2446
    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    .line 2447
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    move v3, v7

    .line 2448
    goto/16 :goto_0

    .line 2449
    :cond_a
    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_b

    move v3, v7

    .line 2450
    goto/16 :goto_0

    :cond_b
    move v3, v6

    .line 2453
    goto/16 :goto_0

    :cond_c
    move-object v0, v4

    goto :goto_4

    :cond_d
    move v1, v2

    goto :goto_2
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 1169
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    .line 1170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;

    .line 1173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;

    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public open(JIIILjava/lang/String;[I[I)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1391
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1393
    const/4 v2, -0x1

    .line 1665
    :goto_0
    return v2

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera2_Preview;->checkCameraManager()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1398
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1400
    const/4 v2, -0x1

    goto :goto_0

    .line 1406
    :cond_1
    move/from16 v0, p5

    invoke-direct {p0, p3, p4, v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraDeviceIndex(III)I

    move-result v5

    .line 1407
    if-gez v5, :cond_2

    .line 1411
    const/4 v2, -0x1

    goto :goto_0

    .line 1417
    :cond_2
    const/4 v3, -0x1

    .line 1418
    const/4 v2, 0x0

    .line 1420
    iget-object v4, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1421
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_16

    .line 1423
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 1424
    iget v7, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceID:I

    if-ne v7, v5, :cond_8

    .line 1432
    :goto_2
    if-gez v4, :cond_3

    .line 1438
    :try_start_0
    new-instance v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    invoke-direct {v3, p0}, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V

    .line 1439
    iput v5, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceID:I

    .line 1440
    iput-wide p1, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceHandle:J

    .line 1441
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    iget v5, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceID:I

    aget-object v2, v2, v5

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    .line 1442
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1443
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    .line 1444
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1445
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1446
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    .line 1447
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    .line 1448
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->images:[Landroid/media/Image;

    .line 1449
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->imageSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1451
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideWidth:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferWidth:I

    .line 1452
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideHeight:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferHeight:I

    .line 1453
    const v2, 0x10001100

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferFormatPL:I

    .line 1454
    const v2, 0x10001100

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatPL:I

    .line 1455
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    .line 1456
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->caps:[I

    .line 1457
    const v2, 0x10002001

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I

    .line 1458
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->isAutoFocusing:Z

    .line 1462
    const v2, 0x10001109

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatPL:I

    .line 1463
    const/16 v2, 0x23

    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    .line 1465
    iget-object v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1466
    iget v5, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestFormatAndroid:I

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1468
    if-eqz v5, :cond_9

    array-length v2, v5

    if-lez v2, :cond_9

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    :goto_3
    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestWidth:I

    .line 1469
    if-eqz v5, :cond_a

    array-length v2, v5

    if-lez v2, :cond_a

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    :goto_4
    iput v2, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->requestHeight:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 1486
    :cond_3
    const/4 v5, 0x0

    .line 1487
    const/16 v3, 0xa

    .line 1490
    new-instance v6, Landroid/os/HandlerThread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_camera_thread"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->thread:Landroid/os/HandlerThread;

    .line 1491
    iget-object v6, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 1492
    new-instance v6, Landroid/os/Handler;

    iget-object v7, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    :cond_4
    move v6, v3

    move v3, v5

    .line 1500
    :try_start_1
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1501
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v7, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    new-instance v8, Lcom/vuforia/ar/pl/Camera2_Preview$1;

    invoke-direct {v8, p0}, Lcom/vuforia/ar/pl/Camera2_Preview$1;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V

    iget-object v9, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v8, v9}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 1557
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1558
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1559
    iget-object v5, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1561
    iget-object v5, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v5, :cond_b

    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_5
    move v5, v3

    .line 1569
    :goto_6
    if-nez v5, :cond_5

    .line 1575
    if-lez v6, :cond_5

    .line 1577
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1579
    const-wide/16 v8, 0xfa

    :try_start_3
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 1580
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1589
    :cond_5
    :goto_7
    if-nez v5, :cond_6

    add-int/lit8 v3, v6, -0x1

    if-gtz v6, :cond_4

    .line 1594
    :cond_6
    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v3, :cond_c

    .line 1597
    :cond_7
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1599
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera2_Preview;->cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 1600
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1421
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1468
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1469
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1472
    :catch_0
    move-exception v2

    .line 1475
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1476
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1478
    :catch_1
    move-exception v2

    .line 1481
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1482
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1561
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 1563
    :catch_2
    move-exception v5

    move v5, v3

    goto :goto_6

    .line 1580
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1583
    :catch_3
    move-exception v3

    goto :goto_7

    .line 1604
    :cond_c
    if-eqz p7, :cond_d

    move-object/from16 v0, p7

    array-length v3, v0

    if-gtz v3, :cond_e

    :cond_d
    if-eqz p8, :cond_10

    move-object/from16 v0, p8

    array-length v3, v0

    if-lez v3, :cond_10

    :cond_e
    const/4 v3, 0x1

    move v5, v3

    .line 1605
    :goto_8
    if-eqz p6, :cond_11

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x1

    .line 1608
    :goto_9
    if-nez v5, :cond_f

    if-eqz v3, :cond_14

    .line 1611
    :cond_f
    if-eqz v5, :cond_13

    .line 1613
    if-eqz p7, :cond_12

    move-object/from16 v0, p7

    array-length v5, v0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_12

    .line 1615
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1617
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera2_Preview;->cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 1618
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1604
    :cond_10
    const/4 v3, 0x0

    move v5, v3

    goto :goto_8

    .line 1605
    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    .line 1622
    :cond_12
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v2, v0, v1}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;[I[I)Z

    move-result v5

    .line 1623
    if-nez v5, :cond_13

    .line 1625
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1627
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera2_Preview;->cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 1628
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1633
    :cond_13
    if-eqz v3, :cond_14

    .line 1636
    move-object/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCustomCameraParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;Ljava/lang/String;)Z

    move-result v3

    .line 1637
    if-nez v3, :cond_14

    .line 1639
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1641
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera2_Preview;->cleanupHandlerThread(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 1642
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1648
    :cond_14
    const v3, 0x10002002

    iput v3, v2, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I

    .line 1650
    if-gez v4, :cond_15

    .line 1656
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1659
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_15
    move v2, v4

    goto/16 :goto_0

    :cond_16
    move v4, v3

    goto/16 :goto_2
.end method

.method public setBatchParameters(ILjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2173
    if-nez p2, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return v0

    .line 2180
    :cond_1
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v1

    .line 2183
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_3

    .line 2185
    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 2190
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCustomCameraParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCaptureInfo(I[I[I)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1944
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1947
    if-nez v1, :cond_0

    .line 1949
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1972
    :goto_0
    return v0

    .line 1954
    :cond_0
    array-length v2, p2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1956
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1963
    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/vuforia/ar/pl/Camera2_Preview;->setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;[I[I)Z

    move-result v1

    .line 1964
    if-nez v1, :cond_2

    .line 1966
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1972
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setTypedCameraParameter(IILjava/lang/Object;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2521
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v4

    .line 2524
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_1

    .line 2526
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2528
    const/4 v0, 0x0

    .line 3173
    :goto_0
    return v0

    .line 2532
    :cond_1
    const/4 v2, 0x0

    .line 2536
    sparse-switch p2, :sswitch_data_0

    .line 3081
    const/4 v0, 0x0

    goto :goto_0

    .line 2541
    :sswitch_0
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_2

    .line 2543
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2545
    const/4 v0, 0x0

    goto :goto_0

    .line 2548
    :cond_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2549
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3092
    :cond_3
    :goto_2
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    .line 3095
    :try_start_1
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v3, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;

    invoke-direct {v3, p0, v4}, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3117
    if-eqz v2, :cond_4

    .line 3121
    sparse-switch p2, :sswitch_data_1

    .line 3173
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2549
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 2556
    :sswitch_1
    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_6

    .line 2558
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2560
    const/4 v0, 0x0

    goto :goto_0

    .line 2564
    :cond_6
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2566
    packed-switch v0, :pswitch_data_0

    .line 2584
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2586
    const/4 v0, 0x0

    goto :goto_0

    .line 2570
    :pswitch_1
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3084
    :catch_0
    move-exception v0

    .line 3086
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3088
    const/4 v0, 0x0

    goto :goto_0

    .line 2575
    :pswitch_2
    :try_start_3
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 2579
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2581
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2597
    :sswitch_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_7

    .line 2599
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2601
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2605
    :cond_7
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2606
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 2608
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2609
    sparse-switch v1, :sswitch_data_2

    .line 2676
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2678
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2614
    :sswitch_3
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2616
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2618
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2620
    :cond_8
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2621
    const/4 v0, 0x1

    :goto_3
    move v2, v0

    .line 2681
    goto/16 :goto_2

    .line 2625
    :sswitch_4
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 2627
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2629
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2631
    :cond_9
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v0, v2

    .line 2632
    goto :goto_3

    .line 2635
    :sswitch_5
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2637
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2639
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2641
    :cond_a
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2642
    const/4 v0, 0x1

    .line 2643
    goto :goto_3

    .line 2647
    :sswitch_6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_b

    .line 2649
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2651
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2653
    :cond_b
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 2655
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2657
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2659
    :cond_c
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2660
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v0, v2

    .line 2661
    goto :goto_3

    .line 2666
    :sswitch_7
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 2668
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2670
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2672
    :cond_d
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v0, v2

    .line 2673
    goto/16 :goto_3

    .line 2685
    :sswitch_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_e

    .line 2687
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2689
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2691
    :cond_e
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2692
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2698
    :sswitch_9
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2700
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2705
    :sswitch_a
    check-cast p3, [F

    check-cast p3, [F

    .line 2707
    array-length v0, p3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    .line 2709
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2711
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2714
    :cond_f
    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    aget v0, p3, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    aget v0, p3, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x2

    aget v0, p3, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    const/4 v0, 0x3

    aget v0, p3, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x3

    aget v0, p3, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    const/4 v0, 0x4

    aget v0, p3, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x4

    aget v0, p3, v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 2720
    :cond_10
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2722
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2725
    :cond_11
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2726
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_13

    .line 2728
    :cond_12
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2730
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2733
    :cond_13
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2734
    if-nez v0, :cond_14

    .line 2736
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2738
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2741
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2742
    const/4 v2, 0x0

    new-instance v3, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, p3, v6

    .line 2749
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    aget v7, p3, v7

    .line 2750
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x2

    aget v8, p3, v8

    .line 2751
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x3

    aget v9, p3, v9

    .line 2752
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    aget v0, p3, v0

    const/high16 v6, 0x447a

    mul-float/2addr v0, v6

    const/4 v6, 0x0

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v3, v5, v0}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v1, v2

    .line 2756
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2757
    const/4 v2, 0x1

    .line 2760
    goto/16 :goto_2

    .line 2764
    :sswitch_b
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2766
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2767
    if-eqz v0, :cond_15

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v3, :cond_16

    .line 2769
    :cond_15
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2771
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2774
    :cond_16
    sparse-switch v1, :sswitch_data_3

    .line 2806
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2808
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2778
    :sswitch_c
    const/4 v3, 0x0

    .line 2779
    array-length v5, v0

    const/4 v1, 0x0

    move v11, v1

    move v1, v3

    move v3, v11

    :goto_4
    if-ge v3, v5, :cond_35

    aget v1, v0, v3

    .line 2780
    if-nez v1, :cond_17

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_18

    move v0, v1

    .line 2782
    :goto_6
    if-nez v0, :cond_19

    .line 2784
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2786
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2780
    :cond_17
    const/4 v1, 0x0

    goto :goto_5

    .line 2779
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2788
    :cond_19
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2793
    :sswitch_d
    const/4 v3, 0x0

    .line 2794
    array-length v5, v0

    const/4 v1, 0x0

    move v11, v1

    move v1, v3

    move v3, v11

    :goto_7
    if-ge v3, v5, :cond_34

    aget v1, v0, v3

    .line 2795
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1a

    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_1b

    move v0, v1

    .line 2797
    :goto_9
    if-nez v0, :cond_1c

    .line 2799
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2801
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2795
    :cond_1a
    const/4 v1, 0x0

    goto :goto_8

    .line 2794
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2803
    :cond_1c
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2816
    :sswitch_e
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2819
    if-eqz v0, :cond_1d

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_1e

    .line 2821
    :cond_1d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2823
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2826
    :cond_1e
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2827
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2829
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2833
    :cond_1f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2835
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2842
    :sswitch_f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2844
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2849
    :sswitch_10
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2852
    if-eqz v0, :cond_20

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_21

    .line 2854
    :cond_20
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2856
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2859
    :cond_21
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v6, v1

    const-wide v8, 0x41cdcd6500000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2860
    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2862
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2866
    :cond_22
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2868
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2875
    :sswitch_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2877
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2882
    :sswitch_12
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 2884
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2885
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    .line 2886
    sget-object v5, Lcom/vuforia/ar/pl/Camera2_Preview;->EMPTY_RANGE:Landroid/util/Range;

    invoke-virtual {v5, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v5, :cond_23

    if-eqz v1, :cond_23

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v5, :cond_24

    .line 2889
    :cond_23
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2891
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2894
    :cond_24
    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    div-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2896
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2897
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2900
    :cond_25
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2902
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2910
    :sswitch_13
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2912
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2916
    :sswitch_14
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2918
    sparse-switch v0, :sswitch_data_4

    .line 2951
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2953
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2933
    :sswitch_15
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_26

    .line 2935
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2937
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2940
    :cond_26
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2945
    :sswitch_16
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_27

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2946
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2947
    :cond_27
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_3

    .line 2948
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2959
    :sswitch_17
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2961
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2964
    :sswitch_18
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2966
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2971
    :sswitch_19
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 2974
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2975
    if-eqz v0, :cond_28

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_29

    .line 2977
    :cond_28
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2979
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2983
    :cond_29
    const/4 v1, 0x0

    .line 2984
    array-length v6, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_33

    aget v7, v0, v3

    .line 2987
    int-to-float v8, v5

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2a

    .line 2989
    const/4 v0, 0x1

    .line 2990
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2995
    :goto_b
    if-nez v0, :cond_3

    .line 2997
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2999
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2984
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3006
    :sswitch_1a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3008
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3011
    :sswitch_1b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3013
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3016
    :sswitch_1c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3018
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3021
    :sswitch_1d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3023
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3026
    :sswitch_1e
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3027
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3033
    :sswitch_1f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3035
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3039
    :sswitch_20
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3040
    if-eqz v0, :cond_2b

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    move v1, v0

    .line 3042
    :goto_c
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3043
    if-eqz v0, :cond_2c

    array-length v0, v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2c

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 3045
    :goto_d
    if-nez v1, :cond_2d

    if-nez v0, :cond_2d

    .line 3047
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3049
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3040
    :cond_2b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_c

    .line 3043
    :cond_2c
    const/4 v0, 0x0

    goto :goto_d

    .line 3052
    :cond_2d
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3058
    if-eqz v1, :cond_2e

    .line 3059
    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3061
    :cond_2e
    if-eqz v0, :cond_2f

    .line 3062
    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3064
    :cond_2f
    if-eqz v3, :cond_3

    .line 3067
    if-eqz v1, :cond_30

    .line 3069
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3073
    :cond_30
    if-eqz v0, :cond_3

    .line 3074
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 3096
    :catch_1
    move-exception v0

    .line 3097
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3099
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3100
    :catch_2
    move-exception v0

    .line 3101
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3103
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3104
    :catch_3
    move-exception v0

    .line 3105
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3107
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3125
    :sswitch_21
    :try_start_4
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3126
    if-eqz v0, :cond_32

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_32

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_32

    .line 3129
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3130
    if-eqz v0, :cond_32

    array-length v1, v0

    if-lez v1, :cond_32

    .line 3133
    array-length v1, v0

    new-array v5, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3134
    const/4 v2, 0x0

    .line 3135
    array-length v6, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v6, :cond_31

    aget-object v7, v0, v1

    .line 3136
    add-int/lit8 v3, v2, 0x1

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v5, v2

    .line 3135
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_e

    .line 3138
    :cond_31
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3147
    :cond_32
    :sswitch_22
    new-instance v0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;

    invoke-direct {v0, p0, v4}, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    .line 3148
    invoke-virtual {v0}, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->triggerAutofocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3150
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3152
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3162
    :catch_4
    move-exception v0

    .line 3164
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 3166
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_33
    move v0, v1

    goto/16 :goto_b

    :cond_34
    move v0, v1

    goto/16 :goto_9

    :cond_35
    move v0, v1

    goto/16 :goto_6

    .line 2536
    :sswitch_data_0
    .sparse-switch
        0x20000001 -> :sswitch_1
        0x20000002 -> :sswitch_2
        0x20000004 -> :sswitch_8
        0x20000008 -> :sswitch_9
        0x20000010 -> :sswitch_a
        0x20000020 -> :sswitch_b
        0x20000040 -> :sswitch_e
        0x20000080 -> :sswitch_f
        0x20000100 -> :sswitch_10
        0x20000200 -> :sswitch_11
        0x20000400 -> :sswitch_12
        0x20000800 -> :sswitch_13
        0x20001000 -> :sswitch_14
        0x20002000 -> :sswitch_17
        0x20004000 -> :sswitch_18
        0x20008000 -> :sswitch_19
        0x20010000 -> :sswitch_1a
        0x20020000 -> :sswitch_1b
        0x20040000 -> :sswitch_1c
        0x20080000 -> :sswitch_1d
        0x20100000 -> :sswitch_1e
        0x20200000 -> :sswitch_1f
        0x20400000 -> :sswitch_0
        0x21000000 -> :sswitch_20
    .end sparse-switch

    .line 3121
    :sswitch_data_1
    .sparse-switch
        0x20000002 -> :sswitch_21
        0x20000010 -> :sswitch_22
    .end sparse-switch

    .line 2566
    :pswitch_data_0
    .packed-switch 0x30000001
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2609
    :sswitch_data_2
    .sparse-switch
        0x30000010 -> :sswitch_3
        0x30000020 -> :sswitch_3
        0x30000040 -> :sswitch_4
        0x30000080 -> :sswitch_5
        0x30000100 -> :sswitch_6
        0x30000200 -> :sswitch_7
    .end sparse-switch

    .line 2774
    :sswitch_data_3
    .sparse-switch
        0x30001000 -> :sswitch_c
        0x30004000 -> :sswitch_d
        0x30008000 -> :sswitch_c
    .end sparse-switch

    .line 2918
    :sswitch_data_4
    .sparse-switch
        0x30100000 -> :sswitch_15
        0x30400000 -> :sswitch_16
    .end sparse-switch
.end method

.method setUntypedCameraParameter(ILjava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x0

    .line 2201
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v4

    .line 2204
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 2206
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2266
    :cond_1
    :goto_0
    return v2

    .line 2211
    :cond_2
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 2212
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2214
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2217
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2221
    :cond_3
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 2222
    instance-of v1, v5, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, v5, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, v5, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, v5, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, v5, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2231
    :cond_4
    instance-of v1, v5, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 2232
    new-instance v1, Ljava/lang/Byte;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->byteValue()B

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    .line 2233
    :goto_2
    instance-of v3, v5, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 2234
    new-instance v3, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v3

    .line 2236
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2247
    :try_start_0
    iget-object v3, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2248
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6

    .line 2249
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v3, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;

    invoke-direct {v3, p0, v4}, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    iget-object v4, v4, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2254
    :catch_0
    move-exception v0

    .line 2256
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto/16 :goto_0

    .line 2264
    :cond_7
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto/16 :goto_0

    :cond_8
    move-object v1, p3

    goto :goto_2
.end method

.method public start(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x0

    .line 2044
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v1

    .line 2047
    if-nez v1, :cond_0

    .line 2049
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2131
    :goto_0
    return v0

    .line 2055
    :cond_0
    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera2_Preview;->setupPreviewBuffer(Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2057
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 2067
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_2

    .line 2070
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2071
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    new-instance v4, Lcom/vuforia/ar/pl/Camera2_Preview$2;

    invoke-direct {v4, p0}, Lcom/vuforia/ar/pl/Camera2_Preview$2;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V

    iget-object v5, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 2100
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2101
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2103
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_2

    .line 2105
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2125
    :catch_0
    move-exception v1

    .line 2127
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 2112
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    new-instance v4, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;

    invoke-direct {v4, p0, v1}, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V

    iget-object v5, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2117
    const v2, 0x10002003

    iput v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I

    .line 2120
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->reader:Landroid/media/ImageReader;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2123
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2140
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    move-result-object v1

    .line 2143
    if-nez v1, :cond_0

    .line 2145
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2167
    :goto_0
    return v0

    .line 2153
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 2157
    const v2, 0x10002002

    iput v2, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    const/4 v0, 0x1

    goto :goto_0

    .line 2161
    :catch_0
    move-exception v1

    .line 2163
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method
