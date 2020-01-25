.class public abstract Lcom/freeme/camera/common/mode/CameraModeBase;
.super Ljava/lang/Object;
.source "CameraModeBase.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/ICameraMode;
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
.implements Lcom/freeme/camera/common/app/IApp$BackPressedListener;
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field protected static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final CAMERA_FACING_BACK:Ljava/lang/String; = "back"

.field private static final CAMERA_FACING_FRONT:Ljava/lang/String; = "front"

.field private static final DEFAULT_VOLUME_CAPTURE:Ljava/lang/String; = "on"

.field protected static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final KEY_AUTO_EXIT:Ljava/lang/String; = "key_auto_exit"

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "key_camera_id"

.field protected static final KEY_CAMERA_SWITCHER:Ljava/lang/String; = "key_camera_switcher"

.field public static final KEY_MIRROR_CAPTURE:Ljava/lang/String; = "key_mirror_capture"

.field private static final KEY_SAVE_SDCARD:Ljava/lang/String; = "key_save_sdcard"

.field private static final KEY_VOLUME_CAPTURE:Ljava/lang/String; = "key_volume_capture"

.field public static final KEY_WATER_CAPTURE:Ljava/lang/String; = "key_water_capture"

.field private static final LOWEST_PRIORITY:I = -0x1

.field private static final MSG_MODE_ON_SHUTTER_BUTTON_CLICK:I = 0x0

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field protected mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mCameraId:Ljava/lang/String;

.field protected mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

.field protected mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field protected mIApp:Lcom/freeme/camera/common/app/IApp;

.field protected mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private volatile mModeDeviceStatus:Ljava/lang/String;

.field protected mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

.field protected mNeedCloseCameraIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

.field public mPrevMirrorCapture:Ljava/lang/String;

.field private mPrevVolumeCapture:Ljava/lang/String;

.field public mPrevWaterCapture:Ljava/lang/String;

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeDeviceStatus:Ljava/lang/String;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevVolumeCapture:Ljava/lang/String;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevMirrorCapture:Ljava/lang/String;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevWaterCapture:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/mode/CameraModeBase;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method private isOrientationPortrait()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTeleDevice()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isTeleDevice] null mDataStore!"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "key_camera_switcher"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isTeleDevice] cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v4, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getBitmap()I

    move-result v4

    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-ge v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x28

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v1, 0x28

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    mul-int/lit8 v6, v0, 0x5

    sub-int v6, v1, v6

    mul-int/lit8 v7, v0, 0xf

    invoke-direct {v4, v0, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v5, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2
.end method

.method protected doShutterButtonClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->updateModeDefinedCameraApi()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method protected getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    if-eqz p1, :cond_1

    const-string v1, "back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "front"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "1"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "0"

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getDeviceUsage(Lcom/freeme/camera/common/relation/DataStore;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .locals 3
    .param p1    # Lcom/freeme/camera/common/relation/DataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_camera_switcher"

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->updateModeDefinedCameraApi()V

    new-instance p1, Lcom/freeme/camera/common/mode/DeviceUsage;

    const-string v0, "normal"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p1, v0, v1, p2}, Lcom/freeme/camera/common/mode/DeviceUsage;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected getModeDeviceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeDeviceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getModeKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance p3, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->updateModeDefinedCameraApi()V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p3, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    const-string p3, "unknown"

    invoke-virtual {p0, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    new-instance p2, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;-><init>(Lcom/freeme/camera/common/mode/CameraModeBase;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    const p2, 0x7fffffff

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/app/IApp;->registerBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;I)V

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    return-void
.end method

.method protected isFreemeIko()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_freeme_iko:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_freeme_iko:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModeIdle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSecureIntent(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "secure_camera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

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

.method protected needCloseCameraSync()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/DeviceUsage;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mNextModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "stereo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "vsdof"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v1

    iget-object v4, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mNextModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-virtual {v4}, Lcom/freeme/camera/common/mode/DeviceUsage;->getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->isTeleDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_volume_capture"

    const-string v1, "on"

    iget-object v2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/CameraModeBase;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevVolumeCapture:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_volume_capture"

    const-string v1, "on"

    iget-object v2, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevVolumeCapture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 v1, 0x67

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->isOrientationPortrait()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mPrevVolumeCapture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 p2, 0x68

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->triggerShutterButtonClick(I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonClick] UI thread"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->sendEmptyMessage(I)Z

    return v2
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUserInteraction()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->enableKeepScreenOn(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mNextModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/mode/DeviceUsage;->getNeedClosedCameraIds(Lcom/freeme/camera/common/mode/DeviceUsage;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    return-void
.end method

.method public restoreDefaultsForBeautyFace(Z)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 4
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_save_sdcard"

    const-string v2, "off"

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/freeme/camera/common/utils/StorageUtil;->setSaveSDCard(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/freeme/camera/common/utils/StorageUtil;->setSaveSDCard(Z)V

    :goto_0
    return-void
.end method

.method public setPluginVisibility(Z)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/app/IApp;->unRegisterBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    return-void
.end method

.method protected updateModeDefinedCameraApi()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    :cond_0
    return-void
.end method

.method protected updateModeDeviceState(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mModeDeviceStatus:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDeviceStateToSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/CameraModeBase;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/common/mode/CameraModeBase$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/freeme/camera/common/mode/CameraModeBase$1;-><init>(Lcom/freeme/camera/common/mode/CameraModeBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waterMarkData([B)[B
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method
