.class public Lcom/freeme/camera/common/sound/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final UNLOAD_SOUND_ID:I


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mResourceToSoundId:Landroid/util/SparseIntArray;

.field private final mSoundIDReadyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundIDToPlay:I

.field private final mSoundPool:Landroid/media/SoundPool;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/sound/SoundPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/sound/SoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDReadyMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/freeme/camera/common/sound/SoundPlayer;->getAudioTypeForSoundPool()I

    move-result p1

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    iget-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private getAudioTypeForSoundPool()I
    .locals 4

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/common/sound/SoundPlayer;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method private getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p4

    :catch_1
    return p4
.end method

.method private loadSound(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private unloadSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Sound not loaded. Must call #loadSound first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    if-eqz p3, :cond_0

    sget-object p1, Lcom/freeme/camera/common/sound/SoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " load failed , status is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/freeme/camera/common/sound/SoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " load success"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDReadyMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mVolume:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method public play(IF)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    iput p2, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mVolume:F

    iget v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/sound/SoundPlayer;->loadSound(I)V

    iget-object p2, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDReadyMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/freeme/camera/common/sound/SoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sound id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is in loading and not ready yet"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundIDToPlay:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public unloadSound()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/sound/SoundPlayer;->unloadSound(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
