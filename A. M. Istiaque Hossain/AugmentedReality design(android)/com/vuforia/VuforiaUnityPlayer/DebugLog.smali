.class public Lcom/vuforia/VuforiaUnityPlayer/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Vuforia"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final LOGD(Ljava/lang/String;)V
    .locals 1
    .parameter "nMessage"

    .prologue
    .line 33
    const-string v0, "Vuforia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static final LOGE(Ljava/lang/String;)V
    .locals 1
    .parameter "nMessage"

    .prologue
    .line 23
    const-string v0, "Vuforia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public static final LOGI(Ljava/lang/String;)V
    .locals 1
    .parameter "nMessage"

    .prologue
    .line 38
    const-string v0, "Vuforia"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static final LOGW(Ljava/lang/String;)V
    .locals 1
    .parameter "nMessage"

    .prologue
    .line 28
    const-string v0, "Vuforia"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
