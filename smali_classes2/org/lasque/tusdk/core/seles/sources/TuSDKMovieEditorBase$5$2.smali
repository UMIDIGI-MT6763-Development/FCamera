.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->onVideoDecoderInfoReady(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;->b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;->a:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;->b:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5$2;->a:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onMovieInfoAvailable(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V

    return-void
.end method
