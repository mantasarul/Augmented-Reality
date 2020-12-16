.class public Lcom/vuforia/GuideView;
.super Ljava/lang/Object;
.source "GuideView.java"


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
    iput-boolean p3, p0, Lcom/vuforia/GuideView;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/GuideView;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/GuideView;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/GuideView;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_GuideView(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/GuideView;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/GuideView;

    iget-wide v2, p1, Lcom/vuforia/GuideView;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/GuideView;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/GuideView;->delete()V

    .line 26
    return-void
.end method

.method public getImage()Lcom/vuforia/Image;
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->GuideView_getImage(JLcom/vuforia/GuideView;)J

    move-result-wide v2

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Image;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Image;-><init>(JZ)V

    goto :goto_0
.end method

.method public getIntrinsics()Lcom/vuforia/CameraCalibration;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/CameraCalibration;

    iget-wide v2, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->GuideView_getIntrinsics(JLcom/vuforia/GuideView;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/CameraCalibration;-><init>(JZ)V

    return-object v0
.end method

.method public getPose()Lcom/vuforia/Matrix34F;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->GuideView_getPose(JLcom/vuforia/GuideView;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public setPose(Lcom/vuforia/Matrix34F;)V
    .locals 6
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/GuideView;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->GuideView_setPose(JLcom/vuforia/GuideView;JLcom/vuforia/Matrix34F;)V

    .line 57
    return-void
.end method
