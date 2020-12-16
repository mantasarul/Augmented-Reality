.class final Lcom/unity3d/player/a$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "Camera2: CaptureSession configuration failed."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const/4 v1, 0x4

    const-string v0, "Camera2: CaptureSession is configured."

    invoke-static {v1, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    iget-object v1, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v2}, Lcom/unity3d/player/a;->d(Lcom/unity3d/player/a;)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->g(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v2}, Lcom/unity3d/player/a;->e(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/a$1;->a:Lcom/unity3d/player/a;

    invoke-static {v3}, Lcom/unity3d/player/a;->f(Lcom/unity3d/player/a;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method
