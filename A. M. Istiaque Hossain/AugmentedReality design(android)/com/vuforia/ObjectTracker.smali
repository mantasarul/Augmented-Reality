.class public Lcom/vuforia/ObjectTracker;
.super Lcom/vuforia/Tracker;
.source "ObjectTracker.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/Tracker;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/ObjectTracker;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_getClassType()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public activateDataSet(Lcom/vuforia/DataSet;)Z
    .locals 6
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/DataSet;->getCPtr(Lcom/vuforia/DataSet;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_activateDataSet(JLcom/vuforia/ObjectTracker;JLcom/vuforia/DataSet;)Z

    move-result v0

    return v0
.end method

.method public createDataSet()Lcom/vuforia/DataSet;
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_createDataSet(JLcom/vuforia/ObjectTracker;)J

    move-result-wide v2

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/DataSet;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/DataSet;-><init>(JZ)V

    goto :goto_0
.end method

.method public deactivateDataSet(Lcom/vuforia/DataSet;)Z
    .locals 6
    .parameter

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/DataSet;->getCPtr(Lcom/vuforia/DataSet;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_deactivateDataSet(JLcom/vuforia/ObjectTracker;JLcom/vuforia/DataSet;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/ObjectTracker;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/ObjectTracker;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_ObjectTracker(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/Tracker;->delete()V
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

.method public destroyDataSet(Lcom/vuforia/DataSet;)Z
    .locals 6
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/DataSet;->getCPtr(Lcom/vuforia/DataSet;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_destroyDataSet(JLcom/vuforia/ObjectTracker;JLcom/vuforia/DataSet;)Z

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
    instance-of v1, p1, Lcom/vuforia/ObjectTracker;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/ObjectTracker;

    iget-wide v2, p1, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/ObjectTracker;->delete()V

    .line 25
    return-void
.end method

.method public getActiveDataSet(I)Lcom/vuforia/DataSet;
    .locals 4
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_getActiveDataSet(JLcom/vuforia/ObjectTracker;I)J

    move-result-wide v2

    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/DataSet;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/DataSet;-><init>(JZ)V

    goto :goto_0
.end method

.method public getActiveDataSetCount()I
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_getActiveDataSetCount(JLcom/vuforia/ObjectTracker;)I

    move-result v0

    return v0
.end method

.method public getImageTargetBuilder()Lcom/vuforia/ImageTargetBuilder;
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_getImageTargetBuilder(JLcom/vuforia/ObjectTracker;)J

    move-result-wide v2

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ImageTargetBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ImageTargetBuilder;-><init>(JZ)V

    goto :goto_0
.end method

.method public getTargetFinder()Lcom/vuforia/TargetFinder;
    .locals 4

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_getTargetFinder(JLcom/vuforia/ObjectTracker;)J

    move-result-wide v2

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/TargetFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/TargetFinder;-><init>(JZ)V

    goto :goto_0
.end method

.method public persistExtendedTracking(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_persistExtendedTracking(JLcom/vuforia/ObjectTracker;Z)Z

    move-result v0

    return v0
.end method

.method public resetExtendedTracking()Z
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/vuforia/ObjectTracker;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ObjectTracker_resetExtendedTracking(JLcom/vuforia/ObjectTracker;)Z

    move-result v0

    return v0
.end method
