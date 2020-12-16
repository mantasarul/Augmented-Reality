.class public Lcom/unity3d/player/Camera2Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unity3d/player/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    iput-object p1, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/unity3d/player/Camera2Wrapper;->initCamera2Jni()V

    return-void
.end method

.method private final native initCamera2Jni()V
.end method

.method private final native nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/player/Camera2Wrapper;->closeCamera2()V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/player/Camera2Wrapper;->nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    return-void
.end method

.method protected closeCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    return-void
.end method

.method protected getCamera2Count()I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCamera2SensorOrientation(I)I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFrameSizeCamera2()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->a()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method protected initializeCamera2(IIII)Z
    .locals 6

    sget-boolean v0, Lcom/unity3d/player/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unity3d/player/a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a;-><init>(Lcom/unity3d/player/d;)V

    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    iget-object v1, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/player/a;->a(Landroid/content/Context;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCamera2FrontFacing(I)Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->b(Landroid/content/Context;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    :cond_0
    return-void
.end method

.method protected stopCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->d()V

    :cond_0
    return-void
.end method
