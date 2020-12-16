.class public Lcom/vuforia/ar/pl/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;,
        Lcom/vuforia/ar/pl/RenderManager$RenderRequestWatcher;
    }
.end annotation


# static fields
.field private static final AR_RENDERING_MODE_CONTINUOUS:I = 0x2

.field private static final AR_RENDERING_MODE_DISABLED:I = 0x1

.field private static final AR_RENDERING_MODE_UNKNOWN:I = 0x0

.field private static final AR_RENDERING_MODE_WHENDIRTY:I = 0x3

.field private static final MODULENAME:Ljava/lang/String; = "RenderManager"

.field private static viewId:I


# instance fields
.field delayMS:J

.field fixedFrameRateRunnerTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field maxMS:J

.field minMS:J

.field renderMode:I

.field renderRequestServiced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field renderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

.field synchronousMode:Z

.field timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/vuforia/ar/pl/RenderManager;->viewId:I

    return-void
.end method

.method public constructor <init>(Lcom/vuforia/ar/pl/SurfaceManager;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    .line 49
    iput-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->minMS:J

    .line 50
    iput-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->maxMS:J

    .line 110
    iput-object p1, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderMode:I

    .line 116
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 117
    iput-boolean v2, p0, Lcom/vuforia/ar/pl/RenderManager;->synchronousMode:Z

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestServiced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    return-void
.end method


# virtual methods
.method public addOverlay([BII[F[I)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 342
    if-nez v1, :cond_0

    .line 344
    const-string v0, "RenderManager"

    const-string v1, "drawOverlay could not get access to an activity"

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v0, Lcom/vuforia/ar/pl/DrawOverlayView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vuforia/ar/pl/DrawOverlayView;-><init>(Landroid/content/Context;[BII[F[I)V

    .line 350
    new-instance v2, Lcom/vuforia/ar/pl/RenderManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/vuforia/ar/pl/RenderManager$1;-><init>(Lcom/vuforia/ar/pl/RenderManager;Lcom/vuforia/ar/pl/DrawOverlayView;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public canSetRenderMode()Z
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v0}, Lcom/vuforia/ar/pl/SurfaceManager;->retrieveGLSurfaceView()Z

    move-result v0

    .line 188
    if-nez v0, :cond_0

    .line 190
    const-string v1, "RenderManager"

    const-string v2, "Could not retrieve a valid GLSurfaceView in view hierarchy, therefore cannot set any render mode"

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderMode:I

    return v0
.end method

.method public removeOverlay(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 366
    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    if-eqz p1, :cond_0

    .line 378
    new-instance v0, Lcom/vuforia/ar/pl/RenderManager$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/vuforia/ar/pl/RenderManager$2;-><init>(Lcom/vuforia/ar/pl/RenderManager;Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestRender()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 319
    return v1
.end method

.method public setRenderFpsLimits(ZII)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v2, 0x1

    const/16 v4, 0x3e8

    .line 284
    iput-boolean p1, p0, Lcom/vuforia/ar/pl/RenderManager;->synchronousMode:Z

    .line 286
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 290
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 294
    :cond_1
    if-le p2, v4, :cond_3

    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->minMS:J

    .line 295
    if-le p3, v4, :cond_4

    :goto_2
    iput-wide v2, p0, Lcom/vuforia/ar/pl/RenderManager;->maxMS:J

    .line 298
    iget v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 300
    iget-boolean v0, p0, Lcom/vuforia/ar/pl/RenderManager;->synchronousMode:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->minMS:J

    .line 303
    :goto_3
    iget-wide v2, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 305
    iput-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    .line 306
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/RenderManager;->startTimer()V

    .line 310
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_3
    int-to-long v0, p2

    div-long v0, v6, v0

    goto :goto_1

    .line 295
    :cond_4
    int-to-long v0, p3

    div-long v2, v6, v0

    goto :goto_2

    .line 300
    :cond_5
    iget-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->maxMS:J

    goto :goto_3
.end method

.method public setRenderMode(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 207
    .line 209
    iget-object v1, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    if-nez v1, :cond_0

    .line 211
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 275
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v1}, Lcom/vuforia/ar/pl/SurfaceManager;->retrieveGLSurfaceView()Z

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v1, v0}, Lcom/vuforia/ar/pl/SurfaceManager;->setEnableRenderWhenDirty(Z)Z

    move-result v0

    .line 223
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/RenderManager;->shutdownTimer()V

    .line 262
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 264
    invoke-static {v6}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v0, v2}, Lcom/vuforia/ar/pl/SurfaceManager;->setEnableRenderWhenDirty(Z)Z

    move-result v0

    .line 232
    if-eqz v0, :cond_1

    .line 234
    if-ne p1, v2, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/RenderManager;->shutdownTimer()V

    goto :goto_1

    .line 243
    :cond_2
    iget v1, p0, Lcom/vuforia/ar/pl/RenderManager;->renderMode:I

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_3
    iget-boolean v1, p0, Lcom/vuforia/ar/pl/RenderManager;->synchronousMode:Z

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/vuforia/ar/pl/RenderManager;->minMS:J

    .line 246
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 248
    iput-wide v2, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    .line 249
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/RenderManager;->startTimer()V

    goto :goto_1

    .line 245
    :cond_4
    iget-wide v2, p0, Lcom/vuforia/ar/pl/RenderManager;->maxMS:J

    goto :goto_2

    .line 270
    :cond_5
    iput p1, p0, Lcom/vuforia/ar/pl/RenderManager;->renderMode:I

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method shutdownTimer()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 174
    :cond_0
    return-void
.end method

.method startTimer()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->fixedFrameRateRunnerTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->fixedFrameRateRunnerTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->fixedFrameRateRunnerTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 145
    :cond_2
    iput-object v2, p0, Lcom/vuforia/ar/pl/RenderManager;->fixedFrameRateRunnerTask:Ljava/util/concurrent/ScheduledFuture;

    .line 146
    iput-object v2, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    .line 163
    iget-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    const-wide/16 v4, 0x1

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/vuforia/ar/pl/RenderManager$RenderRequestWatcher;

    invoke-direct {v1, p0, v2}, Lcom/vuforia/ar/pl/RenderManager$RenderRequestWatcher;-><init>(Lcom/vuforia/ar/pl/RenderManager;Lcom/vuforia/ar/pl/RenderManager$1;)V

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    .line 165
    return-void

    .line 163
    :cond_3
    iget-wide v0, p0, Lcom/vuforia/ar/pl/RenderManager;->delayMS:J

    div-long v4, v0, v4

    goto :goto_0
.end method
