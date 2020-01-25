.class public Lcom/freeme/camera/feature/setting/autoexit/AutoExit;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AutoExit.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView$OnAutoExitClickListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsAutoExitSupported:Z

.field private mIsThirdParty:Z

.field private mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

.field private mSupportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsAutoExitSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsThirdParty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    return-void
.end method

.method private getExitValue()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_AUTO_EXIT_AP_DEFAULT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_AUTO_EXIT_AP_DEFAULT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->DEFAULT_AUTO_EXIT:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->DEFAULT_AUTO_EXIT:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->DEFAULT_AUTO_EXIT:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/app/IApp;->setAutoExitValue(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private initSettingValue()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsAutoExitSupported:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->setEntryValues(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getExitValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsAutoExitSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;->setAutoExitOnClickListener(Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView$OnAutoExitClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsThirdParty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_auto_exit"

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

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsThirdParty:Z

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->initSettingValue()V

    return-void
.end method

.method public onAutoExitClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZsdClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/app/IApp;->setAutoExitValue(Ljava/lang/String;)V

    const-string p1, "on"

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getExitValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    :cond_1
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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mIsAutoExitSupported:Z

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    if-eqz v0, :cond_1

    const-string v1, "on"

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getExitValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/autoexit/AutoExit;->mSettingView:Lcom/freeme/camera/feature/setting/autoexit/AutoExitSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
