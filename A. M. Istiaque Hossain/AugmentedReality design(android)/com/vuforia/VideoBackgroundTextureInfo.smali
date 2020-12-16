.class public Lcom/vuforia/VideoBackgroundTextureInfo;
.super Ljava/lang/Object;
.source "VideoBackgroundTextureInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_VideoBackgroundTextureInfo()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/VideoBackgroundTextureInfo;-><init>(JZ)V

    .line 63
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
    iput-boolean p3, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/VideoBackgroundTextureInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_VideoBackgroundTextureInfo(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/VideoBackgroundTextureInfo;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/VideoBackgroundTextureInfo;

    iget-wide v2, p1, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/VideoBackgroundTextureInfo;->delete()V

    .line 26
    return-void
.end method

.method public getImageSize()Lcom/vuforia/Vec2I;
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundTextureInfo_ImageSize_get(JLcom/vuforia/VideoBackgroundTextureInfo;)J

    move-result-wide v2

    .line 54
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

.method public getPixelFormat()I
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundTextureInfo_PixelFormat_get(JLcom/vuforia/VideoBackgroundTextureInfo;)I

    move-result v0

    return v0
.end method

.method public getTextureSize()Lcom/vuforia/Vec2I;
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/VideoBackgroundTextureInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VideoBackgroundTextureInfo_TextureSize_get(JLcom/vuforia/VideoBackgroundTextureInfo;)J

    move-result-wide v2

    .line 49
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
