.class public Lcom/mediatek/camera/portability/CameraEx;
.super Ljava/lang/Object;
.source "CameraEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/camera/portability/CameraEx$MessageInfo;,
        Lcom/mediatek/camera/portability/CameraEx$StereoDatasCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$StereoWarningCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$UncompressedImageCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$AsdCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$AutoRamaMoveCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$DngPictureCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$ContinuousShotCallbackImpl;,
        Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;
    }
.end annotation


# static fields
.field private static final API_21:I = 0x15

.field private static final API_22:I = 0x16

.field private static final API_28:I = 0x1c

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final MTK_CAMERA_COMMAND_CANCLE_CONTINUOUS_SHOT:I = 0x1000000d

.field private static final MTK_CAMERA_COMMAND_CONTINUOUS_SHOT_SPEED:I = 0x1000000e

.field private static final MTK_CAMERA_COMMAND_ENABLE_DNG:I = 0x10000001

.field private static final MTK_CAMERA_COMMAND_START_AUTORAMA:I = 0x10000009

.field private static final MTK_CAMERA_COMMAND_STOP_AUTORAMA:I = 0x1000000a

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x20

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_JPS:I = 0x11

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_CLEAR_IMAGE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHMAP:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHWRAPPER:I = 0x20

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_LDC:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_N3D:I = 0x19

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_IMAGE_UNCOMPRESSED:I = 0x17

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_WARNING:I = 0x14

.field private static sCameraGetPropertyMethod:Ljava/lang/reflect/Method;

.field private static sCameraSetPropertyMethod:Ljava/lang/reflect/Method;

.field private static sSetUncompressedImageCallbackMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mVendorDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Landroid/hardware/Camera;

    const-string v1, "setProperty"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/camera/portability/CameraEx;->sCameraSetPropertyMethod:Ljava/lang/reflect/Method;

    const-class v0, Landroid/hardware/Camera;

    const-string v1, "getProperty"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/camera/portability/CameraEx;->sCameraGetPropertyMethod:Ljava/lang/reflect/Method;

    const-class v0, Landroid/hardware/Camera;

    const-string v1, "setUncompressedImageCallback"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/Camera$PictureCallback;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/camera/portability/CameraEx;->sSetUncompressedImageCallbackMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/camera/portability/CameraEx;)Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/camera/portability/CameraEx;->mVendorDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    return-object p0
.end method

.method private enableRaw16(Landroid/hardware/Camera;Z)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "enableRaw16"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CamAp_CameraEx"

    const-string p2, "enableRaw16 not defined"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/mediatek/camera/portability/CameraEx;->sCameraGetPropertyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v0, v2}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[openLegacy] exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CamAp_CameraEx"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method private setDngCallback(Landroid/hardware/Camera;)V
    .locals 8

    :try_start_0
    const-string v0, "android.hardware.Camera$MetadataCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v5, Lcom/mediatek/camera/portability/CameraEx$1;

    invoke-direct {v5, p0}, Lcom/mediatek/camera/portability/CameraEx$1;-><init>(Lcom/mediatek/camera/portability/CameraEx;)V

    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Landroid/hardware/Camera;

    const-string v5, "setRaw16Callback"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v4

    const-class v0, Landroid/hardware/Camera$PictureCallback;

    aput-object v0, v7, v2

    invoke-static {v3, v5, v7}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "CamAp_CameraEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDngCallback: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    new-instance v1, Lcom/mediatek/camera/portability/CameraEx$DngPictureCallbackImpl;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/mediatek/camera/portability/CameraEx$DngPictureCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    aput-object v1, v3, v2

    invoke-static {p1, v0, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CamAp_CameraEx"

    const-string v0, "metadata not defined"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/mediatek/camera/portability/CameraEx;->sCameraSetPropertyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v0, v2}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public sendCommand(Landroid/hardware/Camera;III)V
    .locals 0

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->setContinuousShotSpeed(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelContinuousShot()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->stopAutoRama(I)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->startAutoRama(I)V

    goto :goto_1

    :sswitch_4
    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/camera/portability/CameraEx;->enableRaw16(Landroid/hardware/Camera;Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000001 -> :sswitch_4
        0x10000009 -> :sswitch_3
        0x1000000a -> :sswitch_2
        0x1000000d -> :sswitch_1
        0x1000000e -> :sswitch_0
    .end sparse-switch
.end method

.method public setVendorDataCallback(Landroid/hardware/Camera;ILcom/mediatek/camera/portability/CameraEx$VendorDataCallback;)V
    .locals 3

    iput-object p3, p0, Lcom/mediatek/camera/portability/CameraEx;->mVendorDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    const/4 p3, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V

    goto :goto_0

    :sswitch_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-le p2, v0, :cond_0

    sget-object p2, Lcom/mediatek/camera/portability/CameraEx;->sSetUncompressedImageCallbackMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lcom/mediatek/camera/portability/CameraEx$UncompressedImageCallbackImpl;

    invoke-direct {v2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$UncompressedImageCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/camera/portability/CameraEx;->setDngCallback(Landroid/hardware/Camera;)V

    goto :goto_0

    :sswitch_3
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$StereoWarningCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$StereoWarningCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setStereoCameraWarningCallback(Landroid/hardware/Camera$StereoCameraWarningCallback;)V

    goto :goto_0

    :sswitch_4
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$StereoDatasCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$StereoDatasCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setStereoCameraDataCallback(Landroid/hardware/Camera$StereoCameraDataCallback;)V

    goto :goto_0

    :sswitch_5
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$ContinuousShotCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$ContinuousShotCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setContinuousShotCallback(Landroid/hardware/Camera$ContinuousShotCallback;)V

    goto :goto_0

    :sswitch_6
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$AsdCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$AsdCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAsdCallback(Landroid/hardware/Camera$AsdCallback;)V

    goto :goto_0

    :sswitch_7
    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoRamaCallback(Landroid/hardware/Camera$AutoRamaCallback;)V

    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$AutoRamaMoveCallbackImpl;

    invoke-direct {p2, p0, p3}, Lcom/mediatek/camera/portability/CameraEx$AutoRamaMoveCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoRamaMoveCallback(Landroid/hardware/Camera$AutoRamaMoveCallback;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x6 -> :sswitch_5
        0x11 -> :sswitch_4
        0x14 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
