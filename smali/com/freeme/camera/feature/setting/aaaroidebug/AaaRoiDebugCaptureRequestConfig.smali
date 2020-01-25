.class public Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;
.super Ljava/lang/Object;
.source "AaaRoiDebugCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;
    }
.end annotation


# static fields
.field private static final DEBUG_KEY_AE_RANGE_RESULT:Ljava/lang/String; = "com.freeme.3afeature.aeroi"

.field private static final DEBUG_KEY_AF_RANGE_RESULT:Ljava/lang/String; = "com.freeme.3afeature.afroi"

.field private static final DEBUG_KEY_AWB_RANGE_RESULT:Ljava/lang/String; = "com.freeme.3afeature.awbroi"

.field private static final LOG_ROIS_PROP:Ljava/lang/String; = "vendor.mtk.camera.app.3a.debug.log"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sIsLogRois:Z


# instance fields
.field private mAeRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAfRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAwbRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDebugInfoListener:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "vendor.mtk.camera.app.3a.debug.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->sIsLogRois:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;-><init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAeRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAfRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAwbRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[I)[Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->covertRoiToRectArray([I)[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->sIsLogRois:Z

    return v0
.end method

.method static synthetic access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->covertRectArrayToString([Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mDebugInfoListener:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;

    return-object p0
.end method

.method private covertRectArrayToString([Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ""

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const-string p1, "null"

    return-object p1
.end method

.method private covertRoiToRectArray([I)[Landroid/graphics/Rect;
    .locals 8

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget v0, p1, v1

    new-array v1, v0, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0x2

    aget v5, p1, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, p1, v6

    add-int/lit8 v7, v4, 0x2

    aget v7, p1, v7

    add-int/lit8 v4, v4, 0x3

    aget v4, p1, v4

    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "com.freeme.3afeature.aeroi"

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAeRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_0
    const-string v2, "com.freeme.3afeature.afroi"

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAfRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_1
    const-string v2, "com.freeme.3afeature.awbroi"

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAwbRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics] mAeRangeResultKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAeRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAfRangeResultKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAfRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAwbRangeResultKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mAwbRangeResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugInfoListener(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->mDebugInfoListener:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;

    return-void
.end method
