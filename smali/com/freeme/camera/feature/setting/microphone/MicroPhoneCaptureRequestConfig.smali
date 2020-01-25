.class public Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;
.super Ljava/lang/Object;
.source "MicroPhoneCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MICROPHONE_OFF:Ljava/lang/String; = "off"

.field private static final MICROPHONE_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private updateSupportedValues()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public configRawSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public configSessionSurface(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    sget-object p1, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "setCameraCharacteristics"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->updateSupportedValues()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->updateValue(Ljava/lang/String;)V

    return-void
.end method
