.class public Lcom/vuforia/ar/pl/SystemTools;
.super Ljava/lang/Object;
.source "SystemTools.java"


# static fields
.field public static final AR_DEVICE_ORIENTATION_0:I = 0x10005012

.field public static final AR_DEVICE_ORIENTATION_180:I = 0x10005013

.field public static final AR_DEVICE_ORIENTATION_270:I = 0x10005015

.field public static final AR_DEVICE_ORIENTATION_90:I = 0x10005014

.field public static final AR_DEVICE_ORIENTATION_UNKNOWN:I = 0x10005010

.field public static final AR_ERROR_INVALID_ENUM:I = 0x3

.field public static final AR_ERROR_INVALID_HANDLE:I = 0x4

.field public static final AR_ERROR_INVALID_OPERATION:I = 0x5

.field public static final AR_ERROR_INVALID_VALUE:I = 0x2

.field public static final AR_ERROR_NONE:I = 0x0

.field public static final AR_ERROR_OPERATION_CANCELED:I = 0x7

.field public static final AR_ERROR_OPERATION_FAILED:I = 0x6

.field public static final AR_ERROR_OPERATION_TIMEOUT:I = 0x8

.field public static final AR_ERROR_UNKNOWN:I = 0x1

.field public static final AR_RENDERING_TEXTURE_ROTATION_AUTO:I = 0x10005011

.field public static final AR_RENDERING_TEXTURE_ROTATION_LANDSCAPE_LEFT:I = 0x10005014

.field public static final AR_RENDERING_TEXTURE_ROTATION_LANDSCAPE_RIGHT:I = 0x10005015

.field public static final AR_RENDERING_TEXTURE_ROTATION_PORTRAIT:I = 0x10005012

.field public static final AR_RENDERING_TEXTURE_ROTATION_PORTRAIT_UPSIDEDOWN:I = 0x10005013

.field public static final AR_VIDEOTEXTURE_ROTATION_UNKNOWN:I = 0x10005010

.field private static final MODULENAME:Ljava/lang/String; = "SystemTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMinimumApiLevel(I)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native getActivityFromNative()Landroid/app/Activity;
.end method

.method public static getActivityOrientation(Landroid/app/Activity;)I
    .locals 4
    .parameter

    .prologue
    const v1, 0x10005010

    .line 163
    if-nez p0, :cond_0

    .line 203
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 170
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 173
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 185
    :goto_1
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_2
    move v1, v0

    .line 203
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_1

    .line 189
    :pswitch_0
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    const v0, 0x10005012

    goto :goto_2

    :cond_3
    const v0, 0x10005013

    goto :goto_2

    .line 193
    :pswitch_1
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_4
    const v0, 0x10005014

    goto :goto_2

    :cond_5
    const v0, 0x10005015

    goto :goto_2

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getActivitySize(Landroid/app/Activity;)[I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 263
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 264
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 266
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 270
    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_0
.end method

.method public static getDeviceOrientation(Landroid/app/Activity;)I
    .locals 3
    .parameter

    .prologue
    const v1, 0x10005010

    .line 129
    if-nez p0, :cond_0

    .line 155
    :goto_0
    return v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 136
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 139
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 149
    :goto_1
    if-nez v0, :cond_2

    const v0, 0x10005012

    :goto_2
    move v1, v0

    .line 155
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_1

    .line 149
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const v0, 0x10005014

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const v0, 0x10005013

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const v0, 0x10005015

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static getDisplayDpi(Landroid/app/Activity;)[F
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 281
    if-nez p0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 288
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 300
    :goto_1
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 301
    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 303
    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    cmpl-float v3, v1, v4

    if-lez v3, :cond_0

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 306
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 307
    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1
.end method

.method public static getDisplaySize(Landroid/app/Activity;)[I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 333
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 334
    iget v1, v2, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v1, v2, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    .line 336
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 341
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_2

    .line 343
    const/4 v3, 0x0

    iget v4, v2, Landroid/graphics/Point;->y:I

    aput v4, v1, v3

    .line 344
    const/4 v3, 0x1

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v1, v3

    :goto_1
    move-object v0, v1

    .line 352
    goto :goto_0

    .line 348
    :cond_2
    const/4 v3, 0x0

    iget v4, v2, Landroid/graphics/Point;->x:I

    aput v4, v1, v3

    .line 349
    const/4 v3, 0x1

    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 356
    :catch_0
    move-exception v1

    .line 358
    const-string v1, "SystemTools"

    const-string v2, "Display.getRealSize is not supported on this platform"

    invoke-static {v1, v2}, Lcom/vuforia/ar/pl/DebugLog;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNativeLibraryPath(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x2f

    const/4 v1, 0x0

    .line 212
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-object v1

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    .line 225
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->checkMinimumApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 228
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 246
    goto :goto_0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/lib/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static native logSystemError(Ljava/lang/String;)V
.end method

.method public static varargs retrieveClassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 120
    :cond_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendKillSignal(I)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/vuforia/ar/pl/SystemTools$1;

    invoke-direct {v1, v0, p0}, Lcom/vuforia/ar/pl/SystemTools$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static native setSystemErrorCode(I)V
.end method
