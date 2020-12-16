.class public Lcom/vuforia/ar/pl/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;
    }
.end annotation


# static fields
.field private static final AR_PERMISSIONS_STATUS_DENIED:I = 0x2

.field private static final AR_PERMISSIONS_STATUS_FAILED:I = 0x0

.field private static final AR_PERMISSIONS_STATUS_GRANTED:I = 0x3

.field private static final AR_PERMISSIONS_STATUS_REQUESTED:I = 0x1

.field private static final MODULENAME:Ljava/lang/String; = "PermissionHandler"

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x64


# instance fields
.field private mIsPermissionsRequested:Z

.field private mPermissionsArrayToRequest:[Ljava/lang/String;

.field private mPermissionsStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z

    .line 43
    iput v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/vuforia/ar/pl/PermissionHandler;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vuforia/ar/pl/PermissionHandler;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vuforia/ar/pl/PermissionHandler;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsArrayToRequest:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vuforia/ar/pl/PermissionHandler;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/vuforia/ar/pl/PermissionHandler;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    return p1
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Activity;[Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 106
    :cond_0
    iget v1, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    .line 157
    :cond_1
    :goto_0
    return v1

    .line 109
    :cond_2
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 118
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_4

    .line 120
    aget-object v4, p2, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    aget-object v4, p2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iput v6, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    .line 133
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z

    if-nez v0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsArrayToRequest:[Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;

    invoke-direct {v0, p0}, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;-><init>(Lcom/vuforia/ar/pl/PermissionHandler;)V

    .line 143
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_6
    iget v1, p0, Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method
