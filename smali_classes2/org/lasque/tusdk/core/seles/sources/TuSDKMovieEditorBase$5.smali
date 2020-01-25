.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onDecoderComplete()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDecoderError(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;)V
    .locals 0

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged(JFF)V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0, p3}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;F)F

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;JFF)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoDecoderInfoReady(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget-object v1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->videoOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget-object v0, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->videoOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget v1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    iget v2, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget v1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    iget v2, p1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    :goto_0
    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoDecoderNewFrameAvailable()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->i(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->b(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Z)Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
