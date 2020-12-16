.class public Lcom/vuforia/Frame;
.super Ljava/lang/Object;
.source "Frame.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_Frame__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Frame;-><init>(JZ)V

    .line 61
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
    iput-boolean p3, p0, Lcom/vuforia/Frame;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Frame;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/vuforia/Frame;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Lcom/vuforia/Frame;->getCPtr(Lcom/vuforia/Frame;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_Frame__SWIG_1(JLcom/vuforia/Frame;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Frame;-><init>(JZ)V

    .line 65
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Frame;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/vuforia/Frame;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/vuforia/Frame;

    invoke-direct {v0, p0}, Lcom/vuforia/Frame;-><init>(Lcom/vuforia/Frame;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/vuforia/Frame;->clone()Lcom/vuforia/Frame;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Frame;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Frame;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Frame(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J
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

    .line 53
    .line 54
    instance-of v1, p1, Lcom/vuforia/Frame;

    if-eqz v1, :cond_0

    .line 55
    check-cast p1, Lcom/vuforia/Frame;

    iget-wide v2, p1, Lcom/vuforia/Frame;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Frame;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/Frame;->delete()V

    .line 26
    return-void
.end method

.method public getImage(I)Lcom/vuforia/Image;
    .locals 4
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->Frame_getImage(JLcom/vuforia/Frame;I)J

    move-result-wide v2

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Image;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Image;-><init>(JZ)V

    goto :goto_0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Frame_getIndex(JLcom/vuforia/Frame;)I

    move-result v0

    return v0
.end method

.method public getNumImages()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Frame_getNumImages(JLcom/vuforia/Frame;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStamp()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/Frame;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Frame_getTimeStamp(JLcom/vuforia/Frame;)D

    move-result-wide v0

    return-wide v0
.end method
