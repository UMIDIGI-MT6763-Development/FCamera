.class public Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;
.super Ljava/lang/Object;
.source "FaceDeviceCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;,
        Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

.field private mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

.field private mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

.field private mFaceOverrideState:Ljava/lang/String;

.field private mFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

.field private mIsFaceDetectionSupported:Z

.field private mIsPreviewStarted:Z

.field private mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceOverrideState:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mIsFaceDetectionSupported:Z

    return p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mIsFaceDetectionSupported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceOverrideState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mIsPreviewStarted:Z

    return p0
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method


# virtual methods
.method public getCaptureRequestConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->setFaceMonitor(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mIsPreviewStarted:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    return-object p1
.end method

.method public getParametersConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->setFaceMonitor(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    return-object p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isFaceDetectionStatusChanged(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceOverrideState:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onPreviewStatus(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStatus] isPreviewStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mIsPreviewStarted:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;->resetFaceDetectionState()V

    :cond_0
    return-void
.end method

.method public setDetectedFaceUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;->setFaceDetectionUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V

    :cond_0
    return-void
.end method

.method public setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    return-void
.end method

.method public updateFaceDetectionStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceOverrideState:Ljava/lang/String;

    return-void
.end method

.method public updateImageOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->mFaceConfig:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;->updateImageOrientation()V

    :cond_0
    return-void
.end method
