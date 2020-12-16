.class public Lcom/vuforia/TrackerManager;
.super Ljava/lang/Object;
.source "TrackerManager.java"


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
    iput-boolean p3, p0, Lcom/vuforia/TrackerManager;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/TrackerManager;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    goto :goto_0
.end method

.method public static getInstance()Lcom/vuforia/TrackerManager;
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lcom/vuforia/Vuforia;->wasInitializedJava()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lcom/vuforia/TrackerManager;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->TrackerManager_getInstance()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/TrackerManager;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public deinitTracker(Lcom/vuforia/Type;)Z
    .locals 6
    .parameter

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->TrackerManager_deinitTracker(JLcom/vuforia/TrackerManager;JLcom/vuforia/Type;)Z

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
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/TrackerManager;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/TrackerManager;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_TrackerManager(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/TrackerManager;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/TrackerManager;

    iget-wide v2, p1, Lcom/vuforia/TrackerManager;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/TrackerManager;->delete()V

    .line 26
    return-void
.end method

.method public getStateUpdater()Lcom/vuforia/StateUpdater;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/vuforia/StateUpdater;

    iget-wide v2, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->TrackerManager_getStateUpdater(JLcom/vuforia/TrackerManager;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/StateUpdater;-><init>(JZ)V

    return-object v0
.end method

.method public getTracker(Lcom/vuforia/Type;)Lcom/vuforia/Tracker;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 73
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->TrackerManager_getTracker(JLcom/vuforia/TrackerManager;JLcom/vuforia/Type;)J

    move-result-wide v2

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    move-object v0, v6

    .line 86
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/vuforia/Tracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/Tracker;-><init>(JZ)V

    .line 78
    invoke-static {}, Lcom/vuforia/ObjectTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v0, Lcom/vuforia/ObjectTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/ObjectTracker;-><init>(JZ)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/vuforia/SmartTerrain;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v0, Lcom/vuforia/SmartTerrain;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/SmartTerrain;-><init>(JZ)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/vuforia/RotationalDeviceTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    new-instance v0, Lcom/vuforia/RotationalDeviceTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/RotationalDeviceTracker;-><init>(JZ)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {}, Lcom/vuforia/PositionalDeviceTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    new-instance v0, Lcom/vuforia/PositionalDeviceTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/PositionalDeviceTracker;-><init>(JZ)V

    goto :goto_0

    :cond_4
    move-object v0, v6

    .line 86
    goto :goto_0
.end method

.method public initTracker(Lcom/vuforia/Type;)Lcom/vuforia/Tracker;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 55
    iget-wide v0, p0, Lcom/vuforia/TrackerManager;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->TrackerManager_initTracker(JLcom/vuforia/TrackerManager;JLcom/vuforia/Type;)J

    move-result-wide v2

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    move-object v0, v6

    .line 68
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/vuforia/Tracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/Tracker;-><init>(JZ)V

    .line 60
    invoke-static {}, Lcom/vuforia/ObjectTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v0, Lcom/vuforia/ObjectTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/ObjectTracker;-><init>(JZ)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/vuforia/SmartTerrain;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-instance v0, Lcom/vuforia/SmartTerrain;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/SmartTerrain;-><init>(JZ)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/vuforia/RotationalDeviceTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance v0, Lcom/vuforia/RotationalDeviceTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/RotationalDeviceTracker;-><init>(JZ)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/vuforia/PositionalDeviceTracker;->getClassType()Lcom/vuforia/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuforia/Tracker;->isOfType(Lcom/vuforia/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Lcom/vuforia/PositionalDeviceTracker;

    invoke-direct {v0, v2, v3, v7}, Lcom/vuforia/PositionalDeviceTracker;-><init>(JZ)V

    goto :goto_0

    :cond_4
    move-object v0, v6

    .line 68
    goto :goto_0
.end method
