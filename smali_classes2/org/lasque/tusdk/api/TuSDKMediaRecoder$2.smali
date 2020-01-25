.class Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstVideoSampleDataWrited(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J

    return-void
.end method

.method public onProgressChanged(FJ)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0, p2, p3}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;->onMediaRecoderProgressChanged(F)V

    :cond_0
    return-void
.end method
