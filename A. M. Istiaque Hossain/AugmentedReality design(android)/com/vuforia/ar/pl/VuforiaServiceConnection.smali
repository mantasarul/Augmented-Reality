.class public Lcom/vuforia/ar/pl/VuforiaServiceConnection;
.super Ljava/lang/Object;
.source "VuforiaServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final SUBTAG:Ljava/lang/String; = "VuforiaConn"


# instance fields
.field private mService:Landroid/os/IBinder;

.field private mServiceLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public awaitService()Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "VuforiaConn"

    const-string v2, "ERROR: awaitService called before bind()"

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mService:Landroid/os/IBinder;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 113
    const-string v2, "VuforiaConn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind failed to complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0
.end method

.method public bindService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    const/4 v0, 0x0

    .line 61
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    const-string v1, "VuforiaConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    .line 81
    :cond_0
    return v0

    .line 63
    :catch_0
    move-exception v1

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    const-string v2, "VuforiaConn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not permitted to bind to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p2, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mService:Landroid/os/IBinder;

    .line 36
    iget-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mService:Landroid/os/IBinder;

    .line 44
    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mServiceLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    return-void
.end method

.method public unbindService(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->mService:Landroid/os/IBinder;

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
