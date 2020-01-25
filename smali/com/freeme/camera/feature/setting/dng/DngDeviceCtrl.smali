.class public Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;
.super Ljava/lang/Object;
.source "DngDeviceCtrl.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

.field private mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

.field private mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

.field private mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureRequestConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    return-object p1
.end method

.method public getParametersConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mParameterConfig:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    return-object p1
.end method

.method public notifyOverrideValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig;->notifyOverrideValue(Z)V

    :cond_0
    return-void
.end method

.method public onModeClosed()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/dng/IDngConfig;->onModeClosed()V

    :cond_0
    return-void
.end method

.method public requestChangeOverrideValues()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/dng/IDngConfig;->requestChangeOverrideValues()V

    return-void
.end method

.method public setDngStatus(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngConfig:Lcom/freeme/camera/feature/setting/dng/IDngConfig;

    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/feature/setting/dng/IDngConfig;->setDngStatus(ZZ)V

    :cond_0
    return-void
.end method

.method public setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->mDngValueUpdateListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    return-void
.end method
