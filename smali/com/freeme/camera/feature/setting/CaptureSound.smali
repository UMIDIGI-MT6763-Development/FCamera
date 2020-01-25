.class Lcom/freeme/camera/feature/setting/CaptureSound;
.super Ljava/lang/Object;
.source "CaptureSound.java"


# static fields
.field private static final MAX_STREAM:I = 0xa

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sUserCount:I


# instance fields
.field private mBurstSound:Landroid/media/SoundPool;

.field private final mContext:Landroid/content/Context;

.field private mSoundId:I

.field private mStreamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x0

    sput v0, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method load()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[load]sUserCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget v0, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0003

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mSoundId:I

    return-void
.end method

.method play()V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play]mBurstSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CaptureSound;->load()V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    iget v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CaptureSound;->load()V

    sget v0, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    iget v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    sget-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play]done mStreamId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release]mBurstSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", user count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget v1, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/freeme/camera/feature/setting/CaptureSound;->sUserCount:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method stop()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/CaptureSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stop]mStreamId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mBurstSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/CaptureSound;->mStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method
