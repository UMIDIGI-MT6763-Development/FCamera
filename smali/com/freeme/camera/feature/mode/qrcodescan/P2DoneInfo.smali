.class public Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;
.super Ljava/lang/Object;
.source "P2DoneInfo.java"


# static fields
.field private static final P2DONE_SUPPORT:[I

.field private static final P2_KEY_NOTIFICATION_RESULT:Ljava/lang/String; = "com.freeme.control.capture.next.ready"

.field private static final P2_KEY_NOTIFICATION_TRIGGER:Ljava/lang/String; = "com.freeme.control.capture.early.notification.trigger"

.field private static final P2_KEY_SUPPORT_MODES:Ljava/lang/String; = "com.freeme.control.capture.early.notification.support"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static mIsSupport:Z

.field private static mKeyP2NotificationRequest:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private static mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->P2DONE_SUPPORT:[I

    sput-boolean v2, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkP2DoneResult(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    sget-boolean v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    aget p0, p0, v1

    sget-object v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->P2DONE_SUPPORT:[I

    aget v0, v0, v1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static enableP2Done(Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 2

    sget-boolean v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mKeyP2NotificationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->P2DONE_SUPPORT:[I

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    return v0
.end method

.method public static setCameraCharacteristics(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->isSpeedUpSupport()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics], mIsSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-boolean p1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mIsSupport:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyP2NotificationRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    sput-object p1, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mKeyP2NotificationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyP2NotificationResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p0

    sput-object p0, Lcom/freeme/camera/feature/mode/qrcodescan/P2DoneInfo;->mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_2
    return-void
.end method
