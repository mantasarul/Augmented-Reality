.class public Lcom/vuforia/VuforiaUnityPlayer/VuforiaInitializer;
.super Ljava/lang/Object;
.source "VuforiaInitializer.java"


# static fields
.field private static final NATIVE_LIB_UNITYPLAYER:Ljava/lang/String; = "VuforiaUnityPlayer"

.field private static final NATIVE_LIB_VUFORIA:Ljava/lang/String; = "Vuforia"

.field private static final NATIVE_LIB_VUFORIAWRAPPER:Ljava/lang/String; = "VuforiaWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlatform()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lcom/vuforia/VuforiaUnityPlayer/VuforiaInitializer;->initPlatformNative()V

    .line 47
    return-void
.end method

.method private static native initPlatformNative()V
.end method

.method public static initVuforia(Landroid/app/Activity;ILjava/lang/String;)I
    .locals 4
    .parameter "activity"
    .parameter "graphicsAPI"
    .parameter "licenseKey"

    .prologue
    .line 53
    const-string v1, "Initializing Vuforia..."

    invoke-static {v1}, Lcom/vuforia/VuforiaUnityPlayer/DebugLog;->LOGD(Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/vuforia/Vuforia;->setInitParameters(Landroid/app/Activity;ILjava/lang/String;)V

    .line 58
    const-wide/32 v2, -0x33334000

    const v1, 0x1aaaaa

    invoke-static {v2, v3, v1}, Lcom/vuforia/Vuforia;->setHint(JI)Z

    .line 62
    const/4 v0, -0x1

    .line 71
    .local v0, progressValue:I
    :cond_0
    invoke-static {}, Lcom/vuforia/Vuforia;->init()I

    move-result v0

    .line 78
    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 80
    :cond_1
    if-gez v0, :cond_2

    .line 82
    const-string v1, "Vuforia initialization failed"

    invoke-static {v1}, Lcom/vuforia/VuforiaUnityPlayer/DebugLog;->LOGE(Ljava/lang/String;)V

    .line 87
    .end local v0           #progressValue:I
    :goto_0
    return v0

    .restart local v0       #progressValue:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadLibrary(Ljava/lang/String;)Z
    .locals 4
    .parameter "nLibName"

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    const/4 v2, 0x1

    .line 111
    :goto_0
    return v2

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, ulee:Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The library lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so could not be loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/vuforia/VuforiaUnityPlayer/DebugLog;->LOGE(Ljava/lang/String;)V

    .line 111
    .end local v1           #ulee:Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 107
    .local v0, se:Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The library lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so was not allowed to be loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vuforia/VuforiaUnityPlayer/DebugLog;->LOGE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static loadNativeLibraries()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Vuforia"

    invoke-static {v0}, Lcom/vuforia/VuforiaUnityPlayer/VuforiaInitializer;->loadLibrary(Ljava/lang/String;)Z

    .line 38
    const-string v0, "VuforiaWrapper"

    invoke-static {v0}, Lcom/vuforia/VuforiaUnityPlayer/VuforiaInitializer;->loadLibrary(Ljava/lang/String;)Z

    .line 39
    const-string v0, "VuforiaUnityPlayer"

    invoke-static {v0}, Lcom/vuforia/VuforiaUnityPlayer/VuforiaInitializer;->loadLibrary(Ljava/lang/String;)Z

    .line 40
    return-void
.end method
