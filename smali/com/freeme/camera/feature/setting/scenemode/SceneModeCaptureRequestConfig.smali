.class public Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;
.super Ljava/lang/Object;
.source "SceneModeCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;,
        Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;
    }
.end annotation


# static fields
.field private static final ASD_AVAILABLE_MODES_KEY_NAME:Ljava/lang/String; = "com.freeme.facefeature.availableasdmodes"

.field private static final ASD_REQUEST_MODE_KEY_NAME:Ljava/lang/String; = "com.freeme.facefeature.asdmode"

.field private static final ASD_RESULT_MODE_KEY_NAME:Ljava/lang/String; = "com.freeme.facefeature.asdresult"

.field private static final MSG_ON_COMPLETED_CALLBACK:I = 0x0

.field private static final MTK_FACE_FEATURE_ASD_MODE_FULL:I = 0x2

.field private static final MTK_FACE_FEATURE_ASD_MODE_OFF:I = 0x0

.field private static final MTK_FACE_FEATURE_ASD_MODE_SIMPLE:I = 0x1

.field private static final OFF_VALUE:Ljava/lang/String; = "off"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAsdAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAsdRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAsdResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mContext:Landroid/content/Context;

.field private mDetectedSceneMode:Ljava/lang/String;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mMainHandler:Landroid/os/Handler;

.field private mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/freeme/camera/feature/setting/scenemode/SceneMode;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    new-instance p2, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->convertEnumToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    return-object p0
.end method

.method private convertEnumToString(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
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

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

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

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getValue()I

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
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest], scene mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDetectedSceneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "auto-scene-detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->HDR:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->BACKLIGHT_PORTRAIT:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDetectedSceneMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Special detected scene mode, actually set is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    sget-object v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$ModeEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_1
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
    .locals 2

    const-string v0, "auto-scene-detection"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->convertEnumToString([I)Ljava/util/List;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAsdAvailableModes()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "available asd modes key isn\'t existed"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v0, v3

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAsdRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_3
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v2, :cond_4

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "asd request key isn\'t existed"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v0, v3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAsdResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mAsdResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v1, :cond_6

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "asd result key isn\'t existed"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v0, v3

    :cond_6
    if-eqz v0, :cond_7

    const-string v0, "auto-scene-detection"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    const-string v1, "off"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
