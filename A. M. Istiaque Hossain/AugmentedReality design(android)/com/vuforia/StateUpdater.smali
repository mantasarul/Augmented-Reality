.class public Lcom/vuforia/StateUpdater;
.super Ljava/lang/Object;
.source "StateUpdater.java"


# static fields
.field private static sState:Lcom/vuforia/State;

.field private static final sStateMutex:Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuforia/StateUpdater;->sStateMutex:Ljava/lang/Object;

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
    iput-boolean p3, p0, Lcom/vuforia/StateUpdater;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/StateUpdater;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/StateUpdater;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/StateUpdater;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_StateUpdater(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J
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

    .line 44
    .line 45
    instance-of v1, p1, Lcom/vuforia/StateUpdater;

    if-eqz v1, :cond_0

    .line 46
    check-cast p1, Lcom/vuforia/StateUpdater;

    iget-wide v2, p1, Lcom/vuforia/StateUpdater;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/StateUpdater;->delete()V

    .line 26
    return-void
.end method

.method public getCurrentTimeStamp()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->StateUpdater_getCurrentTimeStamp(JLcom/vuforia/StateUpdater;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatestState()Lcom/vuforia/State;
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/vuforia/StateUpdater;->sStateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateState()Lcom/vuforia/State;
    .locals 5

    .prologue
    .line 51
    sget-object v1, Lcom/vuforia/StateUpdater;->sStateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    invoke-virtual {v0}, Lcom/vuforia/State;->delete()V

    .line 55
    :cond_0
    new-instance v0, Lcom/vuforia/State;

    iget-wide v2, p0, Lcom/vuforia/StateUpdater;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->StateUpdater_updateState(JLcom/vuforia/StateUpdater;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/vuforia/State;-><init>(JZ)V

    sput-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v0, Lcom/vuforia/StateUpdater;->sState:Lcom/vuforia/State;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
