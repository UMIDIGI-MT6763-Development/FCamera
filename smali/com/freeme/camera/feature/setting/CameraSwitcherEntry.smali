.class public Lcom/freeme/camera/feature/setting/CameraSwitcherEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "CameraSwitcherEntry.java"


# instance fields
.field private mCameraSwitcher:Lcom/freeme/camera/feature/setting/CameraSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcherEntry;->mCameraSwitcher:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcherEntry;->mCameraSwitcher:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcherEntry;->mCameraSwitcher:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/CameraSwitcherEntry;

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
