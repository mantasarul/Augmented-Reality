.class Lcom/vuforia/UpdateCallback;
.super Ljava/lang/Object;
.source "UpdateCallback.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_UpdateCallback()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3}, Lcom/vuforia/UpdateCallback;-><init>(JZ)V

    .line 68
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    iget-boolean v2, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/vuforia/VuforiaJNI;->UpdateCallback_director_connect(Lcom/vuforia/UpdateCallback;JZZ)V

    .line 69
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
    iput-boolean p3, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/UpdateCallback;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Vuforia_onUpdate(Lcom/vuforia/State;)V
    .locals 6
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/State;->getCPtr(Lcom/vuforia/State;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->UpdateCallback_Vuforia_onUpdate(JLcom/vuforia/UpdateCallback;JLcom/vuforia/State;)V

    .line 64
    return-void
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_UpdateCallback(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J
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

    .line 56
    .line 57
    instance-of v1, p1, Lcom/vuforia/UpdateCallback;

    if-eqz v1, :cond_0

    .line 58
    check-cast p1, Lcom/vuforia/UpdateCallback;

    iget-wide v2, p1, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 59
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/UpdateCallback;->delete()V

    .line 26
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    .line 42
    invoke-virtual {p0}, Lcom/vuforia/UpdateCallback;->delete()V

    .line 43
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iput-boolean v2, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    .line 47
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/vuforia/VuforiaJNI;->UpdateCallback_change_ownership(Lcom/vuforia/UpdateCallback;JZ)V

    .line 48
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Lcom/vuforia/UpdateCallback;->swigCMemOwn:Z

    .line 52
    iget-wide v0, p0, Lcom/vuforia/UpdateCallback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/vuforia/VuforiaJNI;->UpdateCallback_change_ownership(Lcom/vuforia/UpdateCallback;JZ)V

    .line 53
    return-void
.end method
