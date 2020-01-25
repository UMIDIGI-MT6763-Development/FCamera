.class Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovieDecoderThread"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    iget-object v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->a:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->h(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V

    :cond_2
    return-void
.end method
