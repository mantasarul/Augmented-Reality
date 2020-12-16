.class public Lcom/vuforia/Box3D;
.super Ljava/lang/Object;
.source "Box3D.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_Box3D__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Box3D;-><init>(JZ)V

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
    iput-boolean p3, p0, Lcom/vuforia/Box3D;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Box3D;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/Box3D;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/vuforia/Box3D;->getCPtr(Lcom/vuforia/Box3D;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_Box3D__SWIG_1(JLcom/vuforia/Box3D;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Box3D;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/Vec3F;Lcom/vuforia/Vec3F;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/vuforia/Vec3F;->getCPtr(Lcom/vuforia/Vec3F;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/vuforia/Vec3F;->getCPtr(Lcom/vuforia/Vec3F;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->new_Box3D__SWIG_2(JLcom/vuforia/Vec3F;JLcom/vuforia/Vec3F;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Box3D;-><init>(JZ)V

    .line 57
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Box3D;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Box3D;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/Box3D;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Box3D;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Box3D;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Box3D;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Box3D(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Box3D;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/Box3D;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/Box3D;

    iget-wide v2, p1, Lcom/vuforia/Box3D;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Box3D;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/Box3D;->delete()V

    .line 26
    return-void
.end method

.method public getMaximumPosition()Lcom/vuforia/Vec3F;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/vuforia/Vec3F;

    iget-wide v2, p0, Lcom/vuforia/Box3D;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Box3D_getMaximumPosition(JLcom/vuforia/Box3D;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec3F;-><init>(JZ)V

    return-object v0
.end method

.method public getMinimumPosition()Lcom/vuforia/Vec3F;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/vuforia/Vec3F;

    iget-wide v2, p0, Lcom/vuforia/Box3D;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Box3D_getMinimumPosition(JLcom/vuforia/Box3D;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Vec3F;-><init>(JZ)V

    return-object v0
.end method
