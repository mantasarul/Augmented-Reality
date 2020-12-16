.class public Lcom/vuforia/RotationalDeviceTracker;
.super Lcom/vuforia/DeviceTracker;
.source "RotationalDeviceTracker.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/DeviceTracker;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/RotationalDeviceTracker;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_getClassType()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_RotationalDeviceTracker(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/DeviceTracker;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 28
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
    instance-of v1, p1, Lcom/vuforia/RotationalDeviceTracker;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/RotationalDeviceTracker;

    iget-wide v2, p1, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

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
    .line 24
    invoke-virtual {p0}, Lcom/vuforia/RotationalDeviceTracker;->delete()V

    .line 25
    return-void
.end method

.method public getDefaultHandheldModel()Lcom/vuforia/HandheldTransformModel;
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_getDefaultHandheldModel(JLcom/vuforia/RotationalDeviceTracker;)J

    move-result-wide v2

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/HandheldTransformModel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/HandheldTransformModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDefaultHeadModel()Lcom/vuforia/HeadTransformModel;
    .locals 4

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_getDefaultHeadModel(JLcom/vuforia/RotationalDeviceTracker;)J

    move-result-wide v2

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/HeadTransformModel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/HeadTransformModel;-><init>(JZ)V

    goto :goto_0
.end method

.method public getModelCorrection()Lcom/vuforia/TransformModel;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 68
    iget-wide v2, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_getModelCorrection(JLcom/vuforia/RotationalDeviceTracker;)J

    move-result-wide v2

    .line 69
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v1, Lcom/vuforia/TransformModel;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/TransformModel;-><init>(JZ)V

    .line 71
    invoke-virtual {v1}, Lcom/vuforia/TransformModel;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    new-instance v0, Lcom/vuforia/HeadTransformModel;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/HeadTransformModel;-><init>(JZ)V

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/vuforia/HandheldTransformModel;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/HandheldTransformModel;-><init>(JZ)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPosePrediction()Z
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_getPosePrediction(JLcom/vuforia/RotationalDeviceTracker;)Z

    move-result v0

    return v0
.end method

.method public recenter()Z
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_recenter(JLcom/vuforia/RotationalDeviceTracker;)Z

    move-result v0

    return v0
.end method

.method public setModelCorrection(Lcom/vuforia/TransformModel;)Z
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/TransformModel;->getCPtr(Lcom/vuforia/TransformModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_setModelCorrection(JLcom/vuforia/RotationalDeviceTracker;JLcom/vuforia/TransformModel;)Z

    move-result v0

    return v0
.end method

.method public setPosePrediction(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/RotationalDeviceTracker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->RotationalDeviceTracker_setPosePrediction(JLcom/vuforia/RotationalDeviceTracker;Z)Z

    move-result v0

    return v0
.end method
