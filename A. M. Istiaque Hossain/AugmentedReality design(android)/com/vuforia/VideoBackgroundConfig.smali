.class public Lcom/vuforia/VideoBackgroundConfig;
.super Ljava/lang/Object;
.source "VideoBackgroundConfig.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_VideoBackgroundConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/VideoBackgroundConfig;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/VideoBackgroundConfig;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_VideoBackgroundConfig(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/VideoBackgroundConfig;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/VideoBackgroundConfig;

    iget-wide v2, p1, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/VideoBackgroundConfig;->delete()V

    .line 26
    return-void
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Enabled_get(JLcom/vuforia/VideoBackgroundConfig;)Z

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/vuforia/Vec2I;
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Position_get(JLcom/vuforia/VideoBackgroundConfig;)J

    move-result-wide v2

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Vec2I;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2I;-><init>(JZ)V

    goto :goto_0
.end method

.method public getReflection()I
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Reflection_get(JLcom/vuforia/VideoBackgroundConfig;)I

    move-result v0

    return v0
.end method

.method public getSize()Lcom/vuforia/Vec2I;
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Size_get(JLcom/vuforia/VideoBackgroundConfig;)J

    move-result-wide v2

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Vec2I;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec2I;-><init>(JZ)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Enabled_set(JLcom/vuforia/VideoBackgroundConfig;Z)V

    .line 53
    return-void
.end method

.method public setPosition(Lcom/vuforia/Vec2I;)V
    .locals 6
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Vec2I;->getCPtr(Lcom/vuforia/Vec2I;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Position_set(JLcom/vuforia/VideoBackgroundConfig;JLcom/vuforia/Vec2I;)V

    .line 61
    return-void
.end method

.method public setReflection(I)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Reflection_set(JLcom/vuforia/VideoBackgroundConfig;I)V

    .line 79
    return-void
.end method

.method public setSize(Lcom/vuforia/Vec2I;)V
    .locals 6
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Vec2I;->getCPtr(Lcom/vuforia/Vec2I;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundConfig_Size_set(JLcom/vuforia/VideoBackgroundConfig;JLcom/vuforia/Vec2I;)V

    .line 70
    return-void
.end method
