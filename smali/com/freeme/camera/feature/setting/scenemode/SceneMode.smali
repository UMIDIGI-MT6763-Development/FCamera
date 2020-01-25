.class public Lcom/freeme/camera/feature/setting/scenemode/SceneMode;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "SceneMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView$OnValueChangeListener;


# static fields
.field private static final INDICATOR_DELAY_TIME:I = 0xbb8

.field private static final SCENE_HDR_DETECTION:Ljava/lang/String; = "hdr-detection"

.field private static final SCENE_MODE_KEY:Ljava/lang/String; = "key_scene_mode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field public static final VALUE_OF_AUTO_SCENE_DETECTION:Ljava/lang/String; = "auto-scene-detection"


# instance fields
.field private mDetectedScene:Ljava/lang/String;

.field private mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

.field private mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView$OnValueChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addViewEntry], mSettingView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->getView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->getViewPriority()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;-><init>(Landroid/app/Activity;Lcom/freeme/camera/feature/setting/scenemode/SceneMode;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_scene_mode"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {p1}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "hint_text_background"

    const-string p3, "drawable"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p2, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object p2, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_AUTO_HIDE:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    const/16 p2, 0xbb8

    iput p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mDelayTime:I

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0056

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initializeValue(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->setSupportedPlatformValues(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "hdr"

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onSceneDetected(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSceneDetected], detect scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", last detected scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "hdr-detection"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "hdr-detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "hdr-detection"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "hdr-detection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    monitor-enter p0

    :try_start_0
    const-string v2, "auto-scene-detection"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    invoke-virtual {v2, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->updateIndicator(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSceneIndicator:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "auto-scene-detection"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$1;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDetectedScene:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->setValue(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$2;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->updateIndicator(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues], headerKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", supportValues:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refreshViewEntry], entry values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->updateIndicator(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeViewEntry], mSettingView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mSettingView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->mIndicatorView:Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeIndicatorView;->getView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
