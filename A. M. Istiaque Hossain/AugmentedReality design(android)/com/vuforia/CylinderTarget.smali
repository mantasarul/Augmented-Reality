.class public Lcom/vuforia/CylinderTarget;
.super Lcom/vuforia/ObjectTarget;
.source "CylinderTarget.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/CylinderTarget;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_getClassType()J

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

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/CylinderTarget;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/CylinderTarget;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_CylinderTarget(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/ObjectTarget;->delete()V
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
    instance-of v1, p1, Lcom/vuforia/CylinderTarget;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/CylinderTarget;

    iget-wide v2, p1, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/CylinderTarget;->delete()V

    .line 25
    return-void
.end method

.method public getBottomDiameter()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_getBottomDiameter(JLcom/vuforia/CylinderTarget;)F

    move-result v0

    return v0
.end method

.method public getSideLength()F
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_getSideLength(JLcom/vuforia/CylinderTarget;)F

    move-result v0

    return v0
.end method

.method public getTopDiameter()F
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_getTopDiameter(JLcom/vuforia/CylinderTarget;)F

    move-result v0

    return v0
.end method

.method public setBottomDiameter(F)Z
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_setBottomDiameter(JLcom/vuforia/CylinderTarget;F)Z

    move-result v0

    return v0
.end method

.method public setSideLength(F)Z
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_setSideLength(JLcom/vuforia/CylinderTarget;F)Z

    move-result v0

    return v0
.end method

.method public setTopDiameter(F)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/CylinderTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CylinderTarget_setTopDiameter(JLcom/vuforia/CylinderTarget;F)Z

    move-result v0

    return v0
.end method
