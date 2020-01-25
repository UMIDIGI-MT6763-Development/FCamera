.class public Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "RestoreSettings.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mIsRestoreSettingsSupported:Z

.field private mIsThirdParty:Z

.field private mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mIsRestoreSettingsSupported:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mIsThirdParty:Z

    return-void
.end method

.method private restoreSettingsValue()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_touch_capture"

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_auto_exit"

    sget-object v2, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->DEFAULT_AUTO_EXIT:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_save_location"

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_save_sdcard"

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_restore_settings"

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_face_detection"

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_shutter_sound"

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_ai"

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_ai_tip"

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private restoreSettingsValue(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_volume_capture"

    const-string v2, "on"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_grid_line"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_zsd"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v4, "key_default_zsd"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_mirror_capture"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_water_capture"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_focus_sound"

    sget-object v2, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->DEFAULT_FOCUS_SOUND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v4, "key_default_picture_size"

    invoke-virtual {v2, v4, v5, p1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_video_quality"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v4, "key_default_video_quality"

    invoke-virtual {v2, v4, v5, p1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mIsRestoreSettingsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->setRestoreSettingsConfirmedListener(Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView$OnRestoreSettingsConfirmListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

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

    const-string v0, "key_restore_settings"

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

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mActivity:Landroid/app/Activity;

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

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mIsThirdParty:Z

    :cond_1
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public onRestoreSettingsConfirmed()V
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->restoreSettingsValue()V

    sget-object v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->frontStoreScope:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->restoreSettingsValue(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->backStoreScope:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->restoreSettingsValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->saveLevelIndex(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->refreshSettingView()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_restore_settings"

    const-string v3, "off"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v4}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mIsRestoreSettingsSupported:Z

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettings;->mSettingView:Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/freeme/camera/feature/setting/restoresettings/RestoreSettingsSettingView;->alertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
