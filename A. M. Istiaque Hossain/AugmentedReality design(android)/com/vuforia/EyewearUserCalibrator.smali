.class public Lcom/vuforia/EyewearUserCalibrator;
.super Ljava/lang/Object;
.source "EyewearUserCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/EyewearUserCalibrator$CONSISTENCY;
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
    iput-boolean p3, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/EyewearUserCalibrator;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    goto :goto_0
.end method

.method private getProjectionMatrices([Lcom/vuforia/EyewearCalibrationReading;I[Lcom/vuforia/EyewearCalibrationReading;ILcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)I
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static/range {p1 .. p1}, Lcom/vuforia/EyewearCalibrationReading;->cArrayUnwrap([Lcom/vuforia/EyewearCalibrationReading;)[J

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/vuforia/EyewearCalibrationReading;->cArrayUnwrap([Lcom/vuforia/EyewearCalibrationReading;)[J

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v9

    invoke-static/range {p6 .. p6}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v12

    invoke-static/range {p7 .. p7}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v15

    invoke-static/range {p8 .. p8}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v18

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v11, p5

    move-object/from16 v14, p6

    move-object/from16 v17, p7

    move-object/from16 v20, p8

    invoke-static/range {v2 .. v20}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_getProjectionMatrices(JLcom/vuforia/EyewearUserCalibrator;[JI[JIJLcom/vuforia/Matrix34F;JLcom/vuforia/Matrix34F;JLcom/vuforia/Matrix34F;JLcom/vuforia/Matrix34F;)I

    move-result v2

    return v2
.end method

.method private getProjectionMatrix([Lcom/vuforia/EyewearCalibrationReading;ILcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/EyewearCalibrationReading;->cArrayUnwrap([Lcom/vuforia/EyewearCalibrationReading;)[J

    move-result-object v3

    invoke-static {p3}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v5

    invoke-static {p4}, Lcom/vuforia/Matrix34F;->getCPtr(Lcom/vuforia/Matrix34F;)J

    move-result-wide v8

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_getProjectionMatrix(JLcom/vuforia/EyewearUserCalibrator;[JIJLcom/vuforia/Matrix34F;JLcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_EyewearUserCalibrator(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/vuforia/EyewearUserCalibrator;->delete()V

    .line 26
    return-void
.end method

.method public getDrawingAspectRatio(JJ)F
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 67
    iget-wide v1, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_getDrawingAspectRatio(JLcom/vuforia/EyewearUserCalibrator;JJ)F

    move-result v0

    return v0
.end method

.method public getMaxScaleHint()F
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_getMaxScaleHint(JLcom/vuforia/EyewearUserCalibrator;)F

    move-result v0

    return v0
.end method

.method public getMinScaleHint()F
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_getMinScaleHint(JLcom/vuforia/EyewearUserCalibrator;)F

    move-result v0

    return v0
.end method

.method public getProjectionMatrices([Lcom/vuforia/EyewearCalibrationReading;[Lcom/vuforia/EyewearCalibrationReading;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Matrix34F argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    array-length v2, p1

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/vuforia/EyewearUserCalibrator;->getProjectionMatrices([Lcom/vuforia/EyewearCalibrationReading;I[Lcom/vuforia/EyewearCalibrationReading;ILcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)I

    move-result v0

    return v0
.end method

.method public getProjectionMatrix([Lcom/vuforia/EyewearCalibrationReading;Lcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Matrix34F argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vuforia/EyewearUserCalibrator;->getProjectionMatrix([Lcom/vuforia/EyewearCalibrationReading;ILcom/vuforia/Matrix34F;Lcom/vuforia/Matrix34F;)Z

    move-result v0

    return v0
.end method

.method public init(JJFF)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-wide v1, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_init(JLcom/vuforia/EyewearUserCalibrator;JJFF)Z

    move-result v0

    return v0
.end method

.method public isStereoStretched()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/vuforia/EyewearUserCalibrator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->EyewearUserCalibrator_isStereoStretched(JLcom/vuforia/EyewearUserCalibrator;)Z

    move-result v0

    return v0
.end method
