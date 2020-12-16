.class public Lcom/vuforia/Trackable;
.super Ljava/lang/Object;
.source "Trackable.java"


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
    iput-boolean p3, p0, Lcom/vuforia/Trackable;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Trackable;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->Trackable_getClassType()J

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
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Trackable;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Trackable;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Trackable(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J
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

    .line 51
    .line 52
    instance-of v1, p1, Lcom/vuforia/Trackable;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/vuforia/Trackable;

    iget-wide v2, p1, Lcom/vuforia/Trackable;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/Trackable;->delete()V

    .line 26
    return-void
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_getId(JLcom/vuforia/Trackable;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_getName(JLcom/vuforia/Trackable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/vuforia/Type;

    iget-wide v2, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_getType(JLcom/vuforia/Trackable;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/vuforia/Trackable;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/vuforia/Vuforia;->retrieveFromUserDataMap(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isExtendedTrackingStarted()Z
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_isExtendedTrackingStarted(JLcom/vuforia/Trackable;)Z

    move-result v0

    return v0
.end method

.method public isOfType(Lcom/vuforia/Type;)Z
    .locals 6
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->Trackable_isOfType(JLcom/vuforia/Trackable;JLcom/vuforia/Type;)Z

    move-result v0

    return v0
.end method

.method public setUserData(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vuforia/Trackable;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vuforia/Vuforia;->updateUserDataMap(Ljava/lang/Integer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startExtendedTracking()Z
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_startExtendedTracking(JLcom/vuforia/Trackable;)Z

    move-result v0

    return v0
.end method

.method public stopExtendedTracking()Z
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/vuforia/Trackable;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Trackable_stopExtendedTracking(JLcom/vuforia/Trackable;)Z

    move-result v0

    return v0
.end method
