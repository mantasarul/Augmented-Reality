.class final Lcom/unity3d/player/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    iput-object p1, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    if-eqz v6, :cond_2

    array-length v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->h(Lcom/unity3d/player/a;)Lcom/unity3d/player/d;

    move-result-object v0

    aget-object v1, v6, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v2, v6, v8

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    aget-object v5, v6, v8

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/unity3d/player/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    :goto_0
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    :cond_0
    invoke-static {}, Lcom/unity3d/player/a;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x6

    const-string v1, "Camera2: Wrong image format."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method
