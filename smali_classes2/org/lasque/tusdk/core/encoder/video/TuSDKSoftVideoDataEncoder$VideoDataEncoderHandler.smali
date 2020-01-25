.class Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDataEncoderHandler"
.end annotation


# static fields
.field public static final WHAT_INCOMING_BUFF:I = 0x1


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v0

    aget-object p1, v0, p1

    iput-boolean v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->isReadyToFill:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object p1

    iget-object p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v2, v3

    invoke-static {p1, v0, v2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->NV21TOYUV420SP([B[BI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object p1

    iget-object p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v2, v3

    invoke-static {p1, v0, v2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->NV21TOYUV420P([B[BI)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object p1

    iput-boolean v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->isReadyToFill:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_4

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object v5, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v5}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v5

    iget-object v5, v5, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    array-length v10, v2

    const-wide/16 v2, 0x3e8

    mul-long v11, v0, v2

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_4
    const-string v0, "dstVideoEncoder.dequeueInputBuffer(-1)<0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    monitor-exit p1

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
