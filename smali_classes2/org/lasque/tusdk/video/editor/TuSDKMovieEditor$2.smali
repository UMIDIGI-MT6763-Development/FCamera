.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;
.super Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepareEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$2;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->initCodec(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z

    return-void
.end method
