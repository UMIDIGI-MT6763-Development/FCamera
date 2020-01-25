.class public Lcom/freeme/camera/common/sound/SoundPlaybackImpl;
.super Ljava/lang/Object;
.source "SoundPlaybackImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/sound/ISoundPlayback;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaActionSoundPlayer:Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

.field private mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

    invoke-direct {p1}, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mMediaActionSoundPlayer:Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

    new-instance p1, Lcom/freeme/camera/common/sound/SoundPlayer;

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/freeme/camera/common/sound/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/SoundPlayer;->unloadSound()V

    return-void
.end method

.method public play(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] play sound with action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mMediaActionSoundPlayer:Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->play(I)V

    return-void
.end method

.method public play(IF)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] play sound with resourceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/common/sound/SoundPlayer;->play(IF)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mMediaActionSoundPlayer:Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->release()V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/SoundPlayer;->unloadSound()V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->mSoundPlayer:Lcom/freeme/camera/common/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/SoundPlayer;->release()V

    return-void
.end method
