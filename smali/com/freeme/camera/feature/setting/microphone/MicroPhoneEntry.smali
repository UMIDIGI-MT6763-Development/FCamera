.class public Lcom/freeme/camera/feature/setting/microphone/MicroPhoneEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "MicroPhoneEntry.java"


# instance fields
.field private mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneEntry;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneEntry;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneEntry;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
