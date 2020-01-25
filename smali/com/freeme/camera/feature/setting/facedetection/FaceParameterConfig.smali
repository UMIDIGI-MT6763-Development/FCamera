.class public Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;
.super Ljava/lang/Object;
.source "FaceParameterConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

.field private mIsFaceDetectionStarted:Z

.field private mIsSupported:Z

.field private mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

.field private mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportValueList:Ljava/util/List;
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

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSupportValueList:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;[Landroid/hardware/Camera$Face;)[Lcom/freeme/camera/feature/setting/facedetection/Face;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->getFaces([Landroid/hardware/Camera$Face;)[Lcom/freeme/camera/feature/setting/facedetection/Face;

    move-result-object p0

    return-object p0
.end method

.method private getFaces([Landroid/hardware/Camera$Face;)[Lcom/freeme/camera/feature/setting/facedetection/Face;
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/facedetection/Face;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/freeme/camera/feature/setting/facedetection/Face;

    invoke-direct {v2}, Lcom/freeme/camera/feature/setting/facedetection/Face;-><init>()V

    aget-object v3, p1, v1

    iget v3, v3, Landroid/hardware/Camera$Face;->id:I

    iput v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->id:I

    aget-object v3, p1, v1

    iget v3, v3, Landroid/hardware/Camera$Face;->score:I

    iput v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->score:I

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iput-object v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->rect:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[getFaces] no faces"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->isNeedToStart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCommand] already started, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onUpdateImageOrientation()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCommand] start face detection, orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startFaceDetection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsFaceDetectionStarted:Z

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->isNeedToStop()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsFaceDetectionStarted:Z

    if-nez v0, :cond_3

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCommand] already stopped, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] stop face detection, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-interface {v1, v0, v0}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopFaceDetection()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsFaceDetectionStarted:Z

    :cond_4
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onUpdateImageOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] setRotation as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public resetFaceDetectionState()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resetFaceDetectionState]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsFaceDetectionStarted:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_face_detection"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setFaceDetectionUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    return-void
.end method

.method public setFaceMonitor(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    return-void
.end method

.method public setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsSupported:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsSupported:Z

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->setSupportedStatus(Z)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsSupported:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSupportValueList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSupportValueList:Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSupportValueList:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mIsSupported:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSupportValueList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onFaceSettingValueUpdate(ZLjava/util/List;)V

    return-void
.end method

.method public updateImageOrientation()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateImageOrientation]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_face_detection"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method
