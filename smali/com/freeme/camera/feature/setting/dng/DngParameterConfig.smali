.class public Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;
.super Ljava/lang/Object;
.source "DngParameterConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/dng/IDngConfig;


# static fields
.field private static final MTK_CAMERA_COMMAND_ENABLE_DNG:I = 0x10000001

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mCaptureResultReady:Z

.field private mCharas:Landroid/hardware/camera2/CameraCharacteristics;

.field private mDngList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

.field private mIsDngOn:Z

.field private mIsTakePicture:Z

.field private mLastDngStatus:Z

.field private mPictureData:[B

.field private mRawDataReady:Z

.field private mRawSize:Landroid/util/Size;

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;-><init>(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCaptureResultReady:Z

    return p1
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->convertRawToDng()V

    return-void
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawDataReady:Z

    return p1
.end method

.method static synthetic access$702(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mPictureData:[B

    return-object p1
.end method

.method private convertRawToDng()V
    .locals 5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCaptureResultReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawDataReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getRawSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[convertRawToDng], get raw size error"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[convertRawToDng]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getRawSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDisplayOrientationUpdate()I

    move-result v0

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getDngOrientation(I)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mPictureData:[B

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawSize:Landroid/util/Size;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getDngDataFromCreator([BLandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawSize:Landroid/util/Size;

    invoke-interface {v1, v0, v2}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onSaveDngImage([BLandroid/util/Size;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->resetDngCaptureStatus()V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[convertRawToDng] not ready"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private resetDngCaptureStatus()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mCaptureResultReady:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mRawDataReady:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-interface {v1, v0}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] mIsDngOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsDngOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsDngOn:Z

    const v1, 0x10000001

    const/16 v2, 0x16

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;->sendCommand(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    invoke-virtual {p1, v1, v3, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;->sendCommand(III)V

    :goto_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsDngOn:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mLastDngStatus:Z

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyOverrideValue(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mLastDngStatus:Z

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsDngOn:Z

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[notifyOverrideValue]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_dng"

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onModeClosed()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->resetDngCaptureStatus()V

    return-void
.end method

.method public requestChangeOverrideValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    const-string v1, "key_dng"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsTakePicture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_dng"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDngStatus(ZZ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDngStatus], isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTakePicture :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsDngOn:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mIsTakePicture:Z

    return-void
.end method

.method public setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const-string v0, "dng-supported"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngValueUpdate(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->mDngList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngValueUpdate(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method
