.class public abstract Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;
.super Landroid/os/Binder;
.source "ICalibrationProfileService.java"

# interfaces
.implements Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

.field static final TRANSACTION_clearProfile:I = 0xc

.field static final TRANSACTION_getActiveProfile:I = 0x4

.field static final TRANSACTION_getCameraToEyePose:I = 0x8

.field static final TRANSACTION_getEyeProjection:I = 0x9

.field static final TRANSACTION_getMaxProfileCount:I = 0x1

.field static final TRANSACTION_getProfileName:I = 0x6

.field static final TRANSACTION_getUsedProfileCount:I = 0x2

.field static final TRANSACTION_isProfileUsed:I = 0x3

.field static final TRANSACTION_setActiveProfile:I = 0x5

.field static final TRANSACTION_setCameraToEyePose:I = 0xa

.field static final TRANSACTION_setEyeProjection:I = 0xb

.field static final TRANSACTION_setProfileName:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;
    .locals 2
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getMaxProfileCount()I

    move-result v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getUsedProfileCount()I

    move-result v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    invoke-virtual {p0, v2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->isProfileUsed(I)Z

    move-result v2

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getActiveProfile()I

    move-result v0

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    invoke-virtual {p0, v2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->setActiveProfile(I)Z

    move-result v2

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    :sswitch_6
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :sswitch_7
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->setProfileName(ILjava/lang/String;)Z

    move-result v2

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    :sswitch_8
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    invoke-virtual {p0, v0, v2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getCameraToEyePose(II)[F

    move-result-object v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 130
    :sswitch_9
    const-string v0, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    invoke-virtual {p0, v0, v2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->getEyeProjection(II)[F

    move-result-object v0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 142
    :sswitch_a
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 149
    invoke-virtual {p0, v2, v3, v4}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->setCameraToEyePose(II[F)Z

    move-result v2

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    :sswitch_b
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 163
    invoke-virtual {p0, v2, v3, v4}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->setEyeProjection(II[F)Z

    move-result v2

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    :sswitch_c
    const-string v2, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    invoke-virtual {p0, v2}, Lcom/vuforia/eyewear/Calibration/service/ICalibrationProfileService$Stub;->clearProfile(I)Z

    move-result v2

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
