.class public Lcom/vuforia/ViewerParametersList;
.super Ljava/lang/Object;
.source "ViewerParametersList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ViewerParametersList$VPIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/vuforia/ViewerParameters;",
        ">;"
    }
.end annotation


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
    iput-boolean p3, p0, Lcom/vuforia/ViewerParametersList;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ViewerParametersList;)Lcom/vuforia/ViewerParameters;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vuforia/ViewerParametersList;->begin()Lcom/vuforia/ViewerParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/vuforia/ViewerParametersList;Lcom/vuforia/ViewerParameters;)Lcom/vuforia/ViewerParameters;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/vuforia/ViewerParametersList;->next(Lcom/vuforia/ViewerParameters;)Lcom/vuforia/ViewerParameters;

    move-result-object v0

    return-object v0
.end method

.method private begin()Lcom/vuforia/ViewerParameters;
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_begin(JLcom/vuforia/ViewerParametersList;)J

    move-result-wide v2

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ViewerParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    goto :goto_0
.end method

.method private end()Lcom/vuforia/ViewerParameters;
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_end(JLcom/vuforia/ViewerParametersList;)J

    move-result-wide v2

    .line 103
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ViewerParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    goto :goto_0
.end method

.method protected static getCPtr(Lcom/vuforia/ViewerParametersList;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    goto :goto_0
.end method

.method public static getListForAuthoringTools()Lcom/vuforia/ViewerParametersList;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/vuforia/ViewerParametersList;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_getListForAuthoringTools()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParametersList;-><init>(JZ)V

    return-object v0
.end method

.method private next(Lcom/vuforia/ViewerParameters;)Lcom/vuforia/ViewerParameters;
    .locals 6
    .parameter

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/ViewerParameters;->getCPtr(Lcom/vuforia/ViewerParameters;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_next(JLcom/vuforia/ViewerParametersList;JLcom/vuforia/ViewerParameters;)J

    move-result-wide v2

    .line 108
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ViewerParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

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
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/ViewerParametersList;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/ViewerParametersList;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_ViewerParametersList(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J
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

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vuforia/ViewerParametersList;->delete()V

    .line 26
    return-void
.end method

.method public get(J)Lcom/vuforia/ViewerParameters;
    .locals 5
    .parameter

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_get__SWIG_0(JLcom/vuforia/ViewerParametersList;J)J

    move-result-wide v2

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ViewerParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/vuforia/ViewerParameters;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_get__SWIG_1(JLcom/vuforia/ViewerParametersList;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/ViewerParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/vuforia/ViewerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/vuforia/ViewerParametersList$VPIterator;

    invoke-direct {v0, p0}, Lcom/vuforia/ViewerParametersList$VPIterator;-><init>(Lcom/vuforia/ViewerParametersList;)V

    return-object v0
.end method

.method public setSDKFilter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_setSDKFilter(JLcom/vuforia/ViewerParametersList;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vuforia/ViewerParametersList;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->ViewerParametersList_size(JLcom/vuforia/ViewerParametersList;)J

    move-result-wide v0

    return-wide v0
.end method
