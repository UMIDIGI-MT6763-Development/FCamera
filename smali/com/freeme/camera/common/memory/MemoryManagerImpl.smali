.class public Lcom/freeme/camera/common/memory/MemoryManagerImpl;
.super Ljava/lang/Object;
.source "MemoryManagerImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/memory/IMemoryManager;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final BYTES_KILOBYTE:J = 0x400L

.field private static final CSHOT_ADD_SLOWDOWN_THRESHOLD:J = 0x64L

.field private static final DVM_SLOWDOWN_THRESHOLD:F = 0.4f

.field private static final DVM_STOP_THRESHOLD:F = 0.1f

.field private static final LOW_MEMORY_DEVICE:I = 0x200

.field private static final LOW_MEMORY_DIVISOR:J = 0x2L

.field private static final LOW_SUITABLE_SPEED_FPS:I = 0x1

.field private static final SYSTEM_MINI_SLOWDOWN_THRESHOLD:J = 0x24L

.field private static final SYSTEM_STOP_DIVISOR:J = 0x2L

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private final mDvmSlowdownThreshold:J

.field private final mDvmStopThreshold:J

.field private mLeftStorage:J

.field private mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

.field private final mMaxDvmMemory:J

.field private mMemoryInfoManager:Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

.field private final mMiniMemFreeMb:J

.field private mPengdingSize:J

.field private mRuntime:Ljava/lang/Runtime;

.field private mStartTime:J

.field private mSuitableSpeed:I

.field private final mSystemSlowdownThreshold:J

.field private final mSystemStopThreshold:J

.field private mUsedStorage:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    iput-object p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

    invoke-direct {v0}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMemoryInfoManager:Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMaxDvmMemory:J

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMaxDvmMemory:J

    long-to-float v2, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmSlowdownThreshold:J

    long-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmStopThreshold:J

    new-instance v0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;-><init>()V

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual {v0}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;->getForgroundAppThreshold()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMiniMemFreeMb:J

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMiniMemFreeMb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMiniMemFreeMb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMiniMemFreeMb:J

    const-wide/16 v2, 0x24

    cmp-long p1, v0, v2

    const-wide/16 v0, 0x2

    if-gtz p1, :cond_0

    const-wide/16 v2, 0x4

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMaxDvmMemory:J

    const-wide/16 v4, 0x200

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    const-wide/16 v4, 0x64

    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemSlowdownThreshold:J

    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemSlowdownThreshold:J

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemStopThreshold:J

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoryManagerImpl, mDvmSlowdownThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmSlowdownThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDvmStopThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmStopThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemSlowdownThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemSlowdownThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemStopThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemStopThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->getSystemFreeMemory()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMiniMemFreeMb:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    sget-object v2, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSystemMemoryCheckAction, info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getSystemFreeMemory()J
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMemoryInfoManager:Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->readMemInfo()V

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMemoryInfoManager:Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMemoryInfoManager:Lcom/mediatek/camera/portability/memory/MemoryInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->getFreeSizeKb()J

    move-result-wide v4

    div-long/2addr v4, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    :cond_0
    return-void
.end method

.method private toMb(J)J
    .locals 2

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

    return-void
.end method

.method public checkContinuousShotMemoryAction(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mCount:I

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    iput-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mStartTime:J

    sub-long/2addr p1, p3

    iget p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mCount:I

    int-to-long p3, p3

    const-wide/16 v0, 0x400

    mul-long/2addr p3, v0

    div-long/2addr p3, p1

    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    iget-wide v4, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    sub-long/2addr v2, v4

    div-long/2addr v2, p1

    div-long/2addr v2, v0

    sget-object v4, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkContinuousShotMemoryAction]Capture speed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " fps, Save speed="

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " MB/s"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mLeftStorage:J

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkContinuousShotMemoryAction, usedMemory > availableMemory,stop! used: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", available: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mLeftStorage:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    sub-long v2, p3, v2

    iget v4, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mCount:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int p1, v2

    iput p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSuitableSpeed:I

    iget-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemStopThreshold:J

    sget-object p3, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemSlowdownThreshold:J

    sget-object p3, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmSlowdownThreshold:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_4

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkContinuousShotMemoryAction, DvmSlowdownThreshold reached, mPengdingSize = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide p1

    iget-object p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {p3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide p3

    sub-long/2addr p1, p3

    sget-object p3, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkContinuousShotMemoryAction, process total memory: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", real used memory: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMaxDvmMemory:J

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmStopThreshold:J

    cmp-long p1, p3, p1

    if-gtz p1, :cond_5

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "checkContinuousShotMemoryAction, DvmStopThreshold reached "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void

    :cond_5
    return-void
.end method

.method public checkOneShotMemoryAction(J)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOneShotMemoryAction, pictureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemStopThreshold:J

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->toMb(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, v0, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOneShotMemoryAction, process total memory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", real used memory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mMaxDvmMemory:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mDvmStopThreshold:J

    add-long/2addr v0, p1

    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    sget-object p1, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "checkOneShotMemoryAction, DvmStopThreshold reached "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void

    :cond_2
    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void
.end method

.method public getSuitableSpeed()I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSuitableSpeed:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSuitableSpeed:I

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSuitableSpeed:I

    return v0
.end method

.method public initStartTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mStartTime:J

    return-void
.end method

.method public initStateForCapture(J)V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    iput-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mLeftStorage:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mUsedStorage:J

    iput-wide p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mPengdingSize:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mCount:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemStopThreshold:J

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, v0, v1, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mSystemSlowdownThreshold:J

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-direct {p0, v0, v1, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->doSystemMemoryCheckAction(JLcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Z

    :goto_0
    return-void
.end method

.method public removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->mListener:Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;

    return-void
.end method
