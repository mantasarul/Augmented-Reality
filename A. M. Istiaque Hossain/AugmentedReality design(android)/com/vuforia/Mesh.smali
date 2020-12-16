.class public Lcom/vuforia/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


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
    iput-boolean p3, p0, Lcom/vuforia/Mesh;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Mesh;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Mesh;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Mesh;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Mesh(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/Mesh;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/Mesh;

    iget-wide v2, p1, Lcom/vuforia/Mesh;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Mesh;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/Mesh;->delete()V

    .line 26
    return-void
.end method

.method public getNormals()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getNormals(JLcom/vuforia/Mesh;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNumTriangles()I
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getNumTriangles(JLcom/vuforia/Mesh;)I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getNumVertices(JLcom/vuforia/Mesh;)I

    move-result v0

    return v0
.end method

.method public getPositions()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getPositions(JLcom/vuforia/Mesh;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTriangles()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getTriangles(JLcom/vuforia/Mesh;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getUVs()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_getUVs(JLcom/vuforia/Mesh;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hasNormals()Z
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_hasNormals(JLcom/vuforia/Mesh;)Z

    move-result v0

    return v0
.end method

.method public hasPositions()Z
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_hasPositions(JLcom/vuforia/Mesh;)Z

    move-result v0

    return v0
.end method

.method public hasUVs()Z
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/Mesh;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Mesh_hasUVs(JLcom/vuforia/Mesh;)Z

    move-result v0

    return v0
.end method
