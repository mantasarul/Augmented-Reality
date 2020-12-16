.class public Lcom/vuforia/TrackableResult;
.super Ljava/lang/Object;
.source "TrackableResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/TrackableResult$STATUS_INFO;,
        Lcom/vuforia/TrackableResult$STATUS;
    }
.end annotation


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
    iput-boolean p3, p0, Lcom/vuforia/TrackableResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/TrackableResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getClassType()J

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

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/TrackableResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/TrackableResult;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_TrackableResult(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/TrackableResult;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/TrackableResult;

    iget-wide v2, p1, Lcom/vuforia/TrackableResult;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/TrackableResult;->delete()V

    .line 26
    return-void
.end method

.method public getCoordinateSystem()I
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getCoordinateSystem(JLcom/vuforia/TrackableResult;)I

    move-result v0

    return v0
.end method

.method public getPose()Lcom/vuforia/Matrix34F;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getPose(JLcom/vuforia/TrackableResult;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getStatus(JLcom/vuforia/TrackableResult;)I

    move-result v0

    return v0
.end method

.method public getStatusInfo()I
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getStatusInfo(JLcom/vuforia/TrackableResult;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getTimeStamp(JLcom/vuforia/TrackableResult;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackable()Lcom/vuforia/Trackable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 73
    iget-wide v2, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getTrackable(JLcom/vuforia/TrackableResult;)J

    move-result-wide v2

    .line 74
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v1, Lcom/vuforia/Trackable;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 78
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 84
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 86
    :cond_5
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 88
    :cond_6
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 89
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 90
    :cond_7
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 91
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 92
    :cond_8
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 93
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 94
    :cond_9
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/vuforia/Type;

    iget-wide v2, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->TrackableResult_getType(JLcom/vuforia/TrackableResult;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method

.method public isOfType(Lcom/vuforia/Type;)Z
    .locals 6
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/TrackableResult;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->TrackableResult_isOfType(JLcom/vuforia/TrackableResult;JLcom/vuforia/Type;)Z

    move-result v0

    return v0
.end method
