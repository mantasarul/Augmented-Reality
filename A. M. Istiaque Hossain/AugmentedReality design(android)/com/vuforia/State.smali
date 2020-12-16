.class public Lcom/vuforia/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mFrame:Lcom/vuforia/Frame;

.field private mFrameMutex:Ljava/lang/Object;

.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_State__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/State;-><init>(JZ)V

    .line 81
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vuforia/State;->mFrameMutex:Ljava/lang/Object;

    .line 16
    iput-boolean p3, p0, Lcom/vuforia/State;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/State;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/State;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-static {p1}, Lcom/vuforia/State;->getCPtr(Lcom/vuforia/State;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_State__SWIG_1(JLcom/vuforia/State;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/State;-><init>(JZ)V

    .line 85
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/State;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/vuforia/State;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/vuforia/State;

    invoke-direct {v0, p0}, Lcom/vuforia/State;-><init>(Lcom/vuforia/State;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/vuforia/State;->clone()Lcom/vuforia/State;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/State;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/State;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_State(J)V

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/vuforia/State;->mFrameMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    invoke-virtual {v0}, Lcom/vuforia/Frame;->delete()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    .line 44
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :cond_2
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    .line 68
    instance-of v1, p1, Lcom/vuforia/State;

    if-eqz v1, :cond_0

    .line 69
    check-cast p1, Lcom/vuforia/State;

    iget-wide v2, p1, Lcom/vuforia/State;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/State;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 70
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/State;->delete()V

    .line 26
    return-void
.end method

.method public getCameraCalibration()Lcom/vuforia/CameraCalibration;
    .locals 4

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->State_getCameraCalibration(JLcom/vuforia/State;)J

    move-result-wide v2

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/CameraCalibration;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/CameraCalibration;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDeviceTrackableResult()Lcom/vuforia/DeviceTrackableResult;
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->State_getDeviceTrackableResult(JLcom/vuforia/State;)J

    move-result-wide v2

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/DeviceTrackableResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/DeviceTrackableResult;-><init>(JZ)V

    goto :goto_0
.end method

.method public getFrame()Lcom/vuforia/Frame;
    .locals 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/vuforia/State;->mFrameMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/vuforia/Frame;

    iget-wide v2, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->State_getFrame(JLcom/vuforia/State;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/vuforia/Frame;-><init>(JZ)V

    iput-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/vuforia/State;->mFrame:Lcom/vuforia/Frame;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIllumination()Lcom/vuforia/Illumination;
    .locals 4

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->State_getIllumination(JLcom/vuforia/State;)J

    move-result-wide v2

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Illumination;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Illumination;-><init>(JZ)V

    goto :goto_0
.end method

.method public getNumTrackableResults()I
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->State_getNumTrackableResults(JLcom/vuforia/State;)I

    move-result v0

    return v0
.end method

.method public getNumTrackables()I
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->State_getNumTrackables(JLcom/vuforia/State;)I

    move-result v0

    return v0
.end method

.method public getTrackable(I)Lcom/vuforia/Trackable;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 149
    iget-wide v2, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->State_getTrackable(JLcom/vuforia/State;I)J

    move-result-wide v2

    .line 150
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v1, Lcom/vuforia/Trackable;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 154
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 162
    :cond_5
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 164
    :cond_6
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 166
    :cond_7
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 168
    :cond_8
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 169
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 170
    :cond_9
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getTrackableResult(I)Lcom/vuforia/TrackableResult;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 118
    iget-wide v2, p0, Lcom/vuforia/State;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->State_getTrackableResult(JLcom/vuforia/State;I)J

    move-result-wide v2

    .line 119
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    new-instance v1, Lcom/vuforia/TrackableResult;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/TrackableResult;-><init>(JZ)V

    .line 123
    invoke-static {}, Lcom/vuforia/ImageTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    new-instance v0, Lcom/vuforia/ImageTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    new-instance v0, Lcom/vuforia/CylinderTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    new-instance v0, Lcom/vuforia/MultiTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    new-instance v0, Lcom/vuforia/VuMarkTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 131
    :cond_5
    invoke-static {}, Lcom/vuforia/ModelTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    new-instance v0, Lcom/vuforia/ModelTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 133
    :cond_6
    invoke-static {}, Lcom/vuforia/ObjectTargetResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 134
    new-instance v0, Lcom/vuforia/ObjectTargetResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTargetResult;-><init>(JZ)V

    goto :goto_0

    .line 135
    :cond_7
    invoke-static {}, Lcom/vuforia/AnchorResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    new-instance v0, Lcom/vuforia/AnchorResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/AnchorResult;-><init>(JZ)V

    goto :goto_0

    .line 137
    :cond_8
    invoke-static {}, Lcom/vuforia/DeviceTrackableResult;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/TrackableResult;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Lcom/vuforia/DeviceTrackableResult;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackableResult;-><init>(JZ)V

    goto/16 :goto_0
.end method
