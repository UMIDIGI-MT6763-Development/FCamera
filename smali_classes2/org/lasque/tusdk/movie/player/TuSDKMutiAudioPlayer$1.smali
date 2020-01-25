.class Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->asyncPrepare(Ljava/util/List;)V
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

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    invoke-static {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PrePared:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
