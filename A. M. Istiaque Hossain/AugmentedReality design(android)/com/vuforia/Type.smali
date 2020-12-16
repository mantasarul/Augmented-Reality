.class public Lcom/vuforia/Type;
.super Ljava/lang/Object;
.source "Type.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_Type__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Type;-><init>(JZ)V

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
    iput-boolean p3, p0, Lcom/vuforia/Type;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Type;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(S)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/vuforia/VuforiaJNI;->new_Type__SWIG_1(S)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/Type;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Type;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Type;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/Type;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Type;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Type;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Type;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Type(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Type;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/Type;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/Type;

    iget-wide v2, p1, Lcom/vuforia/Type;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Type;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/Type;->delete()V

    .line 26
    return-void
.end method

.method public isOfType(Lcom/vuforia/Type;)Z
    .locals 6
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vuforia/Type;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->Type_isOfType(JLcom/vuforia/Type;JLcom/vuforia/Type;)Z

    move-result v0

    return v0
.end method
