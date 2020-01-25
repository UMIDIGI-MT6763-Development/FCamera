.class Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    iput-boolean v1, v5, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->isReadyToFill:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v3}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->h(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;J)J

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v3}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->h(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    new-instance v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    invoke-direct {v1, v0, v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;-><init>(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$1;)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;->start()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    return-void
.end method

.method private a([B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    move-result-object v2

    sget-object v3, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->c(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v4

    iget-boolean v4, v4, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->enableBuffers:Z

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1388

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)I

    move-result v4

    const/4 v10, 0x1

    add-int/2addr v4, v10

    iget-object v11, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v11}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v11

    array-length v11, v11

    rem-int/2addr v4, v11

    iget-object v11, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v11}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v11

    aget-object v11, v11, v4

    iget-boolean v11, v11, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->isReadyToFill:Z

    if-eqz v11, :cond_1

    iget-object v11, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v11}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v11

    aget-object v11, v11, v4

    iget-object v11, v11, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    iget-object v12, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-virtual {v12}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v12

    iget v12, v12, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->bufferSize:I

    invoke-static {v1, v9, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v1

    aget-object v1, v1, v4

    iput-boolean v9, v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->isReadyToFill:Z

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1, v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;I)I

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v1

    aget-object v1, v1, v4

    iput-boolean v10, v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->isReadyToFill:Z

    :cond_1
    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v4

    iget-object v4, v4, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    iget-object v10, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v10}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v10

    iget-object v10, v10, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    array-length v10, v10

    invoke-static {v1, v9, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    if-ltz v11, :cond_3

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v1, v1, v11

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v4

    iget-object v4, v4, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    iget-object v7, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v7}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v7

    iget-object v7, v7, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    array-length v7, v7

    invoke-virtual {v1, v4, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v10

    const/4 v12, 0x0

    iget-object v1, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;->buff:[B

    array-length v13, v1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    if-ltz v11, :cond_3

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v7, v1

    invoke-virtual {v4, v1, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v10

    const/4 v12, 0x0

    array-length v13, v1

    :goto_0
    mul-long v14, v2, v5

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Runing:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;->quit()V

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;->join()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;J)J

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->Stopped:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->onStopeed()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a([B)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->a()V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->b()V

    :cond_2
    :goto_0
    return-void
.end method
