.class public Lcom/vuforia/ar/pl/SensorController;
.super Landroid/os/HandlerThread;
.source "SensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;
    }
.end annotation


# static fields
.field private static final AR_SENSOR_CONFIDENCE_HIGH:I = 0x4

.field private static final AR_SENSOR_CONFIDENCE_LOW:I = 0x2

.field private static final AR_SENSOR_CONFIDENCE_MEDIUM:I = 0x3

.field private static final AR_SENSOR_CONFIDENCE_UNKNOWN:I = 0x0

.field private static final AR_SENSOR_CONFIDENCE_UNRELIABLE:I = 0x1

.field private static AR_SENSOR_INDEX_DONTCARE:I = 0x0

.field private static final AR_SENSOR_PARAMTYPE_ACCURACY:I = -0x7ffffff8

.field private static final AR_SENSOR_PARAMTYPE_BASE:I = -0x80000000

.field private static final AR_SENSOR_PARAMTYPE_DATARANGE_MAX:I = -0x7ffffffe

.field private static final AR_SENSOR_PARAMTYPE_DATARANGE_MIN:I = -0x7fffffff

.field private static final AR_SENSOR_PARAMTYPE_RESOLUTION:I = -0x7ffffffc

.field private static final AR_SENSOR_PARAMTYPE_SENSITIVITY:I = -0x7ffffff0

.field private static final AR_SENSOR_PARAMTYPE_UPDATEINTERVAL:I = -0x7fffffe0

.field private static final AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_ABSTRACT:I = -0x7fffffc0

.field private static final AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_ENFORCED:I = -0x7fffff00

.field private static final AR_SENSOR_PARAMTYPE_UPDATEINTERVAL_MIN:I = -0x7fffff80

.field private static final AR_SENSOR_STATUS_IDLE:I = 0x50010002

.field private static final AR_SENSOR_STATUS_RUNNING:I = 0x50010003

.field private static final AR_SENSOR_STATUS_UNINITIALIZED:I = 0x50010001

.field private static final AR_SENSOR_STATUS_UNKNOWN:I = 0x50010000

.field private static final AR_SENSOR_TYPE_ACCELEROMETER:I = 0x50000002

.field private static final AR_SENSOR_TYPE_AMBIENT_LIGHT:I = 0x50000006

.field private static final AR_SENSOR_TYPE_DEVICE_ROTATION:I = 0x50000008

.field private static final AR_SENSOR_TYPE_GYROSCOPE:I = 0x50000001

.field private static final AR_SENSOR_TYPE_MAGNETOMETER:I = 0x50000003

.field private static final AR_SENSOR_TYPE_PROXIMITY:I = 0x50000005

.field private static final AR_SENSOR_TYPE_STEP_DETECTOR:I = 0x50000007

.field private static final AR_SENSOR_TYPE_UNKNOWN:I = 0x50000000

.field private static final AR_SENSOR_UPDATEINTERVAL_HIGHESTRATE:I = 0x4

.field private static final AR_SENSOR_UPDATEINTERVAL_HIGHRATE:I = 0x3

.field private static final AR_SENSOR_UPDATEINTERVAL_LOWRATE:I = 0x1

.field private static final AR_SENSOR_UPDATEINTERVAL_MEDIUMRATE:I = 0x2

.field private static final AR_SENSOR_UPDATEINTERVAL_UNKNOWN:I = 0x0

.field private static CONVERT_FORMAT_TO_ANDROID:Z = false

.field private static CONVERT_FORMAT_TO_PL:Z = false

.field private static final MODULENAME:Ljava/lang/String; = "SensorController"

.field private static final SENSORINFO_VALUE_ANDROIDSENSORTYPE:I = 0x1

.field private static final SENSORINFO_VALUE_ISDEFAULT:I = 0x2

.field private static final SENSORINFO_VALUE_PLSENSORTYPE:I = 0x0

