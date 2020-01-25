.class Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixed([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->write([B)V

    return-void
.end method

.method public onMixingError(I)V
    .locals 0

    return-void
.end method

.method public onReayTrunkTrackInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Landroid/media/AudioTrack;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    return-void
.end method

.method public onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-static {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-static {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V

    :cond_1
    :goto_0
    return-void
.end method
