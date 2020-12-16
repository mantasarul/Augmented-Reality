.class public Lcom/vuforia/DataSet;
.super Ljava/lang/Object;
.source "DataSet.java"


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
    iput-boolean p3, p0, Lcom/vuforia/DataSet;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static exists(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/vuforia/VuforiaJNI;->DataSet_exists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected static getCPtr(Lcom/vuforia/DataSet;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public createMultiTarget(Ljava/lang/String;)Lcom/vuforia/MultiTarget;
    .locals 4
    .parameter

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->DataSet_createMultiTarget(JLcom/vuforia/DataSet;Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/MultiTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0
.end method

.method public createTrackable(Lcom/vuforia/TrackableSource;)Lcom/vuforia/Trackable;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 89
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/TrackableSource;->getCPtr(Lcom/vuforia/TrackableSource;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->DataSet_createTrackable(JLcom/vuforia/DataSet;JLcom/vuforia/TrackableSource;)J

    move-result-wide v2

    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    move-object v0, v6

    .line 112
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/vuforia/Trackable;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 94
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 104
    :cond_5
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 106
    :cond_6
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 107
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 108
    :cond_7
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 110
    :cond_8
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v6

    .line 112
    goto/16 :goto_0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/DataSet;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/DataSet;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_DataSet(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J
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

.method public destroy(Lcom/vuforia/Trackable;)Z
    .locals 6
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Trackable;->getCPtr(Lcom/vuforia/Trackable;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->DataSet_destroy(JLcom/vuforia/DataSet;JLcom/vuforia/Trackable;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    instance-of v1, p1, Lcom/vuforia/DataSet;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/DataSet;

    iget-wide v2, p1, Lcom/vuforia/DataSet;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/DataSet;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/DataSet;->delete()V

    .line 26
    return-void
.end method

.method public getNumTrackables()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->DataSet_getNumTrackables(JLcom/vuforia/DataSet;)I

    move-result v0

    return v0
.end method

.method public getTrackable(I)Lcom/vuforia/Trackable;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 61
    iget-wide v2, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->DataSet_getTrackable(JLcom/vuforia/DataSet;I)J

    move-result-wide v2

    .line 62
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Lcom/vuforia/Trackable;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 66
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 74
    :cond_5
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 76
    :cond_6
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 78
    :cond_7
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 79
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 80
    :cond_8
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 81
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 82
    :cond_9
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public hasReachedTrackableLimit()Z
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->DataSet_hasReachedTrackableLimit(JLcom/vuforia/DataSet;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->DataSet_isActive(JLcom/vuforia/DataSet;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/DataSet;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->DataSet_load(JLcom/vuforia/DataSet;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
