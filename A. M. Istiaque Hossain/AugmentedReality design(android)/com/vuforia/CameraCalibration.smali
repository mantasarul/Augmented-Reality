.class public Lcom/vuforia/CameraCalibration;
.super Ljava/lang/Object;
.source "CameraCalibration.java"


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
    iput-boolean p3, p0, Lcom/vuforia/CameraCalibration;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/CameraCalibration;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/CameraCalibration;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/CameraCalibration;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_CameraCalibration(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/CameraCalibration;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/CameraCalibration;

    iget-wide v2, p1, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/CameraCalibration;->delete()V

    .line 26
    return-void
.end method

.method public getDistortionParameters()Lcom/vuforia/Vec4F;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/vuforia/Vec4F;

    iget-wide v2, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraCalibration_getDistortionParameters(JLcom/vuforia/CameraCalibration;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec4F;-><init>(JZ)V

    return-object v0
.end method

.method public getFieldOfViewRads()Lcom/vuforia/Vec2F;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/vuforia/Vec2F;

    iget-wide v2, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraCalibration_getFieldOfViewRads(JLcom/vuforia/CameraCalibration;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2F;-><init>(JZ)V

    return-object v0
.end method

.method public getFocalLength()Lcom/vuforia/Vec2F;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/vuforia/Vec2F;

    iget-wide v2, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraCalibration_getFocalLength(JLcom/vuforia/CameraCalibration;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2F;-><init>(JZ)V

    return-object v0
.end method

.method public getPrincipalPoint()Lcom/vuforia/Vec2F;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/vuforia/Vec2F;

    iget-wide v2, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraCalibration_getPrincipalPoint(JLcom/vuforia/CameraCalibration;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2F;-><init>(JZ)V

    return-object v0
.end method

.method public getSize()Lcom/vuforia/Vec2F;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Vec2F;

    iget-wide v2, p0, Lcom/vuforia/CameraCalibration;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraCalibration_getSize(JLcom/vuforia/CameraCalibration;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2F;-><init>(JZ)V

    return-object v0
.end method
