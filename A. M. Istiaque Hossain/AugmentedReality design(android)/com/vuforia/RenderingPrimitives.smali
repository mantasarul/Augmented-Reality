.class public Lcom/vuforia/RenderingPrimitives;
.super Ljava/lang/Object;
.source "RenderingPrimitives.java"


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
    iput-boolean p3, p0, Lcom/vuforia/RenderingPrimitives;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/RenderingPrimitives;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Lcom/vuforia/RenderingPrimitives;->getCPtr(Lcom/vuforia/RenderingPrimitives;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_RenderingPrimitives(JLcom/vuforia/RenderingPrimitives;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/RenderingPrimitives;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/RenderingPrimitives;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_RenderingPrimitives(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/RenderingPrimitives;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/RenderingPrimitives;

    iget-wide v2, p1, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/RenderingPrimitives;->delete()V

    .line 26
    return-void
.end method

.method public getDistortionTextureMesh(I)Lcom/vuforia/Mesh;
    .locals 4
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/vuforia/Mesh;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getDistortionTextureMesh(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Mesh;-><init>(JZ)V

    return-object v0
.end method

.method public getDistortionTextureSize(I)Lcom/vuforia/Vec2I;
    .locals 4
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/vuforia/Vec2I;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getDistortionTextureSize(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2I;-><init>(JZ)V

    return-object v0
.end method

.method public getDistortionTextureViewport(I)Lcom/vuforia/Vec4I;
    .locals 4
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/vuforia/Vec4I;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getDistortionTextureViewport(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec4I;-><init>(JZ)V

    return-object v0
.end method

.method public getEffectiveFov(I)Lcom/vuforia/Vec4F;
    .locals 4
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/vuforia/Vec4F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getEffectiveFov(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec4F;-><init>(JZ)V

    return-object v0
.end method

.method public getEyeDisplayAdjustmentMatrix(I)Lcom/vuforia/Matrix34F;
    .locals 4
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getEyeDisplayAdjustmentMatrix(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getNormalizedViewport(I)Lcom/vuforia/Vec4F;
    .locals 4
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/vuforia/Vec4F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getNormalizedViewport(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec4F;-><init>(JZ)V

    return-object v0
.end method

.method public getProjectionMatrix(ILcom/vuforia/CameraCalibration;)Lcom/vuforia/Matrix34F;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v7, Lcom/vuforia/Matrix34F;

    iget-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/CameraCalibration;->getCPtr(Lcom/vuforia/CameraCalibration;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getProjectionMatrix__SWIG_1(JLcom/vuforia/RenderingPrimitives;IJLcom/vuforia/CameraCalibration;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v7
.end method

.method public getProjectionMatrix(ILcom/vuforia/CameraCalibration;Z)Lcom/vuforia/Matrix34F;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v8, Lcom/vuforia/Matrix34F;

    iget-wide v0, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/CameraCalibration;->getCPtr(Lcom/vuforia/CameraCalibration;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getProjectionMatrix__SWIG_0(JLcom/vuforia/RenderingPrimitives;IJLcom/vuforia/CameraCalibration;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v8
.end method

.method public getRenderingViews()Lcom/vuforia/ViewList;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/vuforia/ViewList;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getRenderingViews(JLcom/vuforia/RenderingPrimitives;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewList;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoBackgroundMesh(I)Lcom/vuforia/Mesh;
    .locals 4
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/vuforia/Mesh;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getVideoBackgroundMesh(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Mesh;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoBackgroundProjectionMatrix(I)Lcom/vuforia/Matrix34F;
    .locals 4
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getVideoBackgroundProjectionMatrix__SWIG_1(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoBackgroundProjectionMatrix(IZ)Lcom/vuforia/Matrix34F;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/vuforia/Matrix34F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getVideoBackgroundProjectionMatrix__SWIG_0(JLcom/vuforia/RenderingPrimitives;IZ)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    return-object v0
.end method

.method public getVideoBackgroundTextureSize()Lcom/vuforia/Vec2I;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/vuforia/Vec2I;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getVideoBackgroundTextureSize(JLcom/vuforia/RenderingPrimitives;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2I;-><init>(JZ)V

    return-object v0
.end method

.method public getViewport(I)Lcom/vuforia/Vec4I;
    .locals 4
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/vuforia/Vec4I;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getViewport(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec4I;-><init>(JZ)V

    return-object v0
.end method

.method public getViewportCentreToEyeAxis(I)Lcom/vuforia/Vec2F;
    .locals 4
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/vuforia/Vec2F;

    iget-wide v2, p0, Lcom/vuforia/RenderingPrimitives;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->RenderingPrimitives_getViewportCentreToEyeAxis(JLcom/vuforia/RenderingPrimitives;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2F;-><init>(JZ)V

    return-object v0
.end method
