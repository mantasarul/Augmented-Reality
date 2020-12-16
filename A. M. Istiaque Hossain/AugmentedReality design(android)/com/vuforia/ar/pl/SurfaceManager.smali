.class public Lcom/vuforia/ar/pl/SurfaceManager;
.super Ljava/lang/Object;
.source "SurfaceManager.java"


# static fields
.field private static final MODULENAME:Ljava/lang/String; = "SurfaceManager"


# instance fields
.field addSurfaceLock:Ljava/util/concurrent/locks/Lock;

.field cameraSurfaceParentView:Landroid/view/View;

.field cciForSurface:Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

.field glSurfaceView:Landroid/opengl/GLSurfaceView;

.field glSurfaceViewChildPosition:I

.field renderWhenDirtyEnabled:Z

.field viewLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->renderWhenDirtyEnabled:Z

    .line 54
    iput-object v1, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 55
    iput v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceViewChildPosition:I

    .line 56
    iput-object v1, p0, Lcom/vuforia/ar/pl/SurfaceManager;->cameraSurfaceParentView:Landroid/view/View;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->viewLock:Ljava/util/concurrent/locks/Lock;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->addSurfaceLock:Ljava/util/concurrent/locks/Lock;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ar/pl/SurfaceManager;Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SurfaceManager;->setupCameraSurface(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)V

    return-void
.end method

.method private applyRenderWhenDirty()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    iget-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-boolean v3, p0, Lcom/vuforia/ar/pl/SurfaceManager;->renderWhenDirtyEnabled:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 121
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    :cond_1
    move v1, v0

    .line 121
    goto :goto_1
.end method

.method private searchForGLSurfaceView(Landroid/view/View;)Landroid/opengl/GLSurfaceView;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 72
    .line 73
    iput v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceViewChildPosition:I

    .line 77
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v0

    move-object v1, v2

    .line 80
    :goto_0
    if-ge v3, v4, :cond_3

    .line 82
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    instance-of v5, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_1

    .line 86
    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 87
    iput v3, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceViewChildPosition:I

    .line 105
    :cond_0
    :goto_1
    return-object v0

    .line 90
    :cond_1
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 92
    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/SurfaceManager;->searchForGLSurfaceView(Landroid/view/View;)Landroid/opengl/GLSurfaceView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 80
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 102
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private setupCameraSurface(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    if-nez v0, :cond_2

    .line 131
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Lcom/vuforia/ar/pl/CameraSurface;

    invoke-direct {v1, v0}, Lcom/vuforia/ar/pl/CameraSurface;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/vuforia/ar/pl/CameraSurface;->setCamera(Landroid/hardware/Camera;)V

    .line 159
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    invoke-virtual {v0}, Lcom/vuforia/ar/pl/CameraSurface;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    invoke-virtual {v1}, Lcom/vuforia/ar/pl/CameraSurface;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    invoke-virtual {v0}, Lcom/vuforia/ar/pl/CameraSurface;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    iget-object v1, p1, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->surface:Lcom/vuforia/ar/pl/CameraSurface;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public addCameraSurface(Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v2

    .line 238
    if-nez v2, :cond_0

    .line 312
    :goto_0
    return v1

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/vuforia/ar/pl/SurfaceManager;->cciForSurface:Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    .line 252
    iget-object v3, p0, Lcom/vuforia/ar/pl/SurfaceManager;->viewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :try_start_0
    new-instance v3, Lcom/vuforia/ar/pl/SurfaceManager$1;

    invoke-direct {v3, p0}, Lcom/vuforia/ar/pl/SurfaceManager$1;-><init>(Lcom/vuforia/ar/pl/SurfaceManager;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    iget-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->viewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v1

    .line 312
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 308
    iget-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->viewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v0

    .line 309
    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vuforia/ar/pl/SurfaceManager;->viewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 309
    throw v0

    :cond_1
    move v0, v1

    .line 312
    goto :goto_2
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 228
    :cond_0
    return-void
.end method

.method public retrieveGLSurfaceView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    :try_start_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 205
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/SurfaceManager;->searchForGLSurfaceView(Landroid/view/View;)Landroid/opengl/GLSurfaceView;

    move-result-object v2

    iput-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 187
    iget-object v2, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v2, :cond_1

    .line 190
    iput-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->cameraSurfaceParentView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 195
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/vuforia/ar/pl/SurfaceManager;->cameraSurfaceParentView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 205
    goto :goto_2
.end method

.method public setEnableRenderWhenDirty(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/vuforia/ar/pl/SurfaceManager;->renderWhenDirtyEnabled:Z

    .line 214
    invoke-direct {p0}, Lcom/vuforia/ar/pl/SurfaceManager;->applyRenderWhenDirty()Z

    move-result v0

    .line 216
    return v0
.end method
