.class public Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;
.super Lcom/freeme/camera/common/mode/video/VideoMode;
.source "SlowMotionMode.java"


# static fields
.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_PREVIEW:Ljava/lang/String; = "preview"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final VIDEO_FRAME_RATE:I = 0x1e

.field private static final mGestureListener:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mGestureListener:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/video/VideoMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviewedRestriction()Lcom/freeme/camera/common/relation/Relation;
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->getPreviewRelation()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "off"

    :cond_0
    const-string v2, "key_flash"

    const-string v3, "on,off"

    invoke-virtual {v0, v2, v1, v3}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_quality"

    invoke-virtual {v0, v2, v1, v1}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getRecordedRestriction(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/video/VideoMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    sget-object p2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mGestureListener:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/IAppUi;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    return-void
.end method

.method protected initCameraDevice(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 2

    new-instance p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-direct {p1, v0, v1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;-><init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mCameraDevice:Lcom/freeme/camera/common/mode/video/device/IDeviceController;

    return-void
.end method

.method protected modifyContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    return-object p1
.end method

.method protected modifyRecorderSpec(Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;Z)Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object p2

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput p2, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->captureRate:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    const/16 p2, 0x1e

    iput p2, p1, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->videoFrameRate:I

    return-object p1
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/video/VideoMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    return-void
.end method

.method public unInit()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/mode/video/VideoMode;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mGestureListener:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionGestureImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V

    return-void
.end method

.method protected updateModeDefinedCameraApi()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-void
.end method
