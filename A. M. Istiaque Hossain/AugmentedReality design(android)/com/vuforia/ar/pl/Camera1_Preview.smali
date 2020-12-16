.class public Lcom/vuforia/ar/pl/Camera1_Preview;
.super Ljava/lang/Object;
.source "Camera1_Preview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;
    }
.end annotation


# static fields
.field private static final AR_CAMERA_DIRECTION_BACK:I = 0x10002011

.field private static final AR_CAMERA_DIRECTION_FRONT:I = 0x10002012

.field private static final AR_CAMERA_DIRECTION_UNKNOWN:I = 0x10002010

.field private static final AR_CAMERA_EXPOSUREMODE_AUTO:I = 0x30002000

.field private static final AR_CAMERA_EXPOSUREMODE_CONTINUOUSAUTO:I = 0x30004000

.field private static final AR_CAMERA_EXPOSUREMODE_LOCKED:I = 0x30001000

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

.field private static final CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I = null

.field private static CONVERT_FORMAT_TO_ANDROID:Z = false

.field private static CONVERT_FORMAT_TO_PL:Z = false

.field private static final FOCUS_MODE_NORMAL:Ljava/lang/String; = "normal"

.field private static final MODULENAME:Ljava/lang/String; = "Camera1_Preview"

.field private static final NUM_CAPTURE_BUFFERS:I = 0x2

.field private static final NUM_CAPTURE_BUFFERS_TO_ADD:I = 0x2

.field private static final NUM_MAX_CAMERAOPEN_RETRY:I = 0xa

.field private static final SAMSUNG_PARAM_FAST_FPS_MODE:Ljava/lang/String; = "fast-fps-mode"

.field private static final SAMSUNG_PARAM_VRMODE:Ljava/lang/String; = "vrmode"

.field private static final SAMSUNG_PARAM_VRMODE_SUPPORTED:Ljava/lang/String; = "vrmode-supported"

.field private static final TIME_CAMERAOPEN_RETRY_DELAY_MS:I = 0xfa

.field private static final _NUM_CAMERA_CAPSINFO_VALUE_:I = 0x6

.field private static final _NUM_CAMERA_CAPTUREINFO_VALUE_:I = 0x5


# instance fields
.field private cameraCacheInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraCacheInfoIndexCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/Camera;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    .line 204
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_ANDROID:Z

    return-void

    .line 194
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x10t
        0x11t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x10t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x10t
        0x59t 0x56t 0x31t 0x32t
        0xat 0x11t 0x0t 0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    .line 232
    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    .line 233
    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ar/pl/Camera1_Preview;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vuforia/ar/pl/Camera1_Preview;I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    return-object v0
.end method

