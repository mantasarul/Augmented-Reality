.class Lcom/vuforia/ar/pl/Camera2_Preview$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2_Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuforia/ar/pl/Camera2_Preview;->start(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vuforia/ar/pl/Camera2_Preview;


# direct methods
.method constructor <init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$2;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .parameter

    .prologue
    .line 2096
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 2097
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$2;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2098
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .parameter

    .prologue
    .line 2075
    const/4 v1, 0x0

    .line 2077
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$2;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$100(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 2079
    iget-object v3, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 2087
    :cond_1
    iput-object p1, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2088
    iget-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->surfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 2089
    iget-object v3, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 2091
    :cond_2
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$2;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2092
    return-void
.end method
