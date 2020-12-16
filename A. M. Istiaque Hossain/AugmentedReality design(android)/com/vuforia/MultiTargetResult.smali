.class public Lcom/vuforia/MultiTargetResult;
.super Lcom/vuforia/ObjectTargetResult;
.source "MultiTargetResult.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/ObjectTargetResult;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/MultiTargetResult;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_getClassType()J

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
    iget-wide v0, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/MultiTargetResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/MultiTargetResult;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_MultiTargetResult(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/ObjectTargetResult;->delete()V
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
    instance-of v1, p1, Lcom/vuforia/MultiTargetResult;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/MultiTargetResult;

    iget-wide v2, p1, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/MultiTargetResult;->delete()V

    .line 25
    return-void
.end method

.method public getNumPartResults()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_getNumPartResults(JLcom/vuforia/MultiTargetResult;)I

    move-result v0

    return v0
.end method

.method public getPartResult(I)Lcom/vuforia/TrackableResult;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 61
    iget-wide v2, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_getPartResult__SWIG_0(JLcom/vuforia/MultiTargetResult;I)J

    move-result-wide v2

    .line 62
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Lcom/vuforia/TrackableResult;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/TrackableResult;-><init>(JZ)V

    .line 66
    invoke-static {}, Lcom/vuforia/ImageTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    new-instance v0, Lcom/vuforia/ImageTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    new-instance v0, Lcom/vuforia/CylinderTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    new-instance v0, Lcom/vuforia/MultiTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    new-instance v0, Lcom/vuforia/VuMarkTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 74
    :cond_5
    invoke-static {}, Lcom/vuforia/ModelTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    new-instance v0, Lcom/vuforia/ModelTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 76
    :cond_6
    invoke-static {}, Lcom/vuforia/ObjectTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    new-instance v0, Lcom/vuforia/ObjectTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 78
    :cond_7
    invoke-static {}, Lcom/vuforia/AnchorResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 79
    new-instance v0, Lcom/vuforia/AnchorResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/AnchorResult;-><init>(JZ)V

    goto :goto_0

    .line 80
    :cond_8
    invoke-static {}, Lcom/vuforia/DeviceTrackableResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Lcom/vuforia/DeviceTrackableResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackableResult;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getPartResult(Ljava/lang/String;)Lcom/vuforia/TrackableResult;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 88
    iget-wide v2, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_getPartResult__SWIG_1(JLcom/vuforia/MultiTargetResult;Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    new-instance v1, Lcom/vuforia/TrackableResult;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/TrackableResult;-><init>(JZ)V

    .line 93
    invoke-static {}, Lcom/vuforia/ImageTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    new-instance v0, Lcom/vuforia/ImageTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    new-instance v0, Lcom/vuforia/CylinderTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    new-instance v0, Lcom/vuforia/MultiTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    new-instance v0, Lcom/vuforia/VuMarkTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-static {}, Lcom/vuforia/ModelTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 102
    new-instance v0, Lcom/vuforia/ModelTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 103
    :cond_6
    invoke-static {}, Lcom/vuforia/ObjectTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    new-instance v0, Lcom/vuforia/ObjectTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 105
    :cond_7
    invoke-static {}, Lcom/vuforia/AnchorResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 106
    new-instance v0, Lcom/vuforia/AnchorResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/AnchorResult;-><init>(JZ)V

    goto :goto_0

    .line 107
    :cond_8
    invoke-static {}, Lcom/vuforia/DeviceTrackableResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/vuforia/DeviceTrackableResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackableResult;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getTrackable()Lcom/vuforia/Trackable;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/vuforia/MultiTarget;

    iget-wide v2, p0, Lcom/vuforia/MultiTargetResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->MultiTargetResult_getTrackable(JLcom/vuforia/MultiTargetResult;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    return-object v0
.end method
