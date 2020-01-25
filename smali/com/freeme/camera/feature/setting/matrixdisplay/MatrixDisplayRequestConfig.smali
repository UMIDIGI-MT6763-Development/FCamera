.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;
.super Ljava/lang/Object;
.source "MatrixDisplayRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;
    }
.end annotation


# static fields
.field private static final MAX_IMAGES:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

.field private mCurrentEffect:Ljava/lang/String;

.field private mCursor:I

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mDisplayOpened:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mImageReader:Landroid/media/ImageReader;

.field private mPreviewBuffers:[[B

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mValueInitializedListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    const/4 v0, 0x3

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewBuffers:[[B

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCursor:I

    new-instance p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mValueInitializedListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)[[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewBuffers:[[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCursor:I

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCursor:I

    return p1
.end method

.method static synthetic access$208(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCursor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCursor:I

    return v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    return-object p0
.end method

.method private convertEnumToString(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;

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

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getValue()I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private sizeToStr(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private sortSizeInDescending(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    add-int/lit8 v2, v0, 0x1

    move v4, v0

    move-object v3, v1

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_0

    move v4, v1

    move-object v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest], mCurrentEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCurrentEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayOpened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCurrentEffect:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public configRawSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized configSessionSurface(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configSessionSurface], mDisplayOpened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->convertEnumToString([I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->NONE:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ModeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->sortSizeInDescending(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mValueInitializedListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$ValueInitializedListener;->onValueInitialized(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized setDisplayStatus(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mDisplayOpened:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result p1

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewWidth:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewHeight:I

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    :goto_1
    if-eqz v2, :cond_5

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewHeight:I

    const v3, 0x32315659

    invoke-static {p1, v2, v3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "MatrixDisplay-ImageReader Handler Thread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewBuffers:[[B

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewWidth:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewHeight:I

    mul-int/2addr v2, v4

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 p1, 0x0

    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewBuffers:[[B

    aput-object p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, p1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mImageReader:Landroid/media/ImageReader;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreviewFrameCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mPreviewHeight:I

    return-void
.end method

.method public setSelectedEffect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->mCurrentEffect:Ljava/lang/String;

    return-void
.end method
