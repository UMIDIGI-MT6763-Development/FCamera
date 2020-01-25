.class public Lcom/freeme/elementscenter/data/ECOnlinePlayer;
.super Ljava/lang/Object;
.source "ECOnlinePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRoot:Landroid/view/View;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mUrl:Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mListener:Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mRoot:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;->onPlayCompletion(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mListener:Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mRoot:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;->onPlayPrepared(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public playByUrl(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public setPlayerStatusListener(Landroid/view/View;Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mListener:Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method
