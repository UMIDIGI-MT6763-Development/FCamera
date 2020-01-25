.class public abstract Lcom/freeme/camera/common/loader/FeatureEntryBase;
.super Ljava/lang/Object;
.source "FeatureEntryBase.java"

# interfaces
.implements Lcom/freeme/camera/common/loader/IFeatureEntry;


# static fields
.field private static final DEFAULT_STAGE:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentModeKey:Ljava/lang/String;

.field protected mDefaultCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field protected mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/loader/FeatureEntryBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mContext:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStage()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected isCameraSecureIntent(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isThirdPartyIntent(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public setDeviceSpec(Lcom/freeme/camera/common/loader/DeviceSpec;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/loader/DeviceSpec;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDefaultCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mDefaultCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-void
.end method

.method public setParameters(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/loader/DeviceDescription;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public updateCurrentModeKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureEntryBase;->mCurrentModeKey:Ljava/lang/String;

    return-void
.end method

.method public updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .locals 0

    return-object p2
.end method
