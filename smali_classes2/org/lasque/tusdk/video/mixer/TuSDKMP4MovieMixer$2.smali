.class Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstVideoSampleDataWrited(J)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(FJ)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;J)J

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;J)J

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setWriteMuteAudioPlaceholderData(Z)V

    :cond_1
    return-void
.end method
