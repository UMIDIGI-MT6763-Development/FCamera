.class Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;
.super Ljava/lang/Object;
.source "MediaActionSoundPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mSound:Landroid/media/MediaActionSound;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized play(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[play] mSound is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :try_start_1
    sget-object v0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected release()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release] "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/sound/MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    :cond_0
    return-void
.end method
