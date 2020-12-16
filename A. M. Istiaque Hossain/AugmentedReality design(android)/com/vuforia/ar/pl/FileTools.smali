.class public Lcom/vuforia/ar/pl/FileTools;
.super Ljava/lang/Object;
.source "FileTools.java"


# static fields
.field private static final FILE_PATHTYPEINDEX_ABSOLUTE:I = -0x1

.field private static final FILE_PATHTYPEINDEX_ANDROID_ASSETS:I = 0x0

.field private static final FILE_PATHTYPEINDEX_ANDROID_DATALOCAL:I = 0x4

.field private static final FILE_PATHTYPEINDEX_ANDROID_MEDIASTORAGE:I = 0x3

.field private static final FILE_PATHTYPEINDEX_ANDROID_PRIVATEAPPCACHE:I = 0x2

.field private static final FILE_PATHTYPEINDEX_ANDROID_PRIVATEAPPSTORAGE:I = 0x1

.field private static final MODULENAME:Ljava/lang/String; = "FileTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsolutePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x6

    .line 57
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 118
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 63
    if-nez v1, :cond_1

    .line 65
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 73
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v1

    .line 85
    if-nez v1, :cond_4

    .line 87
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 93
    if-nez v1, :cond_5

    .line 95
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 107
    if-nez v1, :cond_6

    .line 109
    invoke-static {v2}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get_assetmanager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/vuforia/ar/pl/SystemTools;->getActivityFromNative()Landroid/app/Activity;

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vuforia/ar/pl/SystemTools;->setSystemErrorCode(I)V

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static mediastorage_isAvailable()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
