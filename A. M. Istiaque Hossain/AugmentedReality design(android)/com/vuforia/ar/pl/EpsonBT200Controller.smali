.class public Lcom/vuforia/ar/pl/EpsonBT200Controller;
.super Ljava/lang/Object;
.source "EpsonBT200Controller.java"


# static fields
.field private static final MODULENAME:Ljava/lang/String; = "EpsonBT200Controller"


# instance fields
.field private stereoEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/ar/pl/EpsonBT200Controller;->stereoEnabled:Z

    .line 34
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v1, Lcom/vuforia/ar/pl/EpsonBT200Controller$1;

    invoke-direct {v1, p0, v0}, Lcom/vuforia/ar/pl/EpsonBT200Controller$1;-><init>(Lcom/vuforia/ar/pl/EpsonBT200Controller;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getStereo()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/vuforia/ar/pl/EpsonBT200Controller;->stereoEnabled:Z

    return v0
.end method

.method public setStereo(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    .line 57
    if-eqz p1, :cond_2

    move v2, v0

    .line 64
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    move v0, v1

    .line 97
    :cond_0
    :goto_1
    return v0

    .line 71
    :cond_1
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 72
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 75
    const-class v3, Landroid/view/Display;

    const-string v4, "setDisplayMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 77
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 80
    iput-boolean p1, p0, Lcom/vuforia/ar/pl/EpsonBT200Controller;->stereoEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    move v0, v1

    .line 87
    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    move v0, v1

    .line 92
    goto :goto_1

    .line 94
    :catch_2
    move-exception v0

    move v0, v1

    .line 97
    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0
.end method
