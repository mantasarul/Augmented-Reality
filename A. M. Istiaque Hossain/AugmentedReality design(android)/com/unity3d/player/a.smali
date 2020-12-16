.class public final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Landroid/hardware/camera2/CameraManager;

.field private static c:[Ljava/lang/String;

.field private static e:Ljava/util/concurrent/Semaphore;


# instance fields
.field private a:Lcom/unity3d/player/d;

.field private d:Landroid/hardware/camera2/CameraDevice;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/util/Range;

.field private j:Landroid/media/ImageReader;

.field private k:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private l:Landroid/hardware/camera2/CameraCaptureSession;

.field private final m:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final n:Landroid/media/ImageReader$OnImageAvailableListener;

.field private o:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    sput-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method protected constructor <init>(Lcom/unity3d/player/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/d;

    new-instance v0, Lcom/unity3d/player/a$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$2;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->m:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/unity3d/player/a$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$3;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->n:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/unity3d/player/a$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$4;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->o:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p1, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/d;

    invoke-direct {p0}, Lcom/unity3d/player/a;->f()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

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

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([Landroid/util/Size;DD)Landroid/graphics/Rect;
    .locals 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL

    const/4 v0, 0x0

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v6, v8

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v10, v5

    div-double v10, p3, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v6, v10

    cmpg-double v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    move v1, v5

    move v4, v8

    :cond_0
    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Camera2: FrameSize "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " x "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a;->k:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method private static a([Landroid/util/Range;D)Landroid/util/Range;
    .locals 11

    const/4 v1, -0x1

    const-wide v2, 0x7fefffffffffffffL

    const/4 v0, 0x0

    move v4, v1

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v5

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    div-double v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    cmpg-double v8, v6, v2

    if-gez v8, :cond_0

    move-wide v2, v6

    move v4, v1

    :cond_0
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Camera2: Frame rate["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-object v0, p0, v4

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    sget-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    sput-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    :cond_0
    sget-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/a;)Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera2: CameraAccessException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->k:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    return-object v0

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/unity3d/player/a;)Landroid/util/Range;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->i:Landroid/util/Range;

    return-object v0
.end method

.method static synthetic e(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->o:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic f(Lcom/unity3d/player/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting for the background thread to finish "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/unity3d/player/a;)Lcom/unity3d/player/d;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/d;

    return-object v0
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x6

    :try_start_0
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "Camera2: Timeout waiting to lock camera for closing."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Interrupted while trying to lock camera for closing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    :try_start_1
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "Camera2: Timeout waiting to close camera."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Interrupted while waiting to close camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(Landroid/content/Context;IIII)Z
    .locals 9

    const/4 v5, 0x5

    const/4 v8, 0x6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v0, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera2: Hardware level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "Camera2: only LEGACY hardware level is supported."

    invoke-static {v5, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_1

    const-string v0, "Camera2: configuration map is not available."

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    :cond_2
    const-string v0, "Camera2: output sizes for YUV_420_888 format are not avialable."

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    int-to-double v4, p3

    int-to-double v6, p4

    invoke-static {v0, v4, v5, v6, v7}, Lcom/unity3d/player/a;->a([Landroid/util/Size;DD)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_5

    :cond_4
    const-string v0, "Camera2: target FPS ranges are not avialable."

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    int-to-double v2, p5

    invoke-static {v0, v2, v3}, Lcom/unity3d/player/a;->a([Landroid/util/Range;D)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->i:Landroid/util/Range;

    :try_start_1
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x5

    const-string v2, "Camera2: Timeout waiting to lock camera for opening."

    invoke-static {v0, v2}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_2
    sget-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/unity3d/player/a;->m:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x5

    const-string v2, "Camera2: Timeout waiting to open camera."

    invoke-static {v0, v2}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_4
    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to open camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    const-string v1, "Camera2: Close."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/a;->d()V

    invoke-direct {p0}, Lcom/unity3d/player/a;->h()V

    iput-object v2, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/a;->g()V

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x4

    const-string v1, "Camera2: Start preview."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/unity3d/player/a;->n:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unity3d/player/a;->j:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/a$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/a$1;-><init>(Lcom/unity3d/player/a;)V

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

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

.method public final d()V
    .locals 4

    const/4 v0, 0x4

    const-string v1, "Camera2: Stop preview."

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->l:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void

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
