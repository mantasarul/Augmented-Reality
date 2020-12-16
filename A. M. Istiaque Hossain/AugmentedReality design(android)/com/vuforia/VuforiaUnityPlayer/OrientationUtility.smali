.class public Lcom/vuforia/VuforiaUnityPlayer/OrientationUtility;
.super Ljava/lang/Object;
.source "OrientationUtility.java"


# static fields
.field static final SCREEN_ORIENTATION_LANDSCAPELEFT:I = 0x3

.field static final SCREEN_ORIENTATION_LANDSCAPERIGHT:I = 0x4

.field static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field static final SCREEN_ORIENTATION_PORTRAITUPSIDEDOWN:I = 0x2

.field static final SCREEN_ORIENTATION_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSurfaceOrientation(Landroid/app/Activity;)I
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 36
    if-nez p0, :cond_0

    .line 38
    const/4 v0, -0x1

    .line 72
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 42
    .local v1, config:Landroid/content/res/Configuration;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 45
    .local v2, display:Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v4, v7, :cond_2

    .line 47
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 54
    .local v3, displayRotation:I
    :goto_1
    const/4 v0, 0x0

    .line 56
    .local v0, activityOrientation:I
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_3

    :cond_1
    move v0, v5

    .line 61
    :goto_2
    goto :goto_0

    .line 51
    .end local v0           #activityOrientation:I
    .end local v3           #displayRotation:I
    :cond_2
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .restart local v3       #displayRotation:I
    goto :goto_1

    .line 60
    .restart local v0       #activityOrientation:I
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    .line 64
    :pswitch_1
    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_5

    :cond_4
    move v0, v6

    .line 65
    :goto_3
    goto :goto_0

    .line 64
    :cond_5
    const/4 v0, 0x4

    goto :goto_3

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
