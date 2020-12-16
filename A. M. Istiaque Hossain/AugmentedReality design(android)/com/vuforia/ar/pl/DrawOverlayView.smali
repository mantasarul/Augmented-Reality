.class public Lcom/vuforia/ar/pl/DrawOverlayView;
.super Landroid/view/View;
.source "DrawOverlayView.java"


# static fields
.field private static final MODULENAME:Ljava/lang/String; = "DrawOverlayView"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mLeft:D

.field private mScale:[F

.field private mSize:[I

.field private mTop:D

.field private metrics:Landroid/util/DisplayMetrics;

.field private overlayBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BII[F[I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 57
    int-to-double v2, p3

    iput-wide v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mLeft:D

    .line 58
    int-to-double v2, p4

    iput-wide v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mTop:D

    .line 59
    iput-object p5, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mScale:[F

    .line 60
    iput-object p6, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mSize:[I

    .line 64
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    move v0, v1

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mSize:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mSize:[I

    aget v4, v4, v5

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 67
    mul-int/lit8 v3, v0, 0x4

    aget-byte v4, p2, v0

    aput-byte v4, v2, v3

    .line 68
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p2, v0

    aput-byte v4, v2, v3

    .line 69
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v4, p2, v0

    aput-byte v4, v2, v3

    .line 70
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mSize:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mSize:[I

    aget v1, v1, v5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 79
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 81
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->metrics:Landroid/util/DisplayMetrics;

    .line 82
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/DrawOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vuforia/ar/pl/DrawOverlayView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 93
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mScale:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v0, v2

    .line 100
    iget-wide v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mTop:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 101
    iput-wide v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mTop:D

    .line 103
    :cond_1
    iget-wide v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mLeft:D

    iget-object v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mScale:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 104
    iget-wide v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mTop:D

    iget-object v1, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mScale:[F

    aget v4, v4, v5

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 106
    iget-object v2, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    iget-wide v4, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mLeft:D

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->mTop:D

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Lcom/vuforia/ar/pl/DrawOverlayView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public removeOverlay(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
