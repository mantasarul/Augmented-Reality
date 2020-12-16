.class public Lcom/vuforia/ar/pl/ODGR7Controller;
.super Ljava/lang/Object;
.source "ODGR7Controller.java"


# static fields
.field private static final MODULENAME:Ljava/lang/String; = "ODGR7Controller"


# instance fields
.field private stereoEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/ar/pl/ODGR7Controller;->stereoEnabled:Z

    .line 39
    const-string v0, "com.osterhoutgroup.api.ext.ExtendDisplay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ar/pl/ODGR7Controller;Landroid/view/Window;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/vuforia/ar/pl/ODGR7Controller;->setStereoSurfaces(Landroid/view/Window;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/vuforia/ar/pl/ODGR7Controller;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vuforia/ar/pl/ODGR7Controller;->stereoEnabled:Z

    return p1
.end method

.method private findSurfaceViews(Landroid/view/Window;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/vuforia/ar/pl/ODGR7Controller;->findSurfaceViews(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 156
    return-object v1
.end method

.method private findSurfaceViews(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    instance-of v3, v0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 172
    check-cast v0, Landroid/view/SurfaceView;

    .line 173
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 175
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/vuforia/ar/pl/ODGR7Controller;->findSurfaceViews(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    .line 181
    :cond_2
    return-void
.end method

.method private logMetrics(Ljava/lang/String;Landroid/app/Activity;Landroid/view/Window;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    invoke-static {p2, p3, v0}, Lcom/osterhoutgroup/api/ext/ExtendDisplay;->getDisplayMetrics(Landroid/content/Context;Landroid/view/Window;Landroid/util/DisplayMetrics;)V

    .line 47
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    const-string v2, "ODGR7Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display metrics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private setStereoSurfaces(Landroid/view/Window;Z)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/ODGR7Controller;->findSurfaceViews(Landroid/view/Window;)Ljava/util/List;

    move-result-object v1

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 134
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-static {v0, p2}, Lcom/osterhoutgroup/api/ext/ExtendDisplay;->extendSurface(Landroid/view/SurfaceView;Z)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getStereo()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vuforia/ar/pl/ODGR7Controller;->stereoEnabled:Z

    return v0
.end method

.method public setStereo(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 63
    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0, v2}, Lcom/vuforia/ar/pl/ODGR7Controller;->findSurfaceViews(Landroid/view/Window;)Ljava/util/List;

    move-result-object v3

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 81
    if-eqz p1, :cond_0

    .line 84
    const-string v1, "ODGR7Controller"

    const-string v2, "ODG Display control: Cannot change to extended display mode, there are no SurfaceViews created."

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Lcom/vuforia/ar/pl/ODGR7Controller$1;

    invoke-direct {v0, p0, v2, p1}, Lcom/vuforia/ar/pl/ODGR7Controller$1;-><init>(Lcom/vuforia/ar/pl/ODGR7Controller;Landroid/view/Window;Z)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method
