.class public Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;,
        Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;
    }
.end annotation


# static fields
.field public static final INVALID_TRACK_INDEX:I = -0x1


# instance fields
.field private volatile a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

.field private b:Landroid/media/MediaMuxer;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

.field private g:Z

.field private h:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field protected mIsFirstAudioWrite:Z

.field private final n:[B


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->UnKnow:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->mIsFirstAudioWrite:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->k:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    const/16 v0, 0x116

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->n:[B

    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->getOutputFormat()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->f:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x21t
        0x21t
        0x45t
        0x0t
        0x14t
        0x50t
        0x1t
        0x46t
        -0x1t
        -0x1ft
        0xat
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5et
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->UnKnow:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->mIsFirstAudioWrite:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->k:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    const/16 v0, 0x116

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->n:[B

    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->getOutputFormat()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->f:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x21t
        0x21t
        0x45t
        0x0t
        0x14t
        0x50t
        0x1t
        0x46t
        -0x1t
        -0x1ft
        0xat
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5at
        0x5et
    .end array-data
.end method

.method private a(Landroid/media/MediaFormat;)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method private a(J)V
    .locals 5

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->n:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;

    invoke-direct {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;-><init>()V

    iget v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    iput v2, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iput-object v0, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->buffer:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-wide p1, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p1, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->n:[B

    array-length p2, p2

    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p1, v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 p2, 0x0

    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    new-instance p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;

    invoke-direct {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;-><init>()V

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    iput v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iput-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->buffer:Ljava/nio/ByteBuffer;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->getLastAudioPresentationTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->n:[B

    array-length v1, v1

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput p2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V
    .locals 5

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->mIsFirstAudioWrite:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->mIsFirstAudioWrite:Z

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    iget-object v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->k:J

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->k:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    iget-object v3, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getSafePts(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iget-object v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    return-void
.end method

.method private a()Z
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private b(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V
    .locals 7

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    iget-object v3, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getSafePts(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->g:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(J)V

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->h:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    long-to-float v3, v1

    iget-wide v4, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    long-to-float v6, v4

    cmp-long v1, v4, v1

    if-nez v1, :cond_3

    invoke-interface {v0, v4, v5}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;->onFirstVideoSampleDataWrited(J)V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->h:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    sub-float/2addr v3, v6

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v3, v1

    div-float/2addr v3, v1

    iget-wide v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    invoke-interface {v0, v3, v1, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;->onProgressChanged(FJ)V

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iget-object v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;-><init>(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)V

    return-object v0
.end method


# virtual methods
.method public addAudioTrack(Landroid/media/MediaFormat;)I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The audio track already exists"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVideoTrack(Landroid/media/MediaFormat;)I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The video track already exists"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canAddAudioTrack()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canAddVideoTrack()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBeginVideoPresentationTimeUs()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    return-wide v0
.end method

.method public getDurationTime()J
    .locals 6

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    iget-wide v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->l:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAudioPresentationTimeUs()J
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    :goto_0
    return-wide v0
.end method

.method public getLastVideoPresentationTimeUs()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->m:J

    return-wide v0
.end method

.method public getOutputFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputFormat()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->f:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    return-object v0
.end method

.method public hasAudioTrack()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideoTrack()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStoped()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Stopped:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAudioStartTimeUs(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->mIsFirstAudioWrite:Z

    iput-wide p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->j:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->k:J

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->h:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setWriteMuteAudioPlaceholderData(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->g:Z

    return-void
.end method

.method public start()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public stop()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Stopped:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    iput v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->i:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;-><init>()V

    iput p1, v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iput-object p2, v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->buffer:Ljava/nio/ByteBuffer;

    iput-object p3, v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeSampleData(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeSampleData(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;->Started:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;->trackIndex:I

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->b(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->c:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method
