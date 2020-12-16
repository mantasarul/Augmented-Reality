.class Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2_Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ar/pl/Camera2_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutofocusRunner"
.end annotation


# instance fields
.field private mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

.field private mCancelRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mFocusRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lcom/vuforia/ar/pl/Camera2_Preview;


# direct methods
.method public constructor <init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 563
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    .line 564
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 566
    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCancelRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 567
    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mFocusRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 568
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 615
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 616
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCancelRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mFocusRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v1, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mFocusRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 632
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->isAutoFocusing:Z

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0

    .line 625
    :catch_1
    move-exception v0

    goto :goto_0

    .line 623
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public triggerAutofocus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 607
    :goto_0
    return v0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 578
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 579
    goto :goto_0

    .line 583
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    move v0, v1

    .line 584
    goto :goto_0

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iput-boolean v2, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->isAutoFocusing:Z

    .line 592
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCancelRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 596
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mFocusRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 603
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v0, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCancelRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview$AutofocusRunner;->mCCI:Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    iget-object v3, v3, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move v0, v2

    .line 607
    goto :goto_0
.end method
