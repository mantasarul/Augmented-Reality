.class public Lcom/vuforia/CustomViewerParameters;
.super Lcom/vuforia/ViewerParameters;
.source "CustomViewerParameters.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(FLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p1, p2, p3}, Lcom/vuforia/VuforiaJNI;->new_CustomViewerParameters__SWIG_0(FLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/CustomViewerParameters;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/CustomViewerParameters;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/vuforia/CustomViewerParameters;->getCPtr(Lcom/vuforia/CustomViewerParameters;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_CustomViewerParameters__SWIG_1(JLcom/vuforia/CustomViewerParameters;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/CustomViewerParameters;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/CustomViewerParameters;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addDistortionCoefficient(F)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_addDistortionCoefficient(JLcom/vuforia/CustomViewerParameters;F)V

    .line 81
    return-void
.end method

.method public clearDistortionCoefficients()V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_clearDistortionCoefficients(JLcom/vuforia/CustomViewerParameters;)V

    .line 77
    return-void
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_CustomViewerParameters(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/ViewerParameters;->delete()V
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
    instance-of v1, p1, Lcom/vuforia/CustomViewerParameters;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/CustomViewerParameters;

    iget-wide v2, p1, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/CustomViewerParameters;->delete()V

    .line 25
    return-void
.end method

.method public setButtonType(I)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setButtonType(JLcom/vuforia/CustomViewerParameters;I)V

    .line 57
    return-void
.end method

.method public setContainsMagnet(Z)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setContainsMagnet(JLcom/vuforia/CustomViewerParameters;Z)V

    .line 89
    return-void
.end method

.method public setFieldOfView(Lcom/vuforia/Vec4F;)V
    .locals 6
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Vec4F;->getCPtr(Lcom/vuforia/Vec4F;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setFieldOfView(JLcom/vuforia/CustomViewerParameters;JLcom/vuforia/Vec4F;)V

    .line 85
    return-void
.end method

.method public setInterLensDistance(F)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setInterLensDistance(JLcom/vuforia/CustomViewerParameters;F)V

    .line 65
    return-void
.end method

.method public setLensCentreToTrayDistance(F)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setLensCentreToTrayDistance(JLcom/vuforia/CustomViewerParameters;F)V

    .line 73
    return-void
.end method

.method public setScreenToLensDistance(F)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setScreenToLensDistance(JLcom/vuforia/CustomViewerParameters;F)V

    .line 61
    return-void
.end method

.method public setTrayAlignment(I)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/CustomViewerParameters;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CustomViewerParameters_setTrayAlignment(JLcom/vuforia/CustomViewerParameters;I)V

    .line 69
    return-void
.end method
