.class public Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AboutCamera.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mIsAboutCameraSupported:Z

.field private mIsThirdParty:Z

.field private mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mIsAboutCameraSupported:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mIsThirdParty:Z

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mIsAboutCameraSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->setAboutCameraConfirmedListener(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_about_camera"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mIsThirdParty:Z

    :cond_1
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public onAboutCameraConfirmed()V
    .locals 0

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mIsAboutCameraSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCamera;->mSettingView:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
