.class public Lcom/vuforia/TargetSearchResult;
.super Ljava/lang/Object;
.source "TargetSearchResult.java"


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
    iput-boolean p3, p0, Lcom/vuforia/TargetSearchResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/TargetSearchResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/TargetSearchResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/TargetSearchResult;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_TargetSearchResult(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/TargetSearchResult;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/TargetSearchResult;

    iget-wide v2, p1, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/TargetSearchResult;->delete()V

    .line 26
    return-void
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetSearchResult_getMetaData(JLcom/vuforia/TargetSearchResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetSearchResult_getTargetName(JLcom/vuforia/TargetSearchResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSize()F
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetSearchResult_getTargetSize(JLcom/vuforia/TargetSearchResult;)F

    move-result v0

    return v0
.end method

.method public getTrackingRating()S
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetSearchResult_getTrackingRating(JLcom/vuforia/TargetSearchResult;)S

    move-result v0

    return v0
.end method

.method public getUniqueTargetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/TargetSearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetSearchResult_getUniqueTargetId(JLcom/vuforia/TargetSearchResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
