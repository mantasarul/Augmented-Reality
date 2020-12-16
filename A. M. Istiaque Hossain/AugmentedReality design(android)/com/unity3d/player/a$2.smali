.class final Lcom/unity3d/player/a$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
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

    iput-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Camera2: CameraDevice closed."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x5

    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Error opeining CameraDevice "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x4

    const-string v1, "Camera2: CameraDevice opened."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
