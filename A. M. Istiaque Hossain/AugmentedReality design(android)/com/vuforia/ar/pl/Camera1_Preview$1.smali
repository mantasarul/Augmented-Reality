.class Lcom/vuforia/ar/pl/Camera1_Preview$1;
.super Ljava/lang/Object;
.source "Camera1_Preview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuforia/ar/pl/Camera1_Preview;->setTypedCameraParameter(IILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vuforia/ar/pl/Camera1_Preview;


# direct methods
.method constructor <init>(Lcom/vuforia/ar/pl/Camera1_Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/vuforia/ar/pl/Camera1_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera1_Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/vuforia/ar/pl/Camera1_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera1_Preview;

    #getter for: Lcom/vuforia/ar/pl/Camera1_Preview;->cameraCacheInfoIndexCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->access$000(Lcom/vuforia/ar/pl/Camera1_Preview;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2352
    if-nez v0, :cond_1

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2358
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2362
    iget-object v1, p0, Lcom/vuforia/ar/pl/Camera1_Preview$1;->this$0:Lcom/vuforia/ar/pl/Camera1_Preview;

    #calls: Lcom/vuforia/ar/pl/Camera1_Preview;->getCameraCacheInfo(I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;
    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/Camera1_Preview;->access$100(Lcom/vuforia/ar/pl/Camera1_Preview;I)Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;

    move-result-object v0

    .line 2365
    if-eqz v0, :cond_0

    .line 2372
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vuforia/ar/pl/Camera1_Preview$CameraCacheInfo;->isAutoFocusing:Z

    goto :goto_0
.end method
