.class public Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;
.super Ljava/lang/Object;
.source "CalibrationProfileServiceConnection.java"


# static fields
.field private static final CPS_COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final SUBTAG:Ljava/lang/String; = "CalibrationProfileServiceConn"


# instance fields
.field private mConnection:Lcom/vuforia/ar/pl/VuforiaServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vuforia.eyewear.Calibration"

    const-string v2, "com.vuforia.eyewear.Calibration.service.CalibrationProfileService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->CPS_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/vuforia/ar/pl/VuforiaServiceConnection;

    invoke-direct {v0}, Lcom/vuforia/ar/pl/VuforiaServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->mConnection:Lcom/vuforia/ar/pl/VuforiaServiceConnection;

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 30
    const-string v0, "CalibrationProfileServiceConn"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->mConnection:Lcom/vuforia/ar/pl/VuforiaServiceConnection;

    sget-object v1, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->CPS_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1}, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->bindService(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method clearProfile(I)Z
    .locals 4
    .parameter

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->clearProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearProfile; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getActiveProfile()I
    .locals 4

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getActiveProfile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveProfile; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->mConnection:Lcom/vuforia/ar/pl/VuforiaServiceConnection;

    invoke-virtual {v0}, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->awaitService()Landroid/os/IBinder;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    const-string v0, "CalibrationProfileServiceConn"

    const-string v1, "getCalibrationProfileClient IBinder is null; returning null"

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    goto :goto_0
.end method

.method getCameraToEyePose(II)[F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getCameraToEyePose(II)[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraToEyePose; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEyeProjection(II)[F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getEyeProjection(II)[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEyeProjection; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMaxProfileCount()I
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getMaxProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxProfileCount; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProfileName(I)[B
    .locals 4
    .parameter

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileName; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUsedProfileCount()I
    .locals 4

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->getUsedProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsedProfileCount; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isProfileUsed(I)Z
    .locals 4
    .parameter

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->isProfileUsed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isProfileUsed; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setActiveProfile(I)Z
    .locals 4
    .parameter

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->setActiveProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveProfile; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCameraToEyePose(II[F)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->setCameraToEyePose(II[F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraToEyePose; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEyeProjection(II[F)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->setEyeProjection(II[F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEyeProjection; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setProfileName(I[B)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->getCalibrationProfileClient()Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, p1, v1}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;->setProfileName(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "CalibrationProfileServiceConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileName; Remote Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unbind(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 42
    const-string v0, "CalibrationProfileServiceConn"

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/DebugLog;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/CalibrationProfileServiceConnection;->mConnection:Lcom/vuforia/ar/pl/VuforiaServiceConnection;

    invoke-virtual {v0, p1}, Lcom/vuforia/ar/pl/VuforiaServiceConnection;->unbindService(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
