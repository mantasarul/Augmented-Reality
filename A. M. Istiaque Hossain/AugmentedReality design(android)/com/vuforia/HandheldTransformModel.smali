.class public Lcom/vuforia/HandheldTransformModel;
.super Lcom/vuforia/TransformModel;
.source "HandheldTransformModel.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_HandheldTransformModel__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/HandheldTransformModel;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->HandheldTransformModel_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/TransformModel;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/HandheldTransformModel;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/vuforia/HandheldTransformModel;->getCPtr(Lcom/vuforia/HandheldTransformModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_HandheldTransformModel__SWIG_1(JLcom/vuforia/HandheldTransformModel;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/HandheldTransformModel;-><init>(JZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/Vec3F;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    invoke-static {p1}, Lcom/vuforia/Vec3F;->getCPtr(Lcom/vuforia/Vec3F;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_HandheldTransformModel__SWIG_2(JLcom/vuforia/Vec3F;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/HandheldTransformModel;-><init>(JZ)V

    .line 61
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/HandheldTransformModel;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_HandheldTransformModel(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/TransformModel;->delete()V
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

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    instance-of v1, p1, Lcom/vuforia/HandheldTransformModel;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/HandheldTransformModel;

    iget-wide v2, p1, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/HandheldTransformModel;->delete()V

    .line 25
    return-void
.end method

.method public getPivotPoint()Lcom/vuforia/Vec3F;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/vuforia/Vec3F;

    iget-wide v2, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->HandheldTransformModel_getPivotPoint(JLcom/vuforia/HandheldTransformModel;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec3F;-><init>(JZ)V

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->HandheldTransformModel_getType(JLcom/vuforia/HandheldTransformModel;)I

    move-result v0

    return v0
.end method

.method public setPivotPoint(Lcom/vuforia/Vec3F;)Z
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/HandheldTransformModel;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Vec3F;->getCPtr(Lcom/vuforia/Vec3F;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->HandheldTransformModel_setPivotPoint(JLcom/vuforia/HandheldTransformModel;JLcom/vuforia/Vec3F;)Z

    move-result v0

    return v0
.end method
