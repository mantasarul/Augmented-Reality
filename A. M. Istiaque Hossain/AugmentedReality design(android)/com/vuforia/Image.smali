.class public Lcom/vuforia/Image;
.super Ljava/lang/Object;
.source "Image.java"


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
    iput-boolean p3, p0, Lcom/vuforia/Image;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Image;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Image;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/vuforia/Image;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Image;->swigCMemOwn:Z

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 38
    instance-of v1, p1, Lcom/vuforia/Image;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lcom/vuforia/Image;

    iget-wide v2, p1, Lcom/vuforia/Image;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Image;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method

.method public getBufferHeight()I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getBufferHeight(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method

.method public getBufferWidth()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getBufferWidth(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method

.method public getFormat()I
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getFormat(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getHeight(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getPixels(JLcom/vuforia/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getStride()I
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getStride(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/vuforia/Image;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Image_getWidth(JLcom/vuforia/Image;)I

    move-result v0

    return v0
.end method
