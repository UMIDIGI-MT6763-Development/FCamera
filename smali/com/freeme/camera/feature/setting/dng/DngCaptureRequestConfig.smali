.class public Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;
.super Ljava/lang/Object;
.source "DngCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/dng/IDngConfig;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MAX_RAW_CAPTURE_IMAGES:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final mCaptureObject:Ljava/lang/Object;

.field private mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mCaptureResultReady:Z

.field private mCharas:Landroid/hardware/camera2/CameraCharacteristics;

.field private mDngList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

.field private mIsDngOn:Z

.field private mIsTakePicture:Z

.field private final mModeHandler:Landroid/os/Handler;

.field private mRawCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mRawCaptureSurface:Landroid/view/Surface;

.field private mRawDataReady:Z

.field private mRawImage:Landroid/media/Image;

.field private mRawImageReader:Landroid/media/ImageReader;

.field private mRawSize:Landroid/util/Size;

.field private mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;-><init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;-><init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mModeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImage:Landroid/media/Image;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawDataReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->convertRawToDng(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic access$702(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureResultReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private convertRawToDng(Landroid/media/Image;)V
    .locals 7

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureResultReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawDataReady:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getRawSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[convertRawToDng], get raw size error"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getRawSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawSize:Landroid/util/Size;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDisplayOrientationUpdate()I

    move-result v1

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getDngOrientation(I)I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "dngcreator"

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Landroid/hardware/camera2/DngCreator;

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v6, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v4, v5, v6}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v4, v1, p1}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[convertRawToDng], dng write error"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[convertRawToDng]"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawSize:Landroid/util/Size;

    invoke-interface {p1, v2, v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onSaveDngImage([BLandroid/util/Size;)V

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->resetDngCaptureStatus()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private isDngSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getAvailableCapablities(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[isDngSupported] RAW capablity do not support"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->isDngCaptureSizeAvailable(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[isDngSupported] No capture sizes available for raw format"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getRawSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawSize:Landroid/util/Size;

    const/4 p1, 0x1

    return p1
.end method

.method private releaseRawSurface()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;-><init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resetDngCaptureStatus()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawDataReady:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureResultReady:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsTakePicture:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-interface {v1, v0}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest] mIsDngOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public configRawSurface()Landroid/view/Surface;
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRawSurface mIsDngOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mModeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mRawCaptureSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public configSessionSurface(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configSessionSurface] mIsDngOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->configRawSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->releaseRawSurface()V

    :goto_0
    return-void
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public notifyOverrideValue(Z)V
    .locals 0

    return-void
.end method

.method public onModeClosed()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->releaseRawSurface()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->resetDngCaptureStatus()V

    return-void
.end method

.method public requestChangeOverrideValues()V
    .locals 0

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendSettingChangeRequest] mIsDngOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTakePicture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsTakePicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsTakePicture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    :cond_0
    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->isDngSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngValueUpdate(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngValueUpdate(Ljava/util/List;Z)V

    :goto_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mCharas:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method public setDngStatus(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsDngOn:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mIsTakePicture:Z

    return-void
.end method

.method public setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    return-void
.end method
