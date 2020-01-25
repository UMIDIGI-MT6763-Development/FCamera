.class public Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;
.super Ljava/lang/Object;
.source "ZoomParameterConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;


# static fields
.field private static final RESET_VALUE:I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mBasicZoomRatio:I

.field private mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

.field private mDistanceRatio:D

.field private mIsSmoothZoomSupported:Z

.field private mIsUserInteraction:Z

.field private mIsZoomStopped:Z

.field private mIsZoomSupported:Z

.field private mLastZoomLevel:I

.field private mMaxZoom:I

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSyncSmoothState:Ljava/lang/Object;

.field private mZoomLevel:I

.field private final mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomStopped:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSyncSmoothState:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;-><init>(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSyncSmoothState:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomStopped:Z

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p0
.end method

.method private calculateBasicRatio()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mBasicZoomRatio:I

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mBasicZoomRatio:I

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[calculateBasicRatio] mBasicZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mBasicZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastZoomLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private calculateZoomLevel(D)I
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mBasicZoomRatio:I

    int-to-double v5, v0

    sub-int v0, v2, v4

    int-to-double v7, v0

    mul-double/2addr v7, p1

    add-double/2addr v5, v7

    double-to-int p1, v5

    if-gt p1, v4, :cond_0

    goto :goto_1

    :cond_0
    if-lt p1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_0
    if-ge p2, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v4, p2, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v0, :cond_2

    if-ge p1, v2, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move p2, v4

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private getZoomRatio()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isZoomValid()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:I

    if-gt v0, v1, :cond_0

    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->calculateZoomLevel(D)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reset(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsSmoothZoomSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->calculateZoomLevel(D)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSyncSmoothState:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startSmoothZoom(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomStopped:Z

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsUserInteraction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->getZoomRatio()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;->onZoomLevelUpdate(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] mZoomLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDistanceRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", cameraProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "off"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-interface {v2}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;->onGetOverrideValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->reset(Landroid/hardware/Camera$Parameters;)V

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->calculateZoomLevel(D)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:I

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsUserInteraction:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->getZoomRatio()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;->onZoomLevelUpdate(Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mZoomLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDistanceRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onScalePerformed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    return-void
.end method

.method public onScaleStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsUserInteraction:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mDistanceRatio:D

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->calculateBasicRatio()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->isZoomValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsSmoothZoomSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsSmoothZoomSupported:Z

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:I

    sget-object p1, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setOriginalParameters] mIsZoomSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setZoomUpdateListener(Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    return-void
.end method
