.class Lcom/vuforia/ar/pl/Camera2_Preview$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2_Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuforia/ar/pl/Camera2_Preview;->open(JIIILjava/lang/String;[I[I)I
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
    .line 1502
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 1551
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1552
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1553
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1544
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1545
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1546
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1506
    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfosInProgress:Ljava/util/Vector;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$500(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 1511
    iget-object v3, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceIDString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_1

    .line 1514
    :try_start_1
    iput-object p1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;

    .line 1517
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move-object v1, v0

    .line 1519
    goto :goto_0

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1539
    :goto_2
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1523
    :goto_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1524
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 1525
    :catch_1
    move-exception v0

    .line 1528
    :goto_4
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1529
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1537
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 1530
    :catch_2
    move-exception v0

    .line 1533
    :goto_5
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1534
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->device:Landroid/hardware/camera2/CameraDevice;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1537
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mOpenCloseSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$600(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1538
    throw v0

    .line 1530
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_5

    .line 1525
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 1520
    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
