.class public Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;
.super Ljava/lang/Object;
.source "AntiFlickerCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "auto"

.field private static final HZ_50_VALUE:Ljava/lang/String; = "50hz"

.field private static final HZ_60_VALUE:Ljava/lang/String; = "60hz"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

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

    invoke-static {}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

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

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-static {}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    sget-object v1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraAntibandingDefault:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraAntibandingDefault:Ljava/lang/String;

    :cond_1
    const-string v1, "50hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_50:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "60hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_60:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->convertEnumToString([I)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_50:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v3, "50hz"

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_60:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v1, "60hz"

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    const-string v1, "auto"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
