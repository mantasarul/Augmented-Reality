.class public Lcom/vuforia/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/CameraDevice$CAMERA_DIRECTION;,
        Lcom/vuforia/CameraDevice$FOCUS_MODE;,
        Lcom/vuforia/CameraDevice$MODE;
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
    iput-boolean p3, p0, Lcom/vuforia/CameraDevice;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/CameraDevice;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    goto :goto_0
.end method

.method public static getInstance()Lcom/vuforia/CameraDevice;
    .locals 4

    .prologue
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
    new-instance v0, Lcom/vuforia/CameraDevice;

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getInstance()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/CameraDevice;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public deinit()Z
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_deinit(JLcom/vuforia/CameraDevice;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/CameraDevice;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/CameraDevice;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_CameraDevice(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J
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
    instance-of v1, p1, Lcom/vuforia/CameraDevice;

    if-eqz v1, :cond_0

    .line 43
    check-cast p1, Lcom/vuforia/CameraDevice;

    iget-wide v2, p1, Lcom/vuforia/CameraDevice;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/vuforia/CameraDevice;->delete()V

    .line 26
    return-void
.end method

.method public getCameraCalibration()Lcom/vuforia/CameraCalibration;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/vuforia/CameraCalibration;

    iget-wide v2, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getCameraCalibration(JLcom/vuforia/CameraDevice;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/CameraCalibration;-><init>(JZ)V

    return-object v0
.end method

.method public getCameraDirection()I
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getCameraDirection(JLcom/vuforia/CameraDevice;)I

    move-result v0

    return v0
.end method

.method public getCameraField(ILcom/vuforia/CameraField;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {p2}, Lcom/vuforia/CameraField;->getCPtr(Lcom/vuforia/CameraField;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getCameraField(JLcom/vuforia/CameraDevice;IJLcom/vuforia/CameraField;)Z

    move-result v0

    return v0
.end method

.method public getFieldBool(Ljava/lang/String;[Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getFieldBool(JLcom/vuforia/CameraDevice;Ljava/lang/String;[Z)Z

    move-result v0

    return v0
.end method

.method public getFieldFloat(Ljava/lang/String;[F)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getFieldFloat(JLcom/vuforia/CameraDevice;Ljava/lang/String;[F)Z

    move-result v0

    return v0
.end method

.method public getFieldInt64(Ljava/lang/String;[J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getFieldInt64(JLcom/vuforia/CameraDevice;Ljava/lang/String;[J)Z

    move-result v0

    return v0
.end method

.method public getFieldInt64Range(Ljava/lang/String;[J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getFieldInt64Range(JLcom/vuforia/CameraDevice;Ljava/lang/String;[J)Z

    move-result v0

    return v0
.end method

.method public getFieldString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getFieldString(JLcom/vuforia/CameraDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumFields()I
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getNumFields(JLcom/vuforia/CameraDevice;)I

    move-result v0

    return v0
.end method

.method public getNumVideoModes()I
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getNumVideoModes(JLcom/vuforia/CameraDevice;)I

    move-result v0

    return v0
.end method

.method public getVideoMode(I)Lcom/vuforia/VideoMode;
    .locals 4
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/vuforia/VideoMode;

    iget-wide v2, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_getVideoMode(JLcom/vuforia/CameraDevice;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/VideoMode;-><init>(JZ)V

    return-object v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_init__SWIG_0(JLcom/vuforia/CameraDevice;)Z

    move-result v0

    return v0
.end method

.method public init(I)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_init__SWIG_1(JLcom/vuforia/CameraDevice;I)Z

    move-result v0

    return v0
.end method

.method public selectVideoMode(I)Z
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_selectVideoMode(JLcom/vuforia/CameraDevice;I)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;F)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setField__SWIG_2(JLcom/vuforia/CameraDevice;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;J)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setField__SWIG_1(JLcom/vuforia/CameraDevice;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setField__SWIG_0(JLcom/vuforia/CameraDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setField__SWIG_3(JLcom/vuforia/CameraDevice;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;[J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setField__SWIG_4(JLcom/vuforia/CameraDevice;Ljava/lang/String;[J)Z

    move-result v0

    return v0
.end method

.method public setFlashTorchMode(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setFlashTorchMode(JLcom/vuforia/CameraDevice;Z)Z

    move-result v0

    return v0
.end method

.method public setFocusMode(I)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->CameraDevice_setFocusMode(JLcom/vuforia/CameraDevice;I)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_start(JLcom/vuforia/CameraDevice;)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/vuforia/CameraDevice;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->CameraDevice_stop(JLcom/vuforia/CameraDevice;)Z

    move-result v0

    return v0
.end method
