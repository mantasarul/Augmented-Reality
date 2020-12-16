.class public Lcom/vuforia/ImageTarget;
.super Lcom/vuforia/ObjectTarget;
.source "ImageTarget.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->ImageTarget_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/ImageTarget;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->ImageTarget_getClassType()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public createVirtualButton(Ljava/lang/String;Lcom/vuforia/Area;)Lcom/vuforia/VirtualButton;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/Area;->getCPtr(Lcom/vuforia/Area;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vuforia/VuforiaJNI;->ImageTarget_createVirtualButton(JLcom/vuforia/ImageTarget;Ljava/lang/String;JLcom/vuforia/Area;)J

    move-result-wide v2

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/VirtualButton;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/VirtualButton;-><init>(JZ)V

    goto :goto_0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/ImageTarget;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/ImageTarget;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_ImageTarget(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

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

.method public destroyVirtualButton(Lcom/vuforia/VirtualButton;)Z
    .locals 6
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/VirtualButton;->getCPtr(Lcom/vuforia/VirtualButton;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->ImageTarget_destroyVirtualButton(JLcom/vuforia/ImageTarget;JLcom/vuforia/VirtualButton;)Z

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
    instance-of v1, p1, Lcom/vuforia/ImageTarget;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/ImageTarget;

    iget-wide v2, p1, Lcom/vuforia/ImageTarget;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/ImageTarget;->delete()V

    .line 25
    return-void
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ImageTarget_getMetaData(JLcom/vuforia/ImageTarget;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumVirtualButtons()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ImageTarget_getNumVirtualButtons(JLcom/vuforia/ImageTarget;)I

    move-result v0

    return v0
.end method

.method public getVirtualButton(I)Lcom/vuforia/VirtualButton;
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->ImageTarget_getVirtualButton__SWIG_0(JLcom/vuforia/ImageTarget;I)J

    move-result-wide v2

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/VirtualButton;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/VirtualButton;-><init>(JZ)V

    goto :goto_0
.end method

.method public getVirtualButton(Ljava/lang/String;)Lcom/vuforia/VirtualButton;
    .locals 4
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/vuforia/ImageTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->ImageTarget_getVirtualButton__SWIG_1(JLcom/vuforia/ImageTarget;Ljava/lang/String;)J

    move-result-wide v2

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/VirtualButton;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/VirtualButton;-><init>(JZ)V

    goto :goto_0
.end method
