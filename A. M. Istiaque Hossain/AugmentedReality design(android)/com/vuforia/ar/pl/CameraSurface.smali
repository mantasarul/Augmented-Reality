.class Lcom/vuforia/ar/pl/CameraSurface;
.super Landroid/view/SurfaceView;
.source "CameraSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final MODULENAME:Ljava/lang/String; = "CameraSurface"


# instance fields
.field camera:Landroid/hardware/Camera;

.field surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    .line 37
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CameraSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 38
    iget-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 39
    iget-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public setCamera(Landroid/hardware/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    .line 46
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/CameraSurface;->camera:Landroid/hardware/Camera;

    .line 83
    return-void
.end method
