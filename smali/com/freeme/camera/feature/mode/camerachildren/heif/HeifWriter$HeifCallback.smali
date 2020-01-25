.class Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;
.super Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder$Callback;
.source "HeifWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeifCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;-><init>(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)V

    return-void
.end method

.method private stopAndNotify(Ljava/lang/Exception;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1100(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1200(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$ResultWaiter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$ResultWaiter;->signalResult(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$300(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void
.end method

.method public onDrainOutputBuffer(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;Ljava/nio/ByteBuffer;)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$300(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "HeifWriter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrainOutputBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1000(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$400(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)[I

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output buffer received before format info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1000(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$600(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$500(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v1

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$800(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$400(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1000(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$500(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v3

    div-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1, p2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1008(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$1000(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$600(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$500(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v0

    mul-int/2addr p2, v0

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public onError(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$300(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOutputFormatChanged(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;Landroid/media/MediaFormat;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$300(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifEncoder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "HeifWriter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$400(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output format changed after muxer started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    :try_start_0
    const-string v0, "grid-rows"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "grid-cols"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    mul-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$502(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$502(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;I)I

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$600(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$402(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;[I)[I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$700(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "HeifWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$700(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$800(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$700(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$400(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const-string v2, "is-default"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$900(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)I

    move-result v3

    if-ne v1, v3, :cond_3

    move v3, p1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p2, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$400(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$800(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Landroid/media/MediaMuxer;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter$HeifCallback;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;->access$800(Lcom/freeme/camera/feature/mode/camerachildren/heif/HeifWriter;)Landroid/media/MediaMuxer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    return-void
.end method