.method private checkPermission()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 249
    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 258
    if-nez v1, :cond_0

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkSamsungHighFPS(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 668
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 669
    if-nez v1, :cond_0

    .line 671
    invoke-static {v5}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 718
    :goto_0
    return v0

    .line 676
    :cond_0
    const-string v2, "true"

    const-string v3, "vrmode-supported"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    if-lez v2, :cond_3

    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    if-lez v2, :cond_3

    const-string v2, "fast-fps-mode"

    .line 678
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "fast-fps-mode"

    .line 679
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_3

    .line 686
    :cond_1
    const-string v2, "Camera1_Preview"

    const-string v3, "Detected Samsung high fps camera driver bug."

    invoke-static {v2, v3}, Lcom/vuforia/ar/pl/DebugLog;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v2, "Camera1_Preview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview size doesn\'t match request; width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 688
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 689
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-static {v2, v3}, Lcom/vuforia/ar/pl/DebugLog;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v2, 0x1e

    invoke-direct {p0, v2, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraPreviewFps(ILandroid/hardware/Camera$Parameters;)Z

    .line 693
    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 697
    :try_start_0
    iget-object v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 707
    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_3

    .line 709
    :cond_2
    const-string v2, "Camera1_Preview"

    const-string v3, "Unable to workaround Samsung high fps camera driver bug."

    invoke-static {v2, v3}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v2, "Camera1_Preview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview size doesn\'t match request; width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 712
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v2, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :catch_0
    move-exception v1

    .line 701
    invoke-static {v5}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto/16 :goto_0

    .line 718
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;
    .locals 1
    .parameter

    .prologue
    .line 395
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    goto :goto_0
.end method

.method private getCameraDeviceIndex(III)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 282
    const v3, 0x10003010

    if-eq p2, v3, :cond_0

    .line 290
    :cond_0
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    packed-switch p3, :pswitch_data_0

    .line 312
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 370
    :goto_0
    return v1

    :pswitch_0
    move v0, v1

    .line 318
    :goto_1
    :pswitch_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 321
    :goto_2
    if-ge v2, v3, :cond_4

    .line 323
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 326
    :try_start_0
    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    if-ltz v0, :cond_1

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v4, :cond_3

    .line 339
    :cond_1
    if-ltz p1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v2

    .line 342
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 304
    goto :goto_1

    .line 328
    :catch_0
    move-exception v4

    .line 321
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 348
    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 354
    :cond_5
    const v3, 0x10002012

    if-ne p3, v3, :cond_6

    .line 356
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 363
    :cond_6
    if-lt p1, v0, :cond_7

    .line 365
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    .line 370
    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x10002010
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private native newFrameAvailable(JIIII[BJ)V
.end method

.method private setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 826
    .line 827
    packed-switch p2, :pswitch_data_0

    .line 855
    :goto_0
    return-void

    .line 830
    :pswitch_0
    const/high16 v0, 0x3000

    .line 843
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

    .line 847
    if-eqz p4, :cond_0

    .line 849
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    aget v2, v1, p2

    shl-int v0, v4, v0

    or-int/2addr v0, v2

    aput v0, v1, p2

    goto :goto_0

    .line 835
    :pswitch_1
    const/high16 v0, 0x2000

    .line 836
    goto :goto_1

    .line 853
    :cond_0
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    aget v2, v1, p2

    shl-int v0, v4, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    aput v0, v1, p2

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;Landroid/hardware/Camera$Parameters;[I[I)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 539
    :cond_0
    if-eqz p4, :cond_2

    aget v0, p4, v2

    :goto_0
    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideWidth:I

    .line 540
    if-eqz p4, :cond_3

    aget v0, p4, v1

    :goto_1
    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideHeight:I

    .line 541
    if-eqz p4, :cond_4

    aget v0, p4, v4

    :goto_2
    sget-boolean v3, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_ANDROID:Z

    .line 542
    invoke-direct {p0, v0, v3}, Lcom/vuforia/ar/pl/Camera1_Preview;->translateImageFormat(IZ)I

    move-result v0

    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    .line 548
    :cond_1
    if-nez p3, :cond_5

    move v0, v1

    .line 660
    :goto_3
    return v0

    .line 539
    :cond_2
    aget v0, p3, v2

    goto :goto_0

    .line 540
    :cond_3
    aget v0, p3, v1

    goto :goto_1

    .line 541
    :cond_4
    aget v0, p3, v4

    goto :goto_2

    .line 555
    :cond_5
    aget v0, p3, v2

    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    .line 556
    aget v0, p3, v1

    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    .line 557
    aget v0, p3, v4

    sget-boolean v3, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_ANDROID:Z

    invoke-direct {p0, v0, v3}, Lcom/vuforia/ar/pl/Camera1_Preview;->translateImageFormat(IZ)I

    move-result v0

    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestFormatAndroid:I

    .line 558
    const/4 v0, 0x3

    aget v0, p3, v0

    .line 568
    :try_start_0
    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    if-lez v3, :cond_6

    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    if-lez v3, :cond_6

    .line 571
    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 575
    :cond_6
    if-lez v0, :cond_7

    .line 577
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 579
    invoke-direct {p0, v0, p2}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraPreviewFps(ILandroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 584
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 594
    :cond_7
    :goto_4
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestFormatAndroid:I

    if-eqz v0, :cond_8

    .line 596
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestFormatAndroid:I

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_8
    const/4 v0, 0x4

    aget v0, p3, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 609
    :goto_5
    if-eqz v0, :cond_9

    .line 611
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 615
    const/4 v0, -0x1

    .line 619
    :try_start_1
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 629
    :try_start_2
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    iget-object v2, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :goto_6
    move v0, v1

    .line 660
    goto :goto_3

    .line 589
    :cond_a
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 599
    :catch_0
    move-exception v0

    move v0, v2

    .line 602
    goto :goto_3

    :cond_b
    move v0, v2

    .line 606
    goto :goto_5

    .line 621
    :catch_1
    move-exception v0

    move v0, v2

    .line 624
    goto :goto_3

    .line 639
    :cond_c
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    if-eqz v0, :cond_d

    .line 642
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/vuforia/ar/pl/SurfaceManager;->addCameraSurface(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z

    move-result v0

    .line 643
    if-nez v0, :cond_9

    move v0, v2

    .line 646
    goto/16 :goto_3

    :cond_d
    move v0, v2

    .line 654
    goto/16 :goto_3

    .line 631
    :catch_2
    move-exception v0

    goto :goto_6
.end method

.method private setCameraPreviewFps(ILandroid/hardware/Camera$Parameters;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x78

    const/16 v9, 0x3c

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 464
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 466
    mul-int/lit16 v4, p1, 0x3e8

    .line 467
    const v5, 0x7fffffff

    .line 468
    const/4 v1, 0x0

    .line 470
    if-eq p1, v9, :cond_0

    if-ne p1, v10, :cond_3

    :cond_0
    const-string v6, "true"

    const-string v7, "vrmode-supported"

    .line 471
    invoke-virtual {p2, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    new-array v1, v8, [I

    .line 478
    const-string v0, "vrmode"

    invoke-virtual {p2, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 479
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 480
    const-string v0, "focus-mode"

    const-string v4, "continuous-video"

    invoke-virtual {p2, v0, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-ne p1, v9, :cond_1

    .line 484
    const-string v0, "fast-fps-mode"

    invoke-virtual {p2, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 485
    const v0, 0xea60

    aput v0, v1, v3

    .line 486
    const v0, 0xea60

    aput v0, v1, v2

    .line 488
    :cond_1
    if-ne p1, v10, :cond_2

    .line 490
    const-string v0, "fast-fps-mode"

    invoke-virtual {p2, v0, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 491
    const v0, 0x1d4c0

    aput v0, v1, v3

    .line 492
    const v0, 0x1d4c0

    aput v0, v1, v2

    .line 521
    :cond_2
    if-eqz v1, :cond_5

    .line 525
    aget v0, v1, v3

    aget v1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    move v0, v2

    .line 529
    :goto_0
    return v0

    .line 497
    :cond_3
    const-string v6, "true"

    const-string v7, "vrmode-supported"

    invoke-virtual {p2, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "fast-fps-mode"

    .line 498
    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "fast-fps-mode"

    .line 499
    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    const-string v6, "vrmode"

    invoke-virtual {p2, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 504
    const-string v6, "fast-fps-mode"

    invoke-virtual {p2, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 507
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 511
    aget v7, v0, v3

    if-ne v7, v4, :cond_6

    .line 513
    aget v7, v0, v2

    aget v8, v0, v3

    sub-int/2addr v7, v8

    .line 514
    if-ge v7, v5, :cond_6

    :goto_2
    move-object v1, v0

    .line 519
    goto :goto_1

    :cond_5
    move v0, v3

    .line 529
    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private setCustomCameraParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 411
    .line 414
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 424
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 442
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    move v0, v2

    .line 457
    :goto_1
    return v0

    .line 432
    :catch_1
    move-exception v0

    move v0, v2

    .line 436
    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_1

    .line 447
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 452
    goto :goto_1

    .line 457
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setupPreviewBuffer(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 725
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 728
    if-nez v3, :cond_0

    move v0, v1

    .line 820
    :goto_0
    return v0

    .line 741
    :cond_0
    :try_start_0
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideWidth:I

    if-ne v0, v4, :cond_2

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    :goto_1
    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferWidth:I

    .line 742
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideHeight:I

    if-ne v0, v4, :cond_3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_2
    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferHeight:I

    .line 744
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestFormatAndroid:I

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    if-ne v0, v4, :cond_4

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 745
    :goto_3
    sget-boolean v3, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    invoke-direct {p0, v0, v3}, Lcom/vuforia/ar/pl/Camera1_Preview;->translateImageFormat(IZ)I

    move-result v3

    iput v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferFormatPL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :try_start_1
    new-instance v3, Landroid/graphics/PixelFormat;

    invoke-direct {v3}, Landroid/graphics/PixelFormat;-><init>()V

    .line 761
    invoke-static {v0, v3}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 762
    iget v0, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 782
    :cond_1
    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferWidth:I

    iget v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferHeight:I

    mul-int/2addr v3, v4

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x1000

    .line 788
    iget v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferSize:I

    if-gt v0, v3, :cond_5

    .line 793
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    move v0, v2

    .line 794
    goto :goto_0

    .line 741
    :cond_2
    :try_start_2
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideWidth:I

    goto :goto_1

    .line 742
    :cond_3
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideHeight:I

    goto :goto_2

    .line 744
    :cond_4
    iget v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideFormatAndroid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 747
    :catch_0
    move-exception v0

    move v0, v1

    .line 751
    goto :goto_0

    .line 764
    :catch_1
    move-exception v3

    .line 768
    invoke-virtual {p0, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getBitsPerPixel(I)I

    move-result v0

    .line 769
    if-nez v0, :cond_1

    move v0, v1

    .line 772
    goto :goto_0

    .line 800
    :cond_5
    new-array v3, v5, [[B

    iput-object v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->buffer:[[B

    .line 801
    :goto_4
    if-ge v1, v5, :cond_7

    .line 803
    iget-object v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->buffer:[[B

    new-array v4, v0, [B

    aput-object v4, v3, v1

    .line 806
    if-ge v1, v5, :cond_6

    .line 808
    iget-object v3, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    iget-object v4, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->buffer:[[B

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 801
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 811
    :cond_7
    iput v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferSize:I

    .line 814
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 817
    invoke-static {}, Ljava/lang/System;->gc()V

    move v0, v2

    .line 820
    goto/16 :goto_0
.end method

.method private translateImageFormat(IZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 860
    move v0, v1

    :goto_0
    sget-object v2, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 862
    sget-boolean v2, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v2, :cond_0

    sget-object v2, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    .line 866
    :goto_1
    if-ne p1, v2, :cond_2

    .line 868
    sget-boolean v1, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 874
    :goto_2
    return v0

    .line 862
    :cond_0
    sget-object v2, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    goto :goto_1

    .line 868
    :cond_1
    sget-object v1, Lcom/vuforia/ar/pl/Camera1_Preview;->CAMERA_IMAGE_FORMAT_CONVERSIONTABLE:[I

    mul-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    goto :goto_2

    .line 860
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_3
    sget-boolean v0, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v0, :cond_4

    const v1, 0x10001100

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public close(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1368
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v2

    .line 1371
    if-nez v2, :cond_0

    .line 1373
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1404
    :goto_0
    return v1

    .line 1379
    :cond_0
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    :try_start_0
    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    const/4 v1, 0x1

    .line 1394
    :goto_1
    iput-object v0, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    .line 1395
    check-cast v0, [[B

    iput-object v0, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->buffer:[[B

    .line 1398
    const v0, 0x10002001

    iput v0, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I

    .line 1401
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method getBitsPerPixel(I)I
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0xc

    .line 880
    sparse-switch p1, :sswitch_data_0

    .line 886
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 884
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 885
    goto :goto_0

    .line 880
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
    .locals 13
    .parameter

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v4

    .line 1416
    if-nez v4, :cond_0

    .line 1418
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1420
    const/4 v0, 0x0

    .line 1552
    :goto_0
    return-object v0

    .line 1426
    :cond_0
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    goto :goto_0

    .line 1432
    :cond_1
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1435
    if-nez v5, :cond_2

    .line 1437
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1439
    const/4 v0, 0x0

    goto :goto_0

    .line 1444
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 1445
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v7

    .line 1446
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v8

    .line 1447
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v9

    .line 1448
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v10

    .line 1450
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 1451
    :goto_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 1452
    :goto_2
    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 1455
    :goto_3
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1460
    new-array v0, v0, [I

    iput-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    .line 1465
    const/4 v11, 0x0

    .line 1466
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/high16 v12, 0x2000

    aput v12, v0, v11

    .line 1467
    const v12, 0x20000001

    if-eqz v9, :cond_c

    const-string v0, "torch"

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "on"

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v4, v11, v12, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1468
    const v0, 0x20000002

    const/4 v12, 0x1

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1469
    const v0, 0x20000004

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1470
    const v0, 0x20000010

    const/16 v12, 0xe

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1471
    const v0, 0x20000400

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1472
    const v0, 0x20000800

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1473
    const v12, 0x20008000

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v4, v11, v12, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1474
    const/high16 v12, 0x2001

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v4, v11, v12, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1475
    const/high16 v0, 0x2100

    const/16 v12, 0xf

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1478
    const/4 v11, 0x1

    .line 1479
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/high16 v12, 0x2000

    aput v12, v0, v11

    .line 1480
    const v12, 0x20000001

    if-eqz v9, :cond_10

    const-string v0, "torch"

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "on"

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_4
    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v4, v11, v12, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1481
    const v0, 0x20000002

    const/4 v12, 0x1

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1482
    const v0, 0x20000010

    const/16 v12, 0xe

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1483
    const v0, 0x20000400

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v12

    invoke-direct {p0, v4, v11, v0, v12}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1484
    const v12, 0x20008000

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v4, v11, v12, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1485
    const/high16 v0, 0x2100

    const/16 v5, 0xf

    invoke-static {v5}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v5

    invoke-direct {p0, v4, v11, v0, v5}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1488
    const/4 v0, 0x2

    .line 1489
    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/high16 v11, 0x3000

    aput v11, v5, v0

    .line 1490
    if-eqz v9, :cond_6

    const-string v5, "torch"

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "on"

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1492
    :cond_5
    const v5, 0x30000001

    const/4 v9, 0x1

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1493
    const v5, 0x30000002

    const/4 v9, 0x1

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1495
    :cond_6
    if-eqz v10, :cond_7

    .line 1497
    const v5, 0x30000010

    const/4 v9, 0x1

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1498
    const v5, 0x30000020

    const-string v9, "auto"

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1499
    const v5, 0x30000040

    const-string v9, "continuous-video"

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1500
    const v5, 0x30000080

    const-string v9, "macro"

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1501
    const v5, 0x30000100

    const-string v9, "infinity"

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1502
    const v5, 0x30000200

    const-string v9, "fixed"

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, v4, v0, v5, v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCapsBit(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;IIZ)V

    .line 1506
    :cond_7
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 1507
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x4

    aput v3, v0, v5

    .line 1508
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x5

    aput v1, v0, v5

    .line 1511
    const/4 v0, 0x6

    .line 1514
    if-lez v2, :cond_13

    .line 1516
    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move v2, v0

    .line 1517
    :goto_9
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1519
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1520
    iget-object v6, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    aput v9, v6, v2

    .line 1521
    iget-object v6, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    add-int/lit8 v9, v2, 0x1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    aput v0, v6, v9

    .line 1522
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 1523
    goto :goto_9

    .line 1450
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 1451
    :cond_9
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    .line 1452
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    .line 1467
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1473
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1474
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1480
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1484
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_12
    move v0, v2

    .line 1527
    :cond_13
    if-lez v3, :cond_15

    .line 1529
    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move v2, v0

    .line 1530
    :goto_a
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1532
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1533
    iget-object v5, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    aput v0, v5, v2

    .line 1534
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1535
    goto :goto_a

    :cond_14
    move v0, v2

    .line 1539
    :cond_15
    if-lez v1, :cond_16

    .line 1541
    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 1542
    :goto_b
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1544
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1545
    iget-object v3, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/vuforia/ar/pl/Camera1_Preview;->translateImageFormat(IZ)I

    move-result v0

    aput v0, v3, v1

    .line 1546
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1547
    goto :goto_b

    .line 1552
    :cond_16
    iget-object v0, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    goto/16 :goto_0
.end method

.method public getCaptureInfo(I)[I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x6

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1625
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v4

    .line 1628
    if-nez v4, :cond_0

    .line 1630
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1665
    :goto_0
    return-object v0

    .line 1636
    :cond_0
    iget-object v1, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1639
    if-nez v5, :cond_1

    .line 1641
    invoke-static {v9}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1650
    :cond_1
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [I

    .line 1651
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    aput v7, v1, v6

    .line 1652
    const/4 v6, 0x1

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    aput v7, v1, v6

    .line 1653
    const/4 v6, 0x2

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    sget-boolean v8, Lcom/vuforia/ar/pl/Camera1_Preview;->CONVERT_FORMAT_TO_PL:Z

    invoke-direct {p0, v7, v8}, Lcom/vuforia/ar/pl/Camera1_Preview;->translateImageFormat(IZ)I

    move-result v7

    aput v7, v1, v6

    .line 1654
    const/4 v6, 0x3

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v5

    aput v5, v1, v6

    .line 1655
    const/4 v5, 0x4

    iget-object v6, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    if-nez v6, :cond_2

    iget-object v4, v4, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    aput v2, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1665
    goto :goto_0

    .line 1657
    :catch_0
    move-exception v1

    .line 1659
    invoke-static {v9}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public getDeviceID(I)I
    .locals 1
    .parameter

    .prologue
    .line 1120
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 1123
    if-nez v0, :cond_0

    .line 1125
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1127
    const/4 v0, -0x1

    .line 1131
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceID:I

    goto :goto_0
.end method

.method public getDirection(I)I
    .locals 4
    .parameter

    .prologue
    const v1, 0x10002011

    const/4 v3, 0x6

    const/4 v0, -0x1

    .line 1070
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1110
    :goto_0
    return v0

    .line 1077
    :cond_0
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1082
    :try_start_0
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v0, :pswitch_data_0

    .line 1101
    const v0, 0x10002010

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v1

    .line 1087
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 1095
    goto :goto_0

    .line 1098
    :pswitch_1
    const v0, 0x10002012

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1110
    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getFlattenedParameters(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1876
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 1879
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1881
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1883
    const-string v0, ""

    .line 1897
    :goto_0
    return-object v0

    .line 1887
    :cond_1
    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1890
    if-nez v0, :cond_2

    .line 1892
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1894
    const-string v0, ""

    goto :goto_0

    .line 1897
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, -0x1

    .line 982
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1022
    :goto_0
    return v0

    .line 989
    :cond_0
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v1

    .line 998
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1012
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1013
    const-string v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1022
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 1015
    :catch_1
    move-exception v1

    .line 1017
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1022
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    const/4 v0, -0x1

    .line 1031
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1033
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1061
    :goto_0
    return v0

    .line 1038
    :cond_0
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1043
    :try_start_0
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1048
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method getStatus(I)I
    .locals 1
    .parameter

    .prologue
    .line 2667
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 2670
    if-nez v0, :cond_0

    .line 2672
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2674
    const v0, 0x10002000

    .line 2677
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I

    goto :goto_0
.end method

.method getTypedCameraParameter(II)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 2402
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 2405
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 2407
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2657
    :goto_0
    return-object v0

    .line 2413
    :cond_1
    iget-object v2, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2416
    if-nez v2, :cond_2

    .line 2418
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2420
    goto :goto_0

    .line 2425
    :cond_2
    sparse-switch p2, :sswitch_data_0

    move-object v0, v1

    .line 2650
    goto :goto_0

    .line 2428
    :sswitch_0
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2429
    const-string v2, "torch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2431
    :cond_3
    const v0, 0x30000002

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2433
    :cond_4
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2435
    const v0, 0x30000001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2438
    :cond_5
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2440
    goto :goto_0

    .line 2443
    :sswitch_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 2444
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2446
    iget-boolean v0, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->isAutoFocusing:Z

    if-eqz v0, :cond_6

    const v0, 0x30000020

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    const v0, 0x30000010

    goto :goto_1

    .line 2448
    :cond_7
    const-string v0, "continuous-video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2450
    const v0, 0x30000040

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2452
    :cond_8
    const-string v0, "infinity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2454
    const v0, 0x30000100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2456
    :cond_9
    const-string v0, "macro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2458
    const v0, 0x30000080

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2460
    :cond_a
    const-string v0, "fixed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2462
    const v0, 0x30000200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2465
    :cond_b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2467
    goto/16 :goto_0

    .line 2470
    :sswitch_2
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2473
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 2477
    :cond_c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2479
    goto/16 :goto_0

    .line 2483
    :sswitch_3
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2487
    const/4 v0, 0x3

    new-array v3, v0, [F

    .line 2488
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getFocusDistances([F)V

    .line 2491
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2492
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget v4, v3, v4

    aput v4, v0, v2

    .line 2493
    const/4 v2, 0x1

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2653
    :catch_0
    move-exception v0

    .line 2655
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2657
    goto/16 :goto_0

    .line 2499
    :cond_d
    const/4 v0, 0x6

    :try_start_1
    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2501
    goto/16 :goto_0

    .line 2505
    :sswitch_4
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_e

    .line 2508
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    .line 2509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 2512
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 2514
    const/4 v2, 0x5

    new-array v2, v2, [F

    .line 2515
    const/4 v3, 0x0

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2516
    const/4 v3, 0x1

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2517
    const/4 v3, 0x2

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2518
    const/4 v3, 0x3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 2519
    const/4 v3, 0x4

    iget v0, v0, Landroid/hardware/Camera$Area;->weight:I

    int-to-float v0, v0

    aput v0, v2, v3

    move-object v0, v2

    .line 2521
    goto/16 :goto_0

    .line 2524
    :cond_e
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2526
    goto/16 :goto_0

    .line 2529
    :sswitch_5
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2531
    goto/16 :goto_0

    .line 2534
    :sswitch_6
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2536
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 2540
    :cond_f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2542
    goto/16 :goto_0

    .line 2546
    :sswitch_7
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2549
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2550
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    aput v4, v0, v3

    .line 2551
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v3

    goto/16 :goto_0

    .line 2557
    :cond_10
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2559
    goto/16 :goto_0

    .line 2563
    :sswitch_8
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2565
    goto/16 :goto_0

    .line 2568
    :sswitch_9
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2570
    goto/16 :goto_0

    .line 2573
    :sswitch_a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2575
    goto/16 :goto_0

    .line 2578
    :sswitch_b
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2579
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2582
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2586
    :cond_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2588
    goto/16 :goto_0

    .line 2592
    :sswitch_c
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2593
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2595
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2598
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 2601
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    aput v2, v0, v3

    goto/16 :goto_0

    .line 2607
    :cond_12
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2609
    goto/16 :goto_0

    .line 2613
    :sswitch_d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2615
    goto/16 :goto_0

    .line 2618
    :sswitch_e
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2620
    goto/16 :goto_0

    .line 2623
    :sswitch_f
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2625
    goto/16 :goto_0

    .line 2628
    :sswitch_10
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2630
    goto/16 :goto_0

    .line 2633
    :sswitch_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    move-object v0, v1

    .line 2635
    goto/16 :goto_0

    .line 2642
    :sswitch_12
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2643
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2645
    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 2425
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000001 -> :sswitch_0
        0x20000002 -> :sswitch_1
        0x20000004 -> :sswitch_2
        0x20000008 -> :sswitch_3
        0x20000010 -> :sswitch_4
        0x20000020 -> :sswitch_5
        0x20000400 -> :sswitch_6
        0x20000800 -> :sswitch_7
        0x20001000 -> :sswitch_8
        0x20002000 -> :sswitch_9
        0x20004000 -> :sswitch_a
        0x20008000 -> :sswitch_b
        0x20010000 -> :sswitch_c
        0x20020000 -> :sswitch_d
        0x20040000 -> :sswitch_e
        0x20080000 -> :sswitch_f
        0x20100000 -> :sswitch_10
        0x20200000 -> :sswitch_11
        0x21000000 -> :sswitch_12
    .end sparse-switch
.end method

.method getUntypedCameraParameter(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 1842
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1845
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 1847
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1870
    :cond_1
    :goto_0
    return-object v0

    .line 1853
    :cond_2
    iget-object v1, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1856
    if-nez v1, :cond_3

    .line 1858
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1863
    :cond_3
    invoke-virtual {v1, p2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_1

    .line 1866
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 960
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    .line 963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x12

    .line 893
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 895
    invoke-static {v10}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 906
    if-nez v0, :cond_2

    .line 909
    invoke-static {v10}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 916
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 919
    invoke-direct {p0, v3}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 922
    if-nez v0, :cond_3

    .line 925
    invoke-static {v10}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 935
    :cond_3
    iget-wide v1, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceHandle:J

    iget v4, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferWidth:I

    iget v5, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferHeight:I

    iget v6, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferFormatPL:I

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuforia/ar/pl/Camera1_Preview;->newFrameAvailable(JIIII[BJ)V

    .line 938
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 940
    invoke-static {v10}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
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
    .line 1143
    invoke-direct {p0}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1147
    const/4 v3, -0x1

    .line 1360
    :goto_0
    return v3

    .line 1153
    :cond_0
    move/from16 v0, p5

    invoke-direct {p0, p3, p4, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraDeviceIndex(III)I

    move-result v5

    .line 1154
    if-gez v5, :cond_1

    .line 1157
    const/4 v3, -0x1

    goto :goto_0

    .line 1163
    :cond_1
    const/4 v3, -0x1

    .line 1164
    const/4 v2, 0x0

    .line 1166
    iget-object v4, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1167
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_16

    .line 1169
    iget-object v2, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    .line 1170
    iget v7, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceID:I

    if-ne v7, v5, :cond_6

    .line 1178
    :goto_2
    if-gez v4, :cond_2

    .line 1180
    new-instance v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    invoke-direct {v3, p0}, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;-><init>(Lcom/vuforia/ar/pl/Camera1_Preview;)V

    .line 1181
    iput v5, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceID:I

    .line 1182
    iput-wide p1, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceHandle:J

    .line 1183
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    .line 1184
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    .line 1185
    const/4 v2, 0x0

    check-cast v2, [[B

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->buffer:[[B

    .line 1186
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideWidth:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestWidth:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferWidth:I

    .line 1187
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideHeight:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestHeight:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferHeight:I

    .line 1188
    const v2, 0x10001100

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferFormatPL:I

    .line 1189
    const/4 v2, 0x0

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->overrideFormatAndroid:I

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->requestFormatAndroid:I

    .line 1190
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->caps:[I

    .line 1191
    const v2, 0x10002001

    iput v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I

    .line 1192
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->isAutoFocusing:Z

    move-object v2, v3

    .line 1199
    :cond_2
    const/4 v3, 0x0

    iput v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->bufferSize:I

    .line 1201
    const/4 v5, 0x0

    .line 1202
    const/16 v3, 0xa

    move v6, v3

    move v3, v5

    .line 1211
    :goto_3
    const/16 v5, 0x9

    :try_start_0
    invoke-static {v5}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1213
    iget v5, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceID:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    .line 1229
    :cond_3
    :goto_4
    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_5
    move v5, v3

    .line 1237
    :goto_6
    if-nez v5, :cond_4

    .line 1243
    if-lez v6, :cond_4

    .line 1245
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1247
    const-wide/16 v8, 0xfa

    :try_start_2
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 1248
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    :cond_4
    :goto_7
    if-nez v5, :cond_5

    add-int/lit8 v3, v6, -0x1

    if-gtz v6, :cond_15

    .line 1260
    :cond_5
    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_9

    .line 1263
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1265
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1167
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1217
    :cond_7
    :try_start_3
    iget v5, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->deviceID:I

    if-nez v5, :cond_3

    .line 1220
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1231
    :catch_0
    move-exception v5

    move v5, v3

    goto :goto_6

    .line 1229
    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 1248
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1251
    :catch_1
    move-exception v3

    goto :goto_7

    .line 1271
    :cond_9
    if-eqz p7, :cond_a

    move-object/from16 v0, p7

    array-length v3, v0

    if-gtz v3, :cond_b

    :cond_a
    if-eqz p8, :cond_d

    move-object/from16 v0, p8

    array-length v3, v0

    if-lez v3, :cond_d

    :cond_b
    const/4 v3, 0x1

    move v5, v3

    .line 1272
    :goto_8
    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    .line 1275
    :goto_9
    if-nez v5, :cond_c

    if-eqz v3, :cond_13

    .line 1278
    :cond_c
    iget-object v6, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v6}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 1281
    if-nez v6, :cond_f

    .line 1283
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1285
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1271
    :cond_d
    const/4 v3, 0x0

    move v5, v3

    goto :goto_8

    .line 1272
    :cond_e
    const/4 v3, 0x0

    goto :goto_9

    .line 1289
    :cond_f
    if-eqz v5, :cond_11

    .line 1291
    if-eqz p7, :cond_10

    move-object/from16 v0, p7

    array-length v5, v0

    const/4 v7, 0x5

    if-eq v5, v7, :cond_10

    .line 1293
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1295
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1299
    :cond_10
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v2, v6, v0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;Landroid/hardware/Camera$Parameters;[I[I)Z

    move-result v5

    .line 1300
    if-nez v5, :cond_11

    .line 1302
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1304
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1309
    :cond_11
    if-eqz v3, :cond_12

    .line 1312
    move-object/from16 v0, p6

    invoke-direct {p0, v6, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCustomCameraParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v3

    .line 1313
    if-nez v3, :cond_12

    .line 1315
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1317
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1324
    :cond_12
    :try_start_6
    iget-object v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1333
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkSamsungHighFPS(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1335
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1326
    :catch_2
    move-exception v2

    .line 1328
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1330
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1340
    :cond_13
    const v3, 0x10002002

    iput v3, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I

    .line 1342
    if-gez v4, :cond_14

    .line 1348
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1357
    :goto_a
    iget-object v4, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_14
    move v3, v4

    goto :goto_a

    :cond_15
    move v6, v3

    move v3, v5

    goto/16 :goto_3

    :cond_16
    move v4, v3

    goto/16 :goto_2
.end method

.method public setBatchParameters(ILjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1752
    if-nez p2, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v0

    .line 1759
    :cond_1
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    .line 1764
    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1770
    :cond_3
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1773
    if-nez v2, :cond_4

    .line 1775
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1780
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCustomCameraParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1785
    iget-object v0, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1786
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCaptureInfo(I[I[I)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 1561
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1564
    if-nez v1, :cond_1

    .line 1566
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1616
    :cond_0
    :goto_0
    return v0

    .line 1571
    :cond_1
    array-length v2, p2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 1573
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1582
    if-nez v2, :cond_3

    .line 1584
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1590
    :cond_3
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/vuforia/ar/pl/Camera1_Preview;->setCameraCaptureParams(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;Landroid/hardware/Camera$Parameters;[I[I)Z

    move-result v3

    .line 1591
    if-nez v3, :cond_4

    .line 1593
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1601
    :cond_4
    :try_start_0
    iget-object v3, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->checkSamsungHighFPS(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    const/4 v0, 0x1

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v1

    .line 1605
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public setSurfaceManager(Lcom/vuforia/ar/pl/SurfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera1_Preview;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    .line 974
    return-void
.end method

.method setTypedCameraParameter(IILjava/lang/Object;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1905
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v3

    .line 1908
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1910
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1912
    const/4 v0, 0x0

    .line 2393
    :goto_0
    return v0

    .line 1916
    :cond_1
    iget-object v0, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 1919
    if-nez v4, :cond_2

    .line 1921
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1923
    const/4 v0, 0x0

    goto :goto_0

    .line 1927
    :cond_2
    const/4 v0, 0x0

    .line 1931
    sparse-switch p2, :sswitch_data_0

    .line 2312
    const/4 v0, 0x0

    goto :goto_0

    .line 1934
    :sswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1935
    const-string v2, "iso-values"

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1936
    if-eqz v2, :cond_3

    .line 1938
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1939
    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 1941
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1943
    aget-object v1, v5, v2

    .line 1948
    :cond_3
    const-string v2, "iso"

    invoke-virtual {v4, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2325
    :cond_4
    :goto_2
    :try_start_1
    iget-object v1, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2335
    if-eqz v0, :cond_5

    .line 2339
    packed-switch p2, :pswitch_data_0

    .line 2393
    :cond_5
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1939
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1952
    :sswitch_1
    :try_start_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1954
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1957
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2315
    :catch_0
    move-exception v0

    .line 2317
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2319
    const/4 v0, 0x0

    goto :goto_0

    .line 1957
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 1961
    :cond_8
    :try_start_3
    const-string v2, "recording-hint"

    if-eqz v1, :cond_9

    const-string v1, "true"

    :goto_5
    invoke-virtual {v4, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v1, "false"

    goto :goto_5

    .line 1968
    :sswitch_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1970
    packed-switch v1, :pswitch_data_1

    .line 1996
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1998
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1974
    :pswitch_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1976
    const-string v1, "torch"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1981
    :cond_a
    const-string v1, "on"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1987
    :pswitch_2
    const-string v1, "off"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1991
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1993
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2007
    :sswitch_3
    iget-object v1, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2009
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2010
    sparse-switch v1, :sswitch_data_1

    .line 2078
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2080
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2013
    :sswitch_4
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "normal"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2015
    const-string v1, "normal"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2023
    :cond_b
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2027
    const/4 v0, 0x1

    .line 2029
    goto/16 :goto_2

    .line 2032
    :sswitch_5
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2036
    const/4 v0, 0x1

    .line 2037
    goto/16 :goto_2

    .line 2040
    :sswitch_6
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2042
    const-string v1, "continuous-video"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2047
    :cond_c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2049
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2055
    :sswitch_7
    const-string v1, "macro"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2065
    :sswitch_8
    const-string v1, "infinity"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2074
    :sswitch_9
    const-string v1, "fixed"

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2085
    :sswitch_a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2087
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2091
    :sswitch_b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2093
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2096
    :sswitch_c
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2099
    check-cast p3, [F

    check-cast p3, [F

    .line 2101
    array-length v1, p3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_d

    .line 2103
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2105
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2108
    :cond_d
    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    const/4 v1, 0x0

    aget v1, p3, v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_e

    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    const/4 v1, 0x1

    aget v1, p3, v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_e

    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    const/4 v1, 0x2

    aget v1, p3, v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_e

    const/4 v1, 0x3

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    const/4 v1, 0x3

    aget v1, p3, v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_e

    const/4 v1, 0x4

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    const/4 v1, 0x4

    aget v1, p3, v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    .line 2114
    :cond_e
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2116
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2119
    :cond_f
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, p3, v2

    float-to-double v6, v2

    const-wide v8, 0x409f400000000000L

    mul-double/2addr v6, v8

    double-to-int v2, v6

    add-int/lit16 v2, v2, -0x3e8

    const/4 v5, 0x1

    aget v5, p3, v5

    float-to-double v6, v5

    const-wide v8, 0x409f400000000000L

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/lit16 v5, v5, -0x3e8

    const/4 v6, 0x2

    aget v6, p3, v6

    float-to-double v6, v6

    const-wide v8, 0x409f400000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0x3e8

    const/4 v7, 0x3

    aget v7, p3, v7

    float-to-double v8, v7

    const-wide v10, 0x409f400000000000L

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int/lit16 v7, v7, -0x3e8

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    new-instance v5, Landroid/hardware/Camera$Area;

    const/4 v6, 0x4

    aget v6, p3, v6

    float-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v1, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 2129
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_4

    .line 2133
    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto/16 :goto_2

    .line 2139
    :cond_10
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2141
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2146
    :sswitch_d
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2147
    sparse-switch v1, :sswitch_data_2

    .line 2164
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2166
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2151
    :sswitch_e
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2153
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    goto/16 :goto_2

    .line 2158
    :sswitch_f
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2160
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    goto/16 :goto_2

    .line 2171
    :sswitch_10
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2174
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 2175
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 2177
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_11

    .line 2179
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2181
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2185
    :cond_11
    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto/16 :goto_2

    .line 2189
    :cond_12
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2191
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2197
    :sswitch_11
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2199
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2202
    :sswitch_12
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2203
    sparse-switch v1, :sswitch_data_3

    .line 2220
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set unknown white balance mode ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 2222
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2207
    :sswitch_13
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2209
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto/16 :goto_2

    .line 2214
    :sswitch_14
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2216
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto/16 :goto_2

    .line 2227
    :sswitch_15
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2229
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2232
    :sswitch_16
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2234
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2237
    :sswitch_17
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2238
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2241
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2244
    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_2

    .line 2248
    :cond_13
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2250
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2255
    :sswitch_18
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2257
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2260
    :sswitch_19
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2262
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2265
    :sswitch_1a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2267
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2270
    :sswitch_1b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2272
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2275
    :sswitch_1c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2276
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2282
    :sswitch_1d
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2284
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2287
    :sswitch_1e
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2288
    if-eqz v1, :cond_14

    .line 2295
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_2

    .line 2305
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2327
    :catch_1
    move-exception v0

    .line 2329
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2331
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2343
    :pswitch_4
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->isAutoFocusing:Z

    .line 2346
    iget-object v0, v3, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/vuforia/ar/pl/Camera1_Preview$1;

    invoke-direct {v1, p0}, Lcom/vuforia/ar/pl/Camera1_Preview$1;-><init>(Lcom/vuforia/ar/pl/Camera1_Preview;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 2384
    :catch_2
    move-exception v0

    .line 2386
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 2388
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1931
    :sswitch_data_0
    .sparse-switch
        0x20000001 -> :sswitch_2
        0x20000002 -> :sswitch_3
        0x20000004 -> :sswitch_a
        0x20000008 -> :sswitch_b
        0x20000010 -> :sswitch_c
        0x20000020 -> :sswitch_d
        0x20000040 -> :sswitch_0
        0x20000400 -> :sswitch_10
        0x20000800 -> :sswitch_11
        0x20001000 -> :sswitch_12
        0x20002000 -> :sswitch_15
        0x20004000 -> :sswitch_16
        0x20008000 -> :sswitch_17
        0x20010000 -> :sswitch_18
        0x20020000 -> :sswitch_19
        0x20040000 -> :sswitch_1a
        0x20080000 -> :sswitch_1b
        0x20100000 -> :sswitch_1c
        0x20200000 -> :sswitch_1d
        0x20400000 -> :sswitch_1
        0x21000000 -> :sswitch_1e
    .end sparse-switch

    .line 2339
    :pswitch_data_0
    .packed-switch 0x20000002
        :pswitch_4
    .end packed-switch

    .line 1970
    :pswitch_data_1
    .packed-switch 0x30000001
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2010
    :sswitch_data_1
    .sparse-switch
        0x30000010 -> :sswitch_4
        0x30000020 -> :sswitch_5
        0x30000040 -> :sswitch_6
        0x30000080 -> :sswitch_7
        0x30000100 -> :sswitch_8
        0x30000200 -> :sswitch_9
    .end sparse-switch

    .line 2147
    :sswitch_data_2
    .sparse-switch
        0x30001000 -> :sswitch_e
        0x30004000 -> :sswitch_f
    .end sparse-switch

    .line 2203
    :sswitch_data_3
    .sparse-switch
        0x30100000 -> :sswitch_13
        0x30400000 -> :sswitch_14
    .end sparse-switch
.end method

.method setUntypedCameraParameter(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 1794
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1797
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 1799
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1833
    :goto_0
    return v0

    .line 1805
    :cond_1
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1808
    if-nez v2, :cond_2

    .line 1810
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1820
    :cond_2
    :try_start_0
    invoke-virtual {v2, p2, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v1, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    const/4 v0, 0x1

    goto :goto_0

    .line 1829
    :catch_0
    move-exception v1

    .line 1831
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 1674
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1677
    if-nez v1, :cond_0

    .line 1679
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1710
    :goto_0
    return v0

    .line 1685
    :cond_0
    invoke-direct {p0, v1}, Lcom/vuforia/ar/pl/Camera1_Preview;->setupPreviewBuffer(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1687
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 1695
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 1699
    const v2, 0x10002003

    iput v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    const/4 v0, 0x1

    goto :goto_0

    .line 1704
    :catch_0
    move-exception v1

    .line 1706
    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method

.method public stop(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v1

    .line 1722
    if-nez v1, :cond_0

    .line 1724
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 1746
    :goto_0
    return v0

    .line 1732
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 1736
    const v2, 0x10002002

    iput v2, v1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    const/4 v0, 0x1

    goto :goto_0

    .line 1740
    :catch_0
    move-exception v1

    .line 1742
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0
.end method
