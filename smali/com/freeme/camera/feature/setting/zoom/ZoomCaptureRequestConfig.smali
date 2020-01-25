.class public Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;
.super Ljava/lang/Object;
.source "ZoomCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DEFAULT_VALUE:F = -1.0f

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final ZOOM_UNSUPPORTED_DEFAULT_VALUE:F = 1.0f


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mBasicZoomRatio:F

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCurZoomRatio:F

.field private mDistanceRatio:D

.field private mIsUserInteraction:Z

.field private mLastZoomRatio:F

.field private mMaxZoom:F

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method private calculateBasicRatio()V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    :goto_0
    return-void
.end method

.method private calculateZoomRatio(D)F
    .locals 6

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mMaxZoom:F

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    float-to-double v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v0, v3

    float-to-double v4, v4

    mul-double/2addr v4, p1

    add-double/2addr v1, v4

    double-to-float p1, v1

    cmpg-float p2, p1, v3

    if-gtz p2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private cropRegionForZoom(F)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    div-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v4, p1

    float-to-int p1, v4

    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private getPatternRatio()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    const v1, 0x40833333    # 4.1f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->isNeedModifyRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNeedModifyRatio()Z
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    const v1, 0x3f8ccccd    # 1.1f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const v1, 0x40066666    # 2.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const v1, 0x40466666    # 3.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isZoomValid()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isZoomValid] mCurZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", zoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->calculateZoomRatio(D)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mMaxZoom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->calculateZoomRatio(D)F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isZoomValid] needZoom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private reset(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iput v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v0, "off"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;->onGetOverrideValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest] this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->reset(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->isContinousShotStop()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->reset(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_4
    :goto_1
    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->calculateZoomRatio(D)F

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mLastZoomRatio:F

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mIsUserInteraction:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->getPatternRatio()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;->onZoomLevelUpdate(Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCaptureRequest] this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurZoomRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDistanceRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

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

.method public onScalePerformed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    return-void
.end method

.method public onScaleStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mIsUserInteraction:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->calculateBasicRatio()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->isZoomValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    :cond_0
    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mSensorRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mMaxZoom:F

    sget-object p1, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics] MaxZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mMaxZoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCurClickZoomValue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mBasicZoomRatio:F

    goto :goto_0

    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide v0, 0x3fd6666666666666L    # 0.35

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mDistanceRatio:D

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->calculateZoomRatio(D)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mCurZoomRatio:F

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method public setZoomUpdateListener(Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->mZoomUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    return-void
.end method
