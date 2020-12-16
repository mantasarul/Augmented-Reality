.class public Lcom/vuforia/MultiTarget;
.super Lcom/vuforia/ObjectTarget;
.source "MultiTarget.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->MultiTarget_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/MultiTarget;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->MultiTarget_getClassType()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public addPart(Lcom/vuforia/Trackable;)I
    .locals 6
    .parameter

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Trackable;->getCPtr(Lcom/vuforia/Trackable;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->MultiTarget_addPart(JLcom/vuforia/MultiTarget;JLcom/vuforia/Trackable;)I

    move-result v0

    return v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/MultiTarget;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/MultiTarget;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_MultiTarget(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

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
    instance-of v1, p1, Lcom/vuforia/MultiTarget;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/MultiTarget;

    iget-wide v2, p1, Lcom/vuforia/MultiTarget;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/MultiTarget;->delete()V

    .line 25
    return-void
.end method

.method public getNumParts()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->MultiTarget_getNumParts(JLcom/vuforia/MultiTarget;)I

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/vuforia/Trackable;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 57
    iget-wide v2, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->MultiTarget_getPart__SWIG_0(JLcom/vuforia/MultiTarget;I)J

    move-result-wide v2

    .line 58
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    new-instance v1, Lcom/vuforia/Trackable;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 62
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 70
    :cond_5
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 71
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 72
    :cond_6
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 73
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 74
    :cond_7
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 75
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 76
    :cond_8
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 77
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 78
    :cond_9
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getPart(Ljava/lang/String;)Lcom/vuforia/Trackable;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 85
    iget-wide v2, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->MultiTarget_getPart__SWIG_1(JLcom/vuforia/MultiTarget;Ljava/lang/String;)J

    move-result-wide v2

    .line 86
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v1, Lcom/vuforia/Trackable;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Trackable;-><init>(JZ)V

    .line 90
    invoke-static {}, Lcom/vuforia/ImageTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    new-instance v0, Lcom/vuforia/ImageTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ImageTarget;-><init>(JZ)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/vuforia/CylinderTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    new-instance v0, Lcom/vuforia/CylinderTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/CylinderTarget;-><init>(JZ)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {}, Lcom/vuforia/MultiTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    new-instance v0, Lcom/vuforia/MultiTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/MultiTarget;-><init>(JZ)V

    goto :goto_0

    .line 96
    :cond_4
    invoke-static {}, Lcom/vuforia/VuMarkTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    new-instance v0, Lcom/vuforia/VuMarkTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTarget;-><init>(JZ)V

    goto :goto_0

    .line 98
    :cond_5
    invoke-static {}, Lcom/vuforia/VuMarkTemplate;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    new-instance v0, Lcom/vuforia/VuMarkTemplate;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/VuMarkTemplate;-><init>(JZ)V

    goto :goto_0

    .line 100
    :cond_6
    invoke-static {}, Lcom/vuforia/ModelTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 101
    new-instance v0, Lcom/vuforia/ModelTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ModelTarget;-><init>(JZ)V

    goto :goto_0

    .line 102
    :cond_7
    invoke-static {}, Lcom/vuforia/ObjectTarget;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 103
    new-instance v0, Lcom/vuforia/ObjectTarget;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/ObjectTarget;-><init>(JZ)V

    goto :goto_0

    .line 104
    :cond_8
    invoke-static {}, Lcom/vuforia/Anchor;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 105
    new-instance v0, Lcom/vuforia/Anchor;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Anchor;-><init>(JZ)V

    goto/16 :goto_0

    .line 106
    :cond_9
    invoke-static {}, Lcom/vuforia/DeviceTrackable;->getClassType()Lcom/vuforia/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuforia/Trackable;->isOfType(Lcom/vuforia/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Lcom/vuforia/DeviceTrackable;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/DeviceTrackable;-><init>(JZ)V

    goto/16 :goto_0
.end method

.method public getPartOffset(ILcom/vuforia/Matrix34F;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vuforia/VuforiaJNI;->MultiTarget_getPartOffset(JLcom/vuforia/MultiTarget;IJLcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method

.method public removePart(I)Z
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->MultiTarget_removePart(JLcom/vuforia/MultiTarget;I)Z

    move-result v0

    return v0
.end method

.method public setPartOffset(ILcom/vuforia/Matrix34F;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/vuforia/MultiTarget;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vuforia/VuforiaJNI;->MultiTarget_setPartOffset(JLcom/vuforia/MultiTarget;IJLcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method
