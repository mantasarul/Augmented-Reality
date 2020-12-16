.class public Lcom/vuforia/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/Device$MODE;
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
    iput-boolean p3, p0, Lcom/vuforia/Device;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/Device;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/Device;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    goto :goto_0
.end method

.method public static getClassType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/vuforia/Type;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->Device_getClassType()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method

.method public static getInstance()Lcom/vuforia/Device;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-static {}, Lcom/vuforia/Vuforia;->wasInitializedJava()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use of the Java Vuforia APIs requires initalization via the com.vuforia.Vuforia class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->Device_getInstance()J

    move-result-wide v0

    .line 51
    const/4 v2, 0x0

    invoke-static {}, Lcom/vuforia/EyewearDevice;->getClassType()Lcom/vuforia/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    invoke-static {}, Lcom/vuforia/EyewearDevice;->getClassType()Lcom/vuforia/Type;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->Device_isOfType(JLcom/vuforia/Device;JLcom/vuforia/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    new-instance v2, Lcom/vuforia/EyewearDevice;

    invoke-direct {v2, v0, v1, v6}, Lcom/vuforia/EyewearDevice;-><init>(JZ)V

    move-object v0, v2

    .line 54
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/vuforia/Device;

    invoke-direct {v2, v0, v1, v6}, Lcom/vuforia/Device;-><init>(JZ)V

    move-object v0, v2

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
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/Device;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/Device;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_Device(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/Device;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/Device;

    iget-wide v2, p1, Lcom/vuforia/Device;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/Device;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/Device;->delete()V

    .line 26
    return-void
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Device_getMode(JLcom/vuforia/Device;)I

    move-result v0

    return v0
.end method

.method public getRenderingPrimitives()Lcom/vuforia/RenderingPrimitives;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/vuforia/RenderingPrimitives;

    iget-wide v2, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Device_getRenderingPrimitives(JLcom/vuforia/Device;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/RenderingPrimitives;-><init>(JZ)V

    return-object v0
.end method

.method public getSelectedViewer()Lcom/vuforia/ViewerParameters;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/vuforia/ViewerParameters;

    iget-wide v2, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Device_getSelectedViewer(JLcom/vuforia/Device;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParameters;-><init>(JZ)V

    return-object v0
.end method

.method public getType()Lcom/vuforia/Type;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/vuforia/Type;

    iget-wide v2, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Device_getType(JLcom/vuforia/Device;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Type;-><init>(JZ)V

    return-object v0
.end method

.method public getViewerList()Lcom/vuforia/ViewerParametersList;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/vuforia/ViewerParametersList;

    iget-wide v2, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->Device_getViewerList(JLcom/vuforia/Device;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/ViewerParametersList;-><init>(JZ)V

    return-object v0
.end method

.method public isOfType(Lcom/vuforia/Type;)Z
    .locals 6
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Type;->getCPtr(Lcom/vuforia/Type;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->Device_isOfType(JLcom/vuforia/Device;JLcom/vuforia/Type;)Z

    move-result v0

    return v0
.end method

.method public isViewerActive()Z
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Device_isViewerActive(JLcom/vuforia/Device;)Z

    move-result v0

    return v0
.end method

.method public selectViewer(Lcom/vuforia/ViewerParameters;)Z
    .locals 6
    .parameter

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/ViewerParameters;->getCPtr(Lcom/vuforia/ViewerParameters;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->Device_selectViewer(JLcom/vuforia/Device;JLcom/vuforia/ViewerParameters;)Z

    move-result v0

    return v0
.end method

.method public setConfigurationChanged()V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->Device_setConfigurationChanged(JLcom/vuforia/Device;)V

    .line 100
    return-void
.end method

.method public setMode(I)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->Device_setMode(JLcom/vuforia/Device;I)Z

    move-result v0

    return v0
.end method

.method public setViewerActive(Z)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/vuforia/Device;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->Device_setViewerActive(JLcom/vuforia/Device;Z)V

    .line 80
    return-void
.end method
