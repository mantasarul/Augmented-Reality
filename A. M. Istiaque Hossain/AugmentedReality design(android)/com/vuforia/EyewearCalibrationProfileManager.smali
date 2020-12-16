.class public Lcom/vuforia/EyewearCalibrationProfileManager;
.super Ljava/lang/Object;
.source "EyewearCalibrationProfileManager.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/EyewearCalibrationProfileManager;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public clearProfile(I)Z
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_clearProfile(JLcom/vuforia/EyewearCalibrationProfileManager;I)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_EyewearCalibrationProfileManager(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    instance-of v1, p1, Lcom/vuforia/EyewearCalibrationProfileManager;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/EyewearCalibrationProfileManager;

    iget-wide v2, p1, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/EyewearCalibrationProfileManager;->delete()V

    .line 26
    return-void
.end method

.method public getActiveProfile()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getActiveProfile(JLcom/vuforia/EyewearCalibrationProfileManager;)I

    move-result v0

    return v0
.end method

.method public getCameraToEyePose(II)Lcom/vuforia/Matrix34F;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getCameraToEyePose(JLcom/vuforia/EyewearCalibrationProfileManager;II)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getEyeProjection(II)Lcom/vuforia/Matrix34F;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getEyeProjection(JLcom/vuforia/EyewearCalibrationProfileManager;II)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getMaxCount()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getMaxCount(JLcom/vuforia/EyewearCalibrationProfileManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProfileName(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getProfileName(JLcom/vuforia/EyewearCalibrationProfileManager;I)[S

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-short v4, v1, v0

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsedCount()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_getUsedCount(JLcom/vuforia/EyewearCalibrationProfileManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isProfileUsed(I)Z
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_isProfileUsed(JLcom/vuforia/EyewearCalibrationProfileManager;I)Z

    move-result v0

    return v0
.end method

.method public setActiveProfile(I)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_setActiveProfile(JLcom/vuforia/EyewearCalibrationProfileManager;I)Z

    move-result v0

    return v0
.end method

.method public setCameraToEyePose(IILcom/vuforia/Matrix34F;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {p3}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_setCameraToEyePose(JLcom/vuforia/EyewearCalibrationProfileManager;IIJLcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method

.method public setEyeProjection(IILcom/vuforia/Matrix34F;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {p3}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_setEyeProjection(JLcom/vuforia/EyewearCalibrationProfileManager;IIJLcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationProfileManager;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/Vuforia;->convertStringToShortArray(Ljava/lang/String;)[S

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationProfileManager_setProfileName(JLcom/vuforia/EyewearCalibrationProfileManager;I[S)Z

    move-result v0

    return v0
.end method