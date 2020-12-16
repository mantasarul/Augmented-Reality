.class public Lcom/vuforia/EyewearCalibrationReading;
.super Ljava/lang/Object;
.source "EyewearCalibrationReading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/EyewearCalibrationReading$AlignmentType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_EyewearCalibrationReading()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/EyewearCalibrationReading;-><init>(JZ)V

    .line 97
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
    iput-boolean p3, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static cArrayUnwrap([Lcom/vuforia/EyewearCalibrationReading;)[J
    .locals 4
    .parameter

    .prologue
    .line 41
    array-length v0, p0

    new-array v1, v0, [J

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 43
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/vuforia/EyewearCalibrationReading;->getCPtr(Lcom/vuforia/EyewearCalibrationReading;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method

.method protected static cArrayWrap([JZ)[Lcom/vuforia/EyewearCalibrationReading;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 48
    array-length v0, p0

    new-array v1, v0, [Lcom/vuforia/EyewearCalibrationReading;

    .line 49
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 50
    new-instance v2, Lcom/vuforia/EyewearCalibrationReading;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5, p1}, Lcom/vuforia/EyewearCalibrationReading;-><init>(JZ)V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v1
.end method

.method protected static getCPtr(Lcom/vuforia/EyewearCalibrationReading;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_EyewearCalibrationReading(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/vuforia/EyewearCalibrationReading;->delete()V

    .line 26
    return-void
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_CenterX_get(JLcom/vuforia/EyewearCalibrationReading;)F

    move-result v0

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_CenterY_get(JLcom/vuforia/EyewearCalibrationReading;)F

    move-result v0

    return v0
.end method

.method public getPose()Lcom/vuforia/Matrix34F;
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Pose_get(JLcom/vuforia/EyewearCalibrationReading;)J

    move-result-wide v2

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vuforia/Matrix34F;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vuforia/Matrix34F;-><init>(JZ)V

    goto :goto_0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Scale_get(JLcom/vuforia/EyewearCalibrationReading;)F

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Type_get(JLcom/vuforia/EyewearCalibrationReading;)I

    move-result v0

    return v0
.end method

.method public setCenterX(F)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_CenterX_set(JLcom/vuforia/EyewearCalibrationReading;F)V

    .line 73
    return-void
.end method

.method public setCenterY(F)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_CenterY_set(JLcom/vuforia/EyewearCalibrationReading;F)V

    .line 81
    return-void
.end method

.method public setPose(Lcom/vuforia/Matrix34F;)V
    .locals 6
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Pose_set(JLcom/vuforia/EyewearCalibrationReading;JLcom/vuforia/Matrix34F;)V

    .line 56
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Scale_set(JLcom/vuforia/EyewearCalibrationReading;F)V

    .line 65
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vuforia/EyewearCalibrationReading;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->EyewearCalibrationReading_Type_set(JLcom/vuforia/EyewearCalibrationReading;I)V

    .line 89
    return-void
.end method
