.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;
.super Ljava/lang/Object;
.source "MatrixDisplayHandler.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;
    }
.end annotation


# static fields
.field private static final BIT_NUM_PER_BYTE:I = 0x8

.field private static final CACHE_BUFFER_NUM:I = 0x3

.field private static final EFFECT_NUM_OF_PAGE:I = 0xc

.field private static final HEIGHT_BE_DIVIDED_BY:I = 0x10

.field private static final MATRIX_FORMAT:I = 0xb

.field private static final MAX_NUM_OF_PROCESSING:I = 0x2

.field private static final MSG_INIT_EFFECT:I = 0x64

.field private static final MSG_PROCESS_EFFECT:I = 0x67

.field private static final MSG_REGISTER_BUFFERS:I = 0x65

.field private static final MSG_RELEASE_EFFECT:I = 0x68

.field private static final MSG_SET_SURFACE_NATIVE:I = 0x66

.field private static final NUM_OF_DROP:I = 0x6

.field private static final PAGE_NUM:I = 0x3

.field private static final PRINT_FPS_EVERY_FEW_FRAMES:I = 0x14

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WIDTH_BE_DIVIDED_BY:I = 0x20


# instance fields
.field private mCacheBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile mCacheIndex:I

.field private mEffectAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;

.field private mEffectIndexs:[I

.field private mEffectsBuffers:[[B

.field private mEffectsCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private volatile mHasRegisterBuffer:Z

.field private mInputFrames:I

.field private mInputStartTime:J

.field private volatile mIsReleased:Z

.field private mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

.field private mMaxSurfaceBufferHeight:I

.field private mMaxSurfaceBufferWidth:I

.field private volatile mNumOfCurrentProcess:I

.field private volatile mNumOfDropFrame:I

.field private mReleaseCondition:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectIndexs:[I

    const/16 v0, 0x24

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectsBuffers:[[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mReleaseCondition:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHasRegisterBuffer:Z

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputFrames:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectsCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z

    return p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectsBuffers:[[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[I
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectIndexs:[I

    return-object p0
.end method

.method static synthetic access$510(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    return v0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->releaseMatrixDisplay()V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;

    return-object p0
.end method

.method private processEffect([B)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[processEffect] data is null, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    array-length v0, p1

    array-length v2, v1

    if-eq v0, v2, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[processEffect]preview buffer size is larger,return!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private releaseMatrixDisplay()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "<releaseMatrixDisplay>"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHasRegisterBuffer:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    invoke-virtual {v1}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->release()V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectsBuffers:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mReleaseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private updateSurfaceSize(II)Landroid/graphics/Point;
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSurfaceSize] input size, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxSurfaceBufferWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxSurfaceBufferHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const v0, 0x3f8ccccd    # 1.1f

    move v1, p2

    move v2, v0

    move v0, p1

    :goto_0
    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferWidth:I

    if-gt v0, v3, :cond_1

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferHeight:I

    if-le v1, v3, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    sget-object p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSurfaceSize] output size,newWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",newHeight:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_1
    int-to-float v0, p1

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, p2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized initialize(IIIII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initialize]previewWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previewHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",imageFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferWidth:I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x4

    iput p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMaxSurfaceBufferHeight:I

    invoke-static {}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->getInstance()Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    move-result-object p4

    iput-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    iget-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-nez p5, :cond_0

    new-instance p5, Landroid/os/HandlerThread;

    const-string v0, "draw buffer handler thread"

    const/4 v1, -0x4

    invoke-direct {p5, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p5}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {v0, p0, p5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectIndexs:[I

    array-length v0, v0

    if-ge p5, v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectIndexs:[I

    const/4 v1, -0x1

    aput v1, v0, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    mul-int p5, p1, p2

    invoke-static {p3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p3

    mul-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x8

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    monitor-enter p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, p4

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    new-array v1, p5, [B

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mCacheIndex:I

    iput p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    iput p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    iget-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectsCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

    invoke-virtual {p3, p4}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->setCallback(Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 p5, 0x64

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_1
    move-exception p1

    :try_start_8
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception p1

    :try_start_a
    monitor-exit p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onEffectUpdated(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectIndexs:[I

    aput p2, v0, p1

    return-void
.end method

.method public onPreviewFrameAvailable([B)V
    .locals 7

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewFrameAvailable] pv callback data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNumOfCurrentProcess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputFrames:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputStartTime:J

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputFrames:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputFrames:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputFrames:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputStartTime:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onPreviewFrameAvailable] pv callback fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x4e20

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mInputStartTime:J

    :cond_1
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfCurrentProcess:I

    const/4 v3, 0x6

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    if-lt v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHasRegisterBuffer:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->processEffect([B)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    if-ge p1, v3, :cond_5

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mNumOfDropFrame:I

    :cond_5
    :goto_1
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;III)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHasRegisterBuffer:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->updateSurfaceSize(II)Landroid/graphics/Point;

    move-result-object p2

    sget-object p3, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSurfaceAvailable] register buffer size, bufferWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bufferHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHasRegisterBuffer:Z

    :cond_0
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p4, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mIsReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    invoke-virtual {v0, v1}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->setCallback(Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;)V

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[release] mHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mReleaseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mReleaseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mHandler:Landroid/os/Handler;

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release] end"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectAvailableListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->mEffectAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectAvailableListener;

    return-void
.end method
