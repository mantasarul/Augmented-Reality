.class public Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;
.super Landroid/app/Fragment;
.source "PermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ar/pl/PermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionsRequestFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vuforia/ar/pl/PermissionHandler;


# direct methods
.method public constructor <init>(Lcom/vuforia/ar/pl/PermissionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private removeSelf()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 68
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 69
    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 74
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 79
    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 81
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    #setter for: Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I
    invoke-static {v0, v3}, Lcom/vuforia/ar/pl/PermissionHandler;->access$202(Lcom/vuforia/ar/pl/PermissionHandler;I)I

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    #getter for: Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I
    invoke-static {v0}, Lcom/vuforia/ar/pl/PermissionHandler;->access$200(Lcom/vuforia/ar/pl/PermissionHandler;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 88
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    const/4 v1, 0x3

    #setter for: Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsStatus:I
    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/PermissionHandler;->access$202(Lcom/vuforia/ar/pl/PermissionHandler;I)I

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->removeSelf()V

    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    #getter for: Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z
    invoke-static {v0}, Lcom/vuforia/ar/pl/PermissionHandler;->access$000(Lcom/vuforia/ar/pl/PermissionHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    #getter for: Lcom/vuforia/ar/pl/PermissionHandler;->mPermissionsArrayToRequest:[Ljava/lang/String;
    invoke-static {v0}, Lcom/vuforia/ar/pl/PermissionHandler;->access$100(Lcom/vuforia/ar/pl/PermissionHandler;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lcom/vuforia/ar/pl/PermissionHandler$PermissionsRequestFragment;->this$0:Lcom/vuforia/ar/pl/PermissionHandler;

    const/4 v1, 0x1

    #setter for: Lcom/vuforia/ar/pl/PermissionHandler;->mIsPermissionsRequested:Z
    invoke-static {v0, v1}, Lcom/vuforia/ar/pl/PermissionHandler;->access$002(Lcom/vuforia/ar/pl/PermissionHandler;Z)Z

    .line 61
    :cond_0
    return-void
.end method
