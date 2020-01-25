.class Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDecoderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Double;",
        "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
        ">;",
        "Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

.field private b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

.field private c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->stop()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->doInBackground([Ljava/lang/Void;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 5

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v4, v3, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getCutTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->setDecodeTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    invoke-virtual {v2, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;)V

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->start()V

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-static {v2, v3, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v2

    iget v2, v2, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v3

    iget v3, v3, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v4

    iget v4, v4, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    invoke-static {v1, v0, v2, v3, v4}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->convertSampleRate(Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->setFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    iput p1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->onCancelled(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V

    return-void
.end method

.method protected onCancelled(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V

    :cond_0
    return-void
.end method

.method public onDecode([BLandroid/media/MediaCodec$BufferInfo;D)V
    .locals 0

    return-void
.end method

.method public onDecodeRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->b:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-void
.end method

.method public onDecoderErrorCode(I)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->onPostExecute(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V

    return-void
.end method

.method protected onPostExecute(Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->c(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$AsyncDecoderTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V

    :cond_0
    return-void
.end method
