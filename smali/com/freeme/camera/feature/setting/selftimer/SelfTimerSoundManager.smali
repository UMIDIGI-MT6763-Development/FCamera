.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;
.super Ljava/lang/Object;
.source "SelfTimerSoundManager.java"


# static fields
.field public static final BEEP_ONCE:I = 0x0

.field public static final BEEP_TWICE:I = 0x1

.field private static final MAX_STREAM:I = 0x1

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActvity:Landroid/app/Activity;

.field private mBeepOnce:I

.field private mBeepOnceStreamId:I

.field private mBeepTwice:I

.field private mBeepTwiceStreamId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mActvity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public load()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mActvity:Landroid/app/Activity;

    const v2, 0x7f0e0001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepOnce:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mActvity:Landroid/app/Activity;

    const v2, 0x7f0e0002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepTwice:I

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[load] mSoundPool :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public play(I)V
    .locals 9

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[play]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepOnce:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepOnceStreamId:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepTwice:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepTwiceStreamId:I

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepOnce:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepTwice:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stop]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepOnceStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSoundManager;->mBeepTwiceStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method
