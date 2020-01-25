.class public Lcom/freeme/camera/feature/setting/ContinuousShot;
.super Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.source "ContinuousShot.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_MODE_MTK_PRV:I = 0x1

.field private static final CAPTURE_MODE_CONTINUOUS:Ljava/lang/String; = "continuousshot"

.field private static final CAPTURE_MODE_NORMAL:Ljava/lang/String; = "normal"

.field private static final KEY_BURST_SHOT_NUM:Ljava/lang/String; = "burst-num"

.field private static final KEY_CAPTURE_MODE:Ljava/lang/String; = "cap-mode"

.field private static final KEY_CSHOT_INDICATOR:Ljava/lang/String; = "cshot-indicator"

.field private static final KEY_SUPPORTED_CAPTURE_MODE:Ljava/lang/String; = "cap-mode-values"

.field private static final MTK_CAMERA_COMMAND_CANCEL_CONTINUOUS_SHOT:I = 0x1000000d

.field private static final MTK_CAMERA_COMMAND_CONTINUOUS_SHOT_SPEED:I = 0x1000000e

.field private static final MTK_CAMERA_MODE:Ljava/lang/String; = "mtk-cam-mode"

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsContinuousShotSupport:Z

.field private mIsShutterCallbackReceived:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mState:Lcom/freeme/camera/feature/setting/CsState;

.field private final mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mStopLock:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShot$1;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShot$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShot$2;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ContinuousShot;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mStopLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/ContinuousShot;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsShutterCallbackReceived:Z

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/ContinuousShot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsShutterCallbackReceived:Z

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/ContinuousShot;)Lcom/freeme/camera/feature/setting/CsState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    return-object p0
.end method

.method private configureStartCaptureParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configureStartCaptureParameters] rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "cap-mode"

    const-string v2, "continuousshot"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "burst-num"

    iget v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->MAX_CAPTURE_NUMBER:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method

.method private configureStopCaptureParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const-string v0, "cap-mode"

    const-string v1, "normal"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "burst-num"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[split] substrings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configCommand],current state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v2, Lcom/freeme/camera/feature/setting/ContinuousShot$3;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[configCommand] start preview"

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreviewAsync()V

    goto :goto_1

    :pswitch_1
    const v1, 0x1000000e

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->getSuitableSpeed()I

    move-result v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;->sendCommand(III)V

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[configCommand] do capture"

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object v3, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1, v3}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    new-instance v1, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;

    invoke-direct {v1, p0, v4}, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShot;Lcom/freeme/camera/feature/setting/ContinuousShot$1;)V

    invoke-virtual {p1, v2, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v1, v4, v4, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1

    :goto_0
    const-string v2, "[configCommand] cancel continuous shot"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const v1, 0x1000000d

    invoke-virtual {p1, v1, v3, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;->sendCommand(III)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters],current state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "mtk-cam-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mtk-cam-mode"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot$3;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->configureStopCaptureParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->configureStartCaptureParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    return-object p0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/CsState;

    invoke-direct {p1}, Lcom/freeme/camera/feature/setting/CsState;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    return-void
.end method

.method protected onContinuousShotDone(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->onContinuousShotDone(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsShutterCallbackReceived:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_continuous_shot"

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotStopped()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotDone(I)V

    invoke-super {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->onModeClosed(Ljava/lang/String;)V

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

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] getValue() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentValue = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", supportValues  = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p1, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    return-void
.end method

.method protected requestChangeOverrideValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_continuous_shot"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    goto :goto_0

    :cond_0
    const-string v0, "cap-mode-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    :goto_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->initializeValue(Z)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOriginalParameters] Support CS: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "true"

    const-string v1, "cshot-indicator"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->disableIndicator()V

    :cond_3
    return-void
.end method

.method protected slowDownContinuousShot()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_continuous_shot"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected startContinuousShot()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mIsContinuousShotSupport:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startContinuousShot]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotStarted()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_continuous_shot"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected stopContinuousShot()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopContinuousShot], state is error,don\'t do anything"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShot;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stopContinuousShot] state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotStopped()V

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotDone(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->stopSound()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_STOPPED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_continuous_shot"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->unInit()V

    return-void
.end method
