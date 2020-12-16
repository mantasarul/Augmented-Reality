.class Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;
.super Ljava/lang/Object;
.source "Camera2_Preview.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ar/pl/Camera2_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCameraDataAvailable"
.end annotation


# instance fields
.field private actualBufferSize:[I

.field private actualCaptureFormat:I

.field private prevTimestamp:J

.field final synthetic this$0:Lcom/vuforia/ar/pl/Camera2_Preview;


# direct methods
.method private constructor <init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V
    .locals 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const v0, 0x10001100

    iput v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualCaptureFormat:I

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    .line 294
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->prevTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/vuforia/ar/pl/Camera2_Preview;Lcom/vuforia/ar/pl/Camera2_Preview$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V

    return-void
.end method

.method private calculateActualBufferSize(JJJIIIII)[I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    const/4 v3, 0x0

    .line 491
    const v4, 0x10001107

    move/from16 v0, p11

    if-eq v0, v4, :cond_0

    const v4, 0x10001109

    move/from16 v0, p11

    if-ne v0, v4, :cond_4

    :cond_0
    mul-int v4, p10, p9

    int-to-long v4, v4

    add-long/2addr v4, p1

    cmp-long v4, v4, p3

    if-eqz v4, :cond_4

    .line 494
    const/4 v3, 0x1

    .line 503
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 513
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 514
    const/4 v3, 0x0

    aput p7, v2, v3

    .line 515
    const/4 v3, 0x1

    sub-long v4, p3, p1

    move/from16 v0, p7

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v2, v3

    .line 516
    const/4 v3, 0x2

    aput p8, v2, v3

    .line 518
    const v3, 0x10001107

    move/from16 v0, p11

    if-eq v0, v3, :cond_2

    const v3, 0x10001109

    move/from16 v0, p11

    if-ne v0, v3, :cond_7

    .line 519
    :cond_2
    const/4 v3, 0x3

    div-int/lit8 v4, p10, 0x2

    aput v4, v2, v3

    .line 526
    :cond_3
    :goto_1
    return-object v2

    .line 496
    :cond_4
    const v4, 0x1000110a

    move/from16 v0, p11

    if-eq v0, v4, :cond_5

    const v4, 0x10001114

    move/from16 v0, p11

    if-ne v0, v4, :cond_1

    :cond_5
    mul-int v4, p10, p9

    int-to-long v4, v4

    add-long/2addr v4, p1

    cmp-long v4, v4, p3

    if-nez v4, :cond_6

    div-int/lit8 v4, p10, 0x2

    div-int/lit8 v5, p9, 0x2

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, p3

    cmp-long v4, v4, p5

    if-eqz v4, :cond_1

    .line 499
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 520
    :cond_7
    const v3, 0x1000110a

    move/from16 v0, p11

    if-eq v0, v3, :cond_8

    const v3, 0x10001114

    move/from16 v0, p11

    if-ne v0, v3, :cond_3

    .line 521
    :cond_8
    const/4 v3, 0x3

    sub-long v4, p5, p3

    move/from16 v0, p8

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v2, v3

    goto :goto_1
.end method

.method private getImageFormat(Landroid/media/Image;)I
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, 0x0

    const v0, 0x10001100

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 391
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v9, v2, v7

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v8

    .line 401
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 408
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 415
    const/4 v3, 0x3

    new-array v6, v3, [J

    .line 416
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    #calls: Lcom/vuforia/ar/pl/Camera2_Preview;->getBufferAddress(Ljava/nio/ByteBuffer;)J
    invoke-static {v3, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$300(Lcom/vuforia/ar/pl/Camera2_Preview;Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v6, v10

    .line 417
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    #calls: Lcom/vuforia/ar/pl/Camera2_Preview;->getBufferAddress(Ljava/nio/ByteBuffer;)J
    invoke-static {v3, v4}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$300(Lcom/vuforia/ar/pl/Camera2_Preview;Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v6, v7

    .line 418
    iget-object v3, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    #calls: Lcom/vuforia/ar/pl/Camera2_Preview;->getBufferAddress(Ljava/nio/ByteBuffer;)J
    invoke-static {v3, v2}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$300(Lcom/vuforia/ar/pl/Camera2_Preview;Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v6, v8

    .line 421
    aget-wide v2, v6, v10

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    aget-wide v2, v6, v7

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    aget-wide v2, v6, v8

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 432
    aget-wide v2, v6, v7

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aget-wide v4, v6, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 435
    aget-wide v2, v6, v10

    aget-wide v4, v6, v7

    aget-wide v6, v6, v8

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const v12, 0x10001107

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->calculateActualBufferSize(JJJIIIII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    .line 436
    const v0, 0x10001107

    goto/16 :goto_0

    .line 440
    :cond_2
    aget-wide v2, v6, v8

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aget-wide v4, v6, v7

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 443
    aget-wide v2, v6, v10

    aget-wide v4, v6, v8

    aget-wide v6, v6, v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const v12, 0x10001109

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->calculateActualBufferSize(JJJIIIII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    .line 444
    const v0, 0x10001109

    goto/16 :goto_0

    .line 452
    :cond_3
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 455
    aget-wide v2, v6, v7

    aget-wide v4, v6, v8

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 458
    aget-wide v2, v6, v10

    aget-wide v4, v6, v7

    aget-wide v6, v6, v8

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const v12, 0x1000110a

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->calculateActualBufferSize(JJJIIIII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    .line 459
    const v0, 0x1000110a

    goto/16 :goto_0

    .line 465
    :cond_4
    aget-wide v2, v6, v10

    aget-wide v4, v6, v8

    aget-wide v6, v6, v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v11

    const v12, 0x10001114

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->calculateActualBufferSize(JJJIIIII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    .line 466
    const v0, 0x10001114

    goto/16 :goto_0
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 13
    .parameter

    .prologue
    .line 299
    const-string v0, "onImageAvailable (java)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfoIndexCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$000(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 302
    if-nez v0, :cond_1

    .line 305
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera2_Preview;->mCameraCacheInfos:Ljava/util/Vector;
    invoke-static {v1}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$100(Lcom/vuforia/ar/pl/Camera2_Preview;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;

    .line 310
    if-nez v11, :cond_2

    .line 313
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v1, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->imageSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    const-string v0, "Camera2_Preview"

    const-string v1, "Unable to aquire image semaphore, need to free some buffers!!"

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 327
    new-instance v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;

    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    invoke-direct {v10, v1}, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;-><init>(Lcom/vuforia/ar/pl/Camera2_Preview;)V

    .line 328
    invoke-virtual {v12}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->timestamp:J

    .line 335
    iget-object v2, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->lastResult:Landroid/hardware/camera2/CaptureResult;

    .line 336
    if-eqz v2, :cond_5

    .line 344
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 345
    if-eqz v1, :cond_4

    .line 347
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->exposureTime:J

    .line 348
    iget-wide v4, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->timestamp:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->timestamp:J

    .line 352
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 353
    if-eqz v1, :cond_5

    .line 354
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->iso:I

    .line 357
    :cond_5
    iget-wide v2, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->timestamp:J

    iget-wide v4, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->prevTimestamp:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 367
    iget-wide v2, v10, Lcom/vuforia/ar/pl/Camera2_Preview$FrameInfo;->timestamp:J

    iput-wide v2, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->prevTimestamp:J

    .line 370
    iget v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualCaptureFormat:I

    const v2, 0x10001100

    if-ne v1, v2, :cond_6

    .line 371
    invoke-direct {p0, v12}, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->getImageFormat(Landroid/media/Image;)I

    move-result v1

    iput v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualCaptureFormat:I

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->this$0:Lcom/vuforia/ar/pl/Camera2_Preview;

    iget-wide v2, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->deviceHandle:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferWidth:I

    iget v6, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->bufferHeight:I

    iget-object v7, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualBufferSize:[I

    iget v8, p0, Lcom/vuforia/ar/pl/Camera2_Preview$OnCameraDataAvailable;->actualCaptureFormat:I

    invoke-virtual {v12}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    #calls: Lcom/vuforia/ar/pl/Camera2_Preview;->newFrameAvailable(JIII[IILjava/nio/ByteBuffer;Ljava/lang/Object;)V
    invoke-static/range {v1 .. v10}, Lcom/vuforia/ar/pl/Camera2_Preview;->access$200(Lcom/vuforia/ar/pl/Camera2_Preview;JIII[IILjava/nio/ByteBuffer;Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v12}, Landroid/media/Image;->close()V

    .line 384
    :cond_7
    iget-object v0, v11, Lcom/vuforia/ar/pl/Camera2_Preview$CameraCacheInfo;->imageSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 386
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0
.end method
