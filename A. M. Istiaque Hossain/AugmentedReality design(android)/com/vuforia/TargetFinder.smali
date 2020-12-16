.class public Lcom/vuforia/TargetFinder;
.super Ljava/lang/Object;
.source "TargetFinder.java"


# static fields
.field public static final FILTER_CURRENTLY_TRACKED:I = 0x1

.field public static final FILTER_NONE:I = 0x0

.field public static final INIT_DEFAULT:I = 0x0

.field public static final INIT_ERROR_NO_NETWORK_CONNECTION:I = -0x1

.field public static final INIT_ERROR_SERVICE_NOT_AVAILABLE:I = -0x2

.field public static final INIT_RUNNING:I = 0x1

.field public static final INIT_SUCCESS:I = 0x2

.field public static final UPDATE_ERROR_AUTHORIZATION_FAILED:I = -0x1

.field public static final UPDATE_ERROR_BAD_FRAME_QUALITY:I = -0x5

.field public static final UPDATE_ERROR_NO_NETWORK_CONNECTION:I = -0x3

.field public static final UPDATE_ERROR_PROJECT_SUSPENDED:I = -0x2

.field public static final UPDATE_ERROR_REQUEST_TIMEOUT:I = -0x8

.field public static final UPDATE_ERROR_SERVICE_NOT_AVAILABLE:I = -0x4

.field public static final UPDATE_ERROR_TIMESTAMP_OUT_OF_RANGE:I = -0x7

.field public static final UPDATE_ERROR_UPDATE_SDK:I = -0x6

.field public static final UPDATE_NO_MATCH:I = 0x0

.field public static final UPDATE_NO_REQUEST:I = 0x1

.field public static final UPDATE_RESULTS_AVAILABLE:I = 0x2


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
    iput-boolean p3, p0, Lcom/vuforia/TargetFinder;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/TargetFinder;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public clearTrackables()V
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_clearTrackables(JLcom/vuforia/TargetFinder;)V

    .line 99
    return-void
.end method

.method public deinit()Z
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_deinit(JLcom/vuforia/TargetFinder;)Z

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
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/TargetFinder;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/TargetFinder;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_TargetFinder(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J
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

.method public enableTracking(Lcom/vuforia/TargetSearchResult;)Lcom/vuforia/ImageTarget;
    .locals 6
    .parameter

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/TargetSearchResult;->getCPtr(Lcom/vuforia/TargetSearchResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->TargetFinder_enableTracking(JLcom/vuforia/TargetFinder;JLcom/vuforia/TargetSearchResult;)J

    move-result-wide v2

    .line 94
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    instance-of v1, p1, Lcom/vuforia/TargetFinder;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/TargetFinder;

    iget-wide v2, p1, Lcom/vuforia/TargetFinder;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/TargetFinder;->delete()V

    .line 26
    return-void
.end method

.method public getImageTarget(I)Lcom/vuforia/ImageTarget;
    .locals 4
    .parameter

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->TargetFinder_getImageTarget(JLcom/vuforia/TargetFinder;I)J

    move-result-wide v2

    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0
.end method

.method public getInitState()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_getInitState(JLcom/vuforia/TargetFinder;)I

    move-result v0

    return v0
.end method

.method public getNumImageTargets()I
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_getNumImageTargets(JLcom/vuforia/TargetFinder;)I

    move-result v0

    return v0
.end method

.method public getResult(I)Lcom/vuforia/TargetSearchResult;
    .locals 4
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->TargetFinder_getResult(JLcom/vuforia/TargetFinder;I)J

    move-result-wide v2

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/TargetSearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/TargetSearchResult;-><init>(JZ)V

    goto :goto_0
.end method

.method public getResultCount()I
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_getResultCount(JLcom/vuforia/TargetFinder;)I

    move-result v0

    return v0
.end method

.method public isRequesting()Z
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_isRequesting(JLcom/vuforia/TargetFinder;)Z

    move-result v0

    return v0
.end method

.method public startInit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->TargetFinder_startInit(JLcom/vuforia/TargetFinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startRecognition()Z
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_startRecognition(JLcom/vuforia/TargetFinder;)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_stop(JLcom/vuforia/TargetFinder;)Z

    move-result v0

    return v0
.end method

.method public updateSearchResults()I
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_updateSearchResults__SWIG_1(JLcom/vuforia/TargetFinder;)I

    move-result v0

    return v0
.end method

.method public updateSearchResults(I)I
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->TargetFinder_updateSearchResults__SWIG_0(JLcom/vuforia/TargetFinder;I)I

    move-result v0

    return v0
.end method

.method public waitUntilInitFinished()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/TargetFinder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->TargetFinder_waitUntilInitFinished(JLcom/vuforia/TargetFinder;)V

    .line 57
    return-void
.end method
