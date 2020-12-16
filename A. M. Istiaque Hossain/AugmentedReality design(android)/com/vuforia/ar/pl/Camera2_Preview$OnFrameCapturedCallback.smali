.class Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2_Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ar/pl/Camera2_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFrameCapturedCallback"
.end annotation


# instance fields
.field mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

.field final synthetic this$0:Lcom/vuforia/ar/pl/Camera2_Preview;


# direct methods
.method public constructor <init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 541
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnFrameCapturedCallback;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iput-object p3, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->lastResult:Landroid/hardware/camera2/CaptureResult;

    .line 548
    :cond_0
    return-void
.end method
