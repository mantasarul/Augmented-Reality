.class public final Lcom/vuforia/TrackableResult$STATUS_INFO;
.super Ljava/lang/Object;
.source "TrackableResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/TrackableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STATUS_INFO"
.end annotation


# static fields
.field public static final EXCESSIVE_MOTION:I = 0x3

.field public static final INITIALIZING:I = 0x2

.field public static final INSUFFICIENT_FEATURES:I = 0x4

.field public static final NORMAL:I = 0x0

.field public static final UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
