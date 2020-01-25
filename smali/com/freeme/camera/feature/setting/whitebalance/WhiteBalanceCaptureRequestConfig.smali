.class public Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;
.super Ljava/lang/Object;
.source "WhiteBalanceCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private convertEnumToString([I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget v4, p1, v3

    array-length v5, v0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private convertStringToEnum(Ljava/lang/String;)I
    .locals 8

    invoke-static {}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->convertEnumToString([I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    const-string v1, "auto"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
