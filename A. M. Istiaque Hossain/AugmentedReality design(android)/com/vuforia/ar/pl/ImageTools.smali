.class public Lcom/vuforia/ar/pl/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# static fields
.field private static final CAMERA_IMAGE_FORMAT_LUM:I = 0x10001101

.field private static final CAMERA_IMAGE_FORMAT_NV12:I = 0x10001107

.field private static final CAMERA_IMAGE_FORMAT_NV21:I = 0x10001109

.field private static final CAMERA_IMAGE_FORMAT_RGB565:I = 0x10001102

.field private static final MODULENAME:Ljava/lang/String; = "ImageTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeImage([BIIIII)[B
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const v0, 0x10001109

    if-ne p3, v0, :cond_2

    .line 68
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, p5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_2
    const v0, 0x10001101

    if-ne p3, v0, :cond_5

    .line 81
    mul-int v2, p1, p2

    .line 82
    new-array v0, v2, [I

    .line 83
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 84
    aget-byte v3, p0, v1

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_3
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, p5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
