.class Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "HeifEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderCallback"
.end annotation


# instance fields
.field private mOutputEOS:Z

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;-><init>(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)V

    return-void
.end method

.method private stopAndNotify(Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1500(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1100(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;->onComplete(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1100(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;->onError(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "HeifEncoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->stopAndNotify(Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1200(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "HeifEncoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputBufferAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1300(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$100(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->mOutputEOS:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "HeifEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputBufferAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1400(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$SurfaceEOSTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1400(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$SurfaceEOSTracker;

    move-result-object v1

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$SurfaceEOSTracker;->updateLastOutputTime(J)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1100(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;->onDrainOutputBuffer(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;Ljava/nio/ByteBuffer;)V

    :cond_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->mOutputEOS:Z

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p3, p3, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    or-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->mOutputEOS:Z

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->mOutputEOS:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->stopAndNotify(Landroid/media/MediaCodec$CodecException;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "HeifEncoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "image/vnd.android.heic"

    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mime"

    const-string v0, "image/vnd.android.heic"

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "width"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$400(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "height"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$500(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$600(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const-string p1, "tile-width"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$700(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "tile-height"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$800(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "grid-rows"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$900(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "grid-cols"

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1000(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;->access$1100(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$EncoderCallback;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder$Callback;->onOutputFormatChanged(Lcom/freeme/camera/feature/mode/iko/heif/HeifEncoder;Landroid/media/MediaFormat;)V

    return-void
.end method
