.class public abstract Lcom/freeme/camera/common/setting/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/setting/SettingBase$Overrides;,
        Lcom/freeme/camera/common/setting/SettingBase$OverridesList;
    }
.end annotation


# static fields
.field protected static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field protected static final CAMERA_VIDEOSIZE_LARGE:Ljava/lang/String; = "large"

.field protected static final CAMERA_VIDEOSIZE_MEDIUM:Ljava/lang/String; = "medium"

.field protected static final CAMERA_VIDEOSIZE_SMALL:Ljava/lang/String; = "small"

.field protected static final DEFAULT_AICAMERA:Ljava/lang/String; = "off"

.field protected static final DEFAULT_AICAMERA_TIP_SHOW:Ljava/lang/String; = "on"

.field protected static final DEFAULT_ANTI_FLICKER:Ljava/lang/String; = "auto"

.field protected static DEFAULT_AUTO_EXIT:Ljava/lang/String; = "on"

.field protected static final DEFAULT_FACE_DETECTION:Ljava/lang/String; = "on"

.field protected static DEFAULT_FOCUS_SOUND:Ljava/lang/String; = "off"

.field protected static final DEFAULT_GRID_LINE:Ljava/lang/String; = "off"

.field protected static final DEFAULT_MIRROR_CAPTURE:Ljava/lang/String; = "off"

.field protected static final DEFAULT_SAVE_LOCATION:Ljava/lang/String; = "off"

.field protected static final DEFAULT_SAVE_SDCARD:Ljava/lang/String; = "off"

.field protected static final DEFAULT_SHUTTER_SOUND:Ljava/lang/String; = "on"

.field protected static final DEFAULT_TOUCH_CAPTURE:Ljava/lang/String; = "off"

.field protected static final DEFAULT_VOLUME_CAPTURE:Ljava/lang/String; = "on"

.field protected static final DEFAULT_WATER_CAPTURE:Ljava/lang/String; = "off"

.field protected static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field protected static final GLOBAL_SCOPE:Ljava/lang/String; = "_global_scope"

.field protected static final KEY_ABOUT_CAMERA:Ljava/lang/String; = "key_about_camera"

.field protected static final KEY_AICAMERA:Ljava/lang/String; = "key_camera_ai"

.field protected static final KEY_AICAMERA_TIP_SHOW:Ljava/lang/String; = "key_camera_ai_tip"

.field protected static final KEY_ANTI_FLICKER:Ljava/lang/String; = "key_anti_flicker"

.field protected static final KEY_AUTO_EXIT:Ljava/lang/String; = "key_auto_exit"

.field protected static final KEY_DEFAULT_KEY_ZSD:Ljava/lang/String; = "key_default_zsd"

.field protected static final KEY_DEFAULT_PICTURE_SIZE:Ljava/lang/String; = "key_default_picture_size"

.field protected static final KEY_DEFAULT_VIDEO_QUALITY:Ljava/lang/String; = "key_default_video_quality"

.field protected static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"

.field protected static final KEY_FOCUS_SOUND:Ljava/lang/String; = "key_focus_sound"

.field protected static final KEY_GRID_LINE:Ljava/lang/String; = "key_grid_line"

.field protected static final KEY_MIRROR_CAPTURE:Ljava/lang/String; = "key_mirror_capture"

.field protected static final KEY_NOISE_EIS:Ljava/lang/String; = "key_eis"

.field protected static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field protected static final KEY_PICTURE_SIZE_4_3:Ljava/lang/String; = "key_picture_size_4_3"

.field protected static final KEY_PICTURE_SIZE_FOR_SLR:Ljava/lang/String; = "key_picture_size_for_slr"

.field protected static final KEY_PICTURE_SIZE_FULLSCREEN:Ljava/lang/String; = "key_picture_size_fullscreen"

.field protected static final KEY_RESTORE_SETTINGS:Ljava/lang/String; = "key_restore_settings"

.field protected static final KEY_SAVE_LOCATION:Ljava/lang/String; = "key_save_location"

.field protected static final KEY_SAVE_SDCARD:Ljava/lang/String; = "key_save_sdcard"

.field protected static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "key_shutter_sound"

.field protected static final KEY_TOUCH_CAPTURE:Ljava/lang/String; = "key_touch_capture"

.field protected static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field protected static final KEY_VOLUME_CAPTURE:Ljava/lang/String; = "key_volume_capture"

.field protected static final KEY_WATER_CAPTURE:Ljava/lang/String; = "key_water_capture"

.field protected static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field protected static final MICRO_LEN_ID:Ljava/lang/String; = "4"

.field protected static final PICTURESIZE_13_6:Ljava/lang/String; = "13x6"

.field protected static final PICTURESIZE_16_9:Ljava/lang/String; = "16x9"

.field protected static final PICTURESIZE_18_9:Ljava/lang/String; = "18x9"

.field protected static final PICTURESIZE_19_9:Ljava/lang/String; = "19x9"

.field protected static final PICTURESIZE_4_3:Ljava/lang/String; = "4x3"

.field protected static final PREVIEWSIZE_4_3:Ljava/lang/String; = "4x3"

.field protected static final VALUE_OFF:Ljava/lang/String; = "off"

.field protected static final VALUE_ON:Ljava/lang/String; = "on"

.field protected static final WIDE_ANGLE_ID:Ljava/lang/String; = "3"

.field protected static backStoreScope:Ljava/lang/String; = "_preferences_0"

.field protected static frontStoreScope:Ljava/lang/String; = "_preferences_1"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mApp:Lcom/freeme/camera/common/app/IApp;

.field protected mAppUi:Lcom/freeme/camera/common/IAppUi;

.field protected mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field protected mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

.field protected mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

.field protected mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field protected mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field protected mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

.field protected mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mSupportedEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPlatformValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;

.field private mValueInDataStore:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;-><init>(Lcom/freeme/camera/common/setting/SettingBase;Lcom/freeme/camera/common/setting/SettingBase$1;)V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    return-void
.end method

.method private restoreValue()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private switchToOverridesValue(Lcom/freeme/camera/common/setting/SettingBase$Overrides;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;->restoreValue()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iget-object v1, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getEntryValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSupportedPlatformValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iput-object p3, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mActivity:Landroid/app/Activity;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    invoke-virtual {p0}, Lcom/freeme/camera/common/setting/SettingBase;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->access$100(Lcom/freeme/camera/common/setting/SettingBase$OverridesList;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->getFirst()Lcom/freeme/camera/common/setting/SettingBase$Overrides;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->switchToOverridesValue(Lcom/freeme/camera/common/setting/SettingBase$Overrides;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/setting/SettingBase$Overrides;-><init>(Lcom/freeme/camera/common/setting/SettingBase;Lcom/freeme/camera/common/setting/SettingBase$1;)V

    iput-object p1, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    iput-object p1, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object p3, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_3
    iput-object p2, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object p1, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->add(Lcom/freeme/camera/common/setting/SettingBase$Overrides;)V

    iget-object p1, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p2, v1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->get(I)Lcom/freeme/camera/common/setting/SettingBase$Overrides;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p1, p1, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    invoke-virtual {p0}, Lcom/freeme/camera/common/setting/SettingBase;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public refreshViewEntry()V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeOverride(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mOverridesList:Lcom/freeme/camera/common/setting/SettingBase$OverridesList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeViewEntry()V
    .locals 0

    return-void
.end method

.method public declared-synchronized setEntryValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method public declared-synchronized setSupportedEntryValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSupportedPlatformValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mValue:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/common/setting/SettingBase;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
