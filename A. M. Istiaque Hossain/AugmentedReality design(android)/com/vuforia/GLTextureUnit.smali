.class public Lcom/vuforia/GLTextureUnit;
.super Lcom/vuforia/TextureUnit;
.source "GLTextureUnit.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_GLTextureUnit__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/GLTextureUnit;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Lcom/vuforia/VuforiaJNI;->new_GLTextureUnit__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/GLTextureUnit;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->GLTextureUnit_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/TextureUnit;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/GLTextureUnit;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/vuforia/GLTextureUnit;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/GLTextureUnit;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_GLTextureUnit(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/vuforia/TextureUnit;->delete()V
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
    instance-of v1, p1, Lcom/vuforia/GLTextureUnit;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/GLTextureUnit;

    iget-wide v2, p1, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/GLTextureUnit;->delete()V

    .line 25
    return-void
.end method

.method public getTextureUnit()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->GLTextureUnit_TextureUnit_get(JLcom/vuforia/GLTextureUnit;)I

    move-result v0

    return v0
.end method

.method public setTextureUnit(I)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/GLTextureUnit;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->GLTextureUnit_TextureUnit_set(JLcom/vuforia/GLTextureUnit;I)V

    .line 57
    return-void
.end method
