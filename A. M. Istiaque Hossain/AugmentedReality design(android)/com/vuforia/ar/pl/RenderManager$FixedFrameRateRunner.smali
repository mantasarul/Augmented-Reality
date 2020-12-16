.class final Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;
.super Ljava/lang/Object;
.source "RenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ar/pl/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedFrameRateRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vuforia/ar/pl/RenderManager;


# direct methods
.method private constructor <init>(Lcom/vuforia/ar/pl/RenderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vuforia/ar/pl/RenderManager;Lcom/vuforia/ar/pl/RenderManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;-><init>(Lcom/vuforia/ar/pl/RenderManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-object v0, v0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestServiced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-object v0, v0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-object v0, v0, Lcom/vuforia/ar/pl/RenderManager;->surfaceManager:Lcom/vuforia/ar/pl/SurfaceManager;

    invoke-virtual {v0}, Lcom/vuforia/ar/pl/SurfaceManager;->requestRender()V

    .line 93
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-boolean v0, v0, Lcom/vuforia/ar/pl/RenderManager;->synchronousMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-object v0, v0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vuforia/ar/pl/RenderManager$FixedFrameRateRunner;->this$0:Lcom/vuforia/ar/pl/RenderManager;

    iget-object v0, v0, Lcom/vuforia/ar/pl/RenderManager;->renderRequestWatcherTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 98
    :cond_0
    return-void
.end method