.field private static final SENSOR_TYPE_CONVERSIONTABLE:[I = null

.field private static final _NUM_SENSORINFO_VALUE_:I = 0x3


# instance fields
.field private sensorCacheInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sensorEventHandler:Landroid/os/Handler;

.field private sensorIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/Sensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_PL:Z

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_ANDROID:Z

    .line 118
    const/4 v0, -0x1

    sput v0, Lcom/vuforia/ar/pl/SensorController;->AR_SENSOR_INDEX_DONTCARE:I

    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x50t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x50t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x50t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x50t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x50t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x50t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "SensorController"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 164
    iput-object v1, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    .line 165
    iput-object v1, p0, Lcom/vuforia/ar/pl/SensorController;->sensorIndexMap:Ljava/util/HashMap;

    .line 166
    return-void
.end method

.method private getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;
    .locals 1
    .parameter

    .prologue
    .line 176
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    goto :goto_0
.end method

.method private native newDataAvailable(IJI[F)V
.end method

.method private translateSensorType(IZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 189
    move v0, v1

    :goto_0
    sget-object v2, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 191
    sget-boolean v2, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v2, :cond_0

    sget-object v2, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    .line 195
    :goto_1
    if-ne p1, v2, :cond_2

    .line 197
    sget-boolean v1, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 204
    :goto_2
    return v0

    .line 191
    :cond_0
    sget-object v2, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    goto :goto_1

    .line 197
    :cond_1
    sget-object v1, Lcom/vuforia/ar/pl/SensorController;->SENSOR_TYPE_CONVERSIONTABLE:[I

    mul-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    goto :goto_2

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    sget-boolean v0, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_PL:Z

    if-ne p2, v0, :cond_4

    const/high16 v1, 0x5000

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private translateSensorUpdateIntervalToAndroid(I)I
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, -0x1

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return v0

    .line 216
    :pswitch_0
    const/4 v0, 0x3

    .line 217
    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v0, 0x2

    .line 221
    goto :goto_0

    .line 224
    :pswitch_2
    const/4 v0, 0x1

    .line 225
    goto :goto_0

    .line 228
    :pswitch_3
    const/4 v0, 0x0

    .line 230
    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method close(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v1

    .line 499
    if-nez v1, :cond_0

    .line 501
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 502
    const-string v1, "Sensor handle is invalid"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 525
    :goto_0
    return v0

    .line 510
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    const/4 v0, 0x1

    .line 522
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 517
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 518
    const-string v1, "Failed to unregister sensor event listerer"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAllSupportedSensors()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 336
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 339
    const-string v0, "No valid activity set in native!"

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    move v0, v1

    .line 416
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 344
    if-nez v0, :cond_1

    move v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    .line 350
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    .line 352
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 353
    const-string v0, "Failed to retrieve Context\'s Sensor Service"

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    move v0, v1

    .line 356
    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 379
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 380
    iget-object v3, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 386
    sget-boolean v4, Lcom/vuforia/ar/pl/SensorController;->CONVERT_FORMAT_TO_PL:Z

    invoke-direct {p0, v2, v4}, Lcom/vuforia/ar/pl/SensorController;->translateSensorType(IZ)I

    move-result v2

    .line 387
    const/high16 v4, 0x5000

    if-eq v2, v4, :cond_4

    .line 390
    new-instance v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    invoke-direct {v4, p0}, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;-><init>(Lcom/vuforia/ar/pl/SensorController;)V

    .line 391
    iput-object v0, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    .line 392
    iput v2, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->plSensorType:I

    .line 393
    iput-boolean v3, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->isDefaultSensor:Z

    .line 394
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->cacheIndex:I

    .line 398
    const/4 v0, 0x0

    iput v0, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->requestedAbstractUpdateRate:I

    .line 404
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorIndexMap:Ljava/util/HashMap;

    iget-object v2, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    iget v3, v4, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->cacheIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto/16 :goto_0
.end method

.method getSensorInfoValues(I)[I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v3

    .line 537
    if-nez v3, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    .line 543
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 544
    iget v4, v3, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->plSensorType:I

    aput v4, v2, v1

    .line 545
    iget-object v4, v3, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    aput v4, v2, v0

    .line 546
    const/4 v4, 0x2

    iget-boolean v3, v3, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->isDefaultSensor:Z

    if-eqz v3, :cond_1

    :goto_1
    aput v0, v2, v4

    move-object v0, v2

    .line 548
    goto :goto_0

    :cond_1
    move v0, v1

    .line 546
    goto :goto_1
.end method

.method getSensorName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v0

    .line 560
    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getTypedSensorParameter(II)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v1

    .line 578
    if-nez v1, :cond_0

    .line 580
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 581
    const-string v1, "Sensor handle is invalid"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-object v0

    .line 587
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 623
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 624
    const-string v1, "Unknown sensor parameter"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v1

    .line 630
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sensor parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :sswitch_0
    const/4 v2, 0x3

    :try_start_1
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying sensor parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported for sensor type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->plSensorType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v1, -0x7fffffe0

    if-ne p2, v1, :cond_1

    const-string v1, " when using the Java-based sensor API"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 602
    :sswitch_1
    iget-object v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 605
    :sswitch_2
    iget-object v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getResolution()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 608
    :sswitch_3
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 614
    :cond_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 615
    const-string v1, "Unknown sensor parameter"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :sswitch_4
    iget v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->requestedAbstractUpdateRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 587
    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_0
        -0x7ffffffe -> :sswitch_1
        -0x7ffffffc -> :sswitch_2
        -0x7ffffff8 -> :sswitch_0
        -0x7ffffff0 -> :sswitch_0
        -0x7fffffe0 -> :sswitch_0
        -0x7fffffc0 -> :sswitch_4
        -0x7fffff80 -> :sswitch_3
    .end sparse-switch
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    .line 322
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorIndexMap:Ljava/util/HashMap;

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorIndexMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 267
    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 276
    const/4 v4, 0x0

    .line 277
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_1
    iget v1, v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->cacheIndex:I

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuforia/ar/pl/SensorController;->newDataAvailable(IJI[F)V

    goto :goto_0

    .line 280
    :pswitch_0
    const/4 v4, 0x1

    .line 281
    goto :goto_1

    .line 284
    :pswitch_1
    const/4 v4, 0x2

    .line 285
    goto :goto_1

    .line 288
    :pswitch_2
    const/4 v4, 0x3

    .line 289
    goto :goto_1

    .line 292
    :pswitch_3
    const/4 v4, 0x4

    .line 293
    goto :goto_1

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method open(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 425
    const/4 v3, 0x0

    .line 426
    sget v0, Lcom/vuforia/ar/pl/SensorController;->AR_SENSOR_INDEX_DONTCARE:I

    if-ne p2, v0, :cond_1

    move v1, v2

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    .line 432
    iget v4, v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->plSensorType:I

    if-ne v4, p1, :cond_0

    iget-boolean v4, v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->isDefaultSensor:Z

    if-eqz v4, :cond_0

    .line 445
    :goto_1
    if-nez v0, :cond_2

    .line 447
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 448
    const-string v0, "No sensor matching the requested sensor device info has been found"

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 487
    :goto_2
    return v2

    .line 429
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorCacheInfo:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    goto :goto_1

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/SensorController;->start()V

    .line 467
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vuforia/ar/pl/SensorController;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/SensorController;->sensorEventHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 469
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 471
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 475
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/SensorController;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "retrieve a handler for the sensor event handler thread"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_2

    .line 475
    :cond_4
    const-string v0, "start Java handler thread for sensor events"

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method setTypedSensorParameter(IILjava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v2

    .line 646
    if-nez v2, :cond_0

    .line 648
    invoke-static {v4}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 649
    const-string v1, "Sensor handle is invalid"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 699
    :goto_0
    return v0

    .line 655
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 688
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 689
    const-string v1, "Unknown sensor parameter"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 695
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sensor parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :sswitch_0
    const/4 v1, 0x3

    :try_start_1
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor parameter "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot be set for sensor type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->plSensorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v1, -0x7fffffe0

    if-ne p2, v1, :cond_1

    const-string v1, " when using the Java-based sensor API"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 673
    :sswitch_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 676
    if-lt v3, v1, :cond_2

    if-le v3, v4, :cond_3

    .line 678
    :cond_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid abstract sensor update interval ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :cond_3
    iput v3, v2, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->requestedAbstractUpdateRate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 685
    goto/16 :goto_0

    .line 655
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_0
        -0x7ffffffe -> :sswitch_0
        -0x7ffffffc -> :sswitch_0
        -0x7ffffff8 -> :sswitch_0
        -0x7ffffff0 -> :sswitch_0
        -0x7fffffe0 -> :sswitch_0
        -0x7fffffc0 -> :sswitch_1
        -0x7fffff80 -> :sswitch_0
    .end sparse-switch
.end method

.method start(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v2

    .line 711
    if-nez v2, :cond_1

    .line 713
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 714
    const-string v0, "Sensor handle is invalid"

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    move v0, v1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    iget v0, v2, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->requestedAbstractUpdateRate:I

    invoke-direct {p0, v0}, Lcom/vuforia/ar/pl/SensorController;->translateSensorUpdateIntervalToAndroid(I)I

    move-result v0

    .line 720
    if-gez v0, :cond_2

    const/4 v0, 0x1

    .line 727
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, v2, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/vuforia/ar/pl/SensorController;->sensorEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 735
    :goto_1
    if-nez v0, :cond_0

    .line 737
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 738
    const-string v1, "Failed to start sensor, could not register sensor event listerer"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method stop(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 753
    invoke-direct {p0, p1}, Lcom/vuforia/ar/pl/SensorController;->getSensorCacheInfo(I)Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;

    move-result-object v1

    .line 756
    if-nez v1, :cond_0

    .line 758
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 759
    const-string v1, "Sensor handle is invalid"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    .line 779
    :goto_0
    return v0

    .line 767
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vuforia/ar/pl/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, v1, Lcom/vuforia/ar/pl/SensorController$SensorCacheInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    .line 774
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 775
    const-string v1, "Failed to stop sensor, could not unregister sensor event listerer"

    invoke-static {v1}, Lcom/vuforia/ar/pl/SystemTools;->logSystemError(Ljava/lang/String;)V

    goto :goto_0
.end method
