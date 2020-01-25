.class public Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "SlowMotionEntry.java"


# static fields
.field private static final MODE_ITEM_PRIORITY:I = 0x2

.field private static final MODE_ITEM_TYPE:Ljava/lang/String; = "Video"

.field private static final SLOW_MOTION_QUALITY_HIGH:I = 0x8ae

.field private static final SLOW_MOTION_QUALITY_LOW:I = 0x8ac

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final sMtkSlowQualities:[I

.field private static final sSlowQualities:[I


# instance fields
.field private mStringSupportedIds:[Ljava/lang/String;

.field private mSupportedIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->sMtkSlowQualities:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->sSlowQualities:[I

    return-void

    :array_0
    .array-data 4
        0x8ac
        0x8ae
    .end array-data

    :array_1
    .array-data 4
        0x7d2
        0x7d3
        0x7d4
        0x7d5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    return-void
.end method

.method private checkerProfile(ILandroid/hardware/camera2/CameraCharacteristics;)Landroid/media/CamcorderProfile;
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->sMtkSlowQualities:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->findProfileForRange(ILandroid/hardware/camera2/CameraCharacteristics;[I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->sSlowQualities:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->findProfileForRange(ILandroid/hardware/camera2/CameraCharacteristics;[I)Landroid/media/CamcorderProfile;

    move-result-object v0

    :cond_0
    sget-object p2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkerProfile] cameraId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "profile = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input array shouldn\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findProfileForRange(ILandroid/hardware/camera2/CameraCharacteristics;[I)Landroid/media/CamcorderProfile;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v2, p2}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->getHighSpeedFixedFpsRangeForSize(Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v2, v3, :cond_0

    sget-object p2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find slow motion FrameRate is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Camera id = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHighSpeedFixedFpsRangeForSize(Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getHighSpeedFpsRangeForSize] range = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initPlatformSupportedState()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initPlatformSupportedState] sdk version is smaller than 23"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {v3}, Lcom/freeme/camera/common/loader/DeviceDescription;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const-class v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAPABILITIES contain HIGH_SPEED_VIDEO = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  camera id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->checkerProfile(ILandroid/hardware/camera2/CameraCharacteristics;)Landroid/media/CamcorderProfile;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isFeatureOptionSupported()Z
    .locals 4

    const-string v0, "ro.vendor.mtk_slow_motion_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFeatureOptionSupported]  slow motion enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isPlatFormSupported()Z
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->initPlatformSupportedState()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mStringSupportedIds:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mStringSupportedIds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supported slow motion id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mSupportedIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isPlatFormSupported] isSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isSlowMotionSupported(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->isFeatureOptionSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->isPlatFormSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSlowMotionSupported] isSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private unSuportSlowMotion()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SLOW_MOTION_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SHORT_VIDEO_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionMode;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$ModeItem;-><init>()V

    const-string v1, "Video"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->getFeatureEntryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f01a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mStringSupportedIds:[Ljava/lang/String;

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    const-string v1, "SlowMotion"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/ICameraMode;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->isSlowMotionSupported(Landroid/app/Activity;)Z

    move-result p1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionEntry;->unSuportSlowMotion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
