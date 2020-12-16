.class public Lcom/vuforia/VirtualButton;
.super Ljava/lang/Object;
.source "VirtualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/VirtualButton$SENSITIVITY;
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
    iput-boolean p3, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/VirtualButton;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 38
    instance-of v1, p1, Lcom/vuforia/VirtualButton;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lcom/vuforia/VirtualButton;

    iget-wide v2, p1, Lcom/vuforia/VirtualButton;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method

.method public getArea()Lcom/vuforia/Area;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 48
    iget-wide v2, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getArea(JLcom/vuforia/VirtualButton;)J

    move-result-wide v2

    .line 49
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v1, Lcom/vuforia/Area;

    invoke-direct {v1, v2, v3, v6}, Lcom/vuforia/Area;-><init>(JZ)V

    .line 51
    invoke-virtual {v1}, Lcom/vuforia/Area;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v0, Lcom/vuforia/Rectangle;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/Rectangle;-><init>(JZ)V

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v0, Lcom/vuforia/RectangleInt;

    invoke-direct {v0, v2, v3, v6}, Lcom/vuforia/RectangleInt;-><init>(JZ)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getID()I
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getID(JLcom/vuforia/VirtualButton;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getName(JLcom/vuforia/VirtualButton;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_isEnabled(JLcom/vuforia/VirtualButton;)Z

    move-result v0

    return v0
.end method

.method public setArea(Lcom/vuforia/Area;)Z
    .locals 6
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Area;->getCPtr(Lcom/vuforia/Area;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setArea(JLcom/vuforia/VirtualButton;JLcom/vuforia/Area;)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setEnabled(JLcom/vuforia/VirtualButton;Z)Z

    move-result v0

    return v0
.end method

.method public setSensitivity(I)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setSensitivity(JLcom/vuforia/VirtualButton;I)Z

    move-result v0

    return v0
.end method
