.class public final Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;
.super Ljava/lang/Object;
.source "HeifWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;,
        Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$HeifCallback;,
        Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final INPUT_MODE_BITMAP:I = 0x2

.field public static final INPUT_MODE_BUFFER:I = 0x0

.field public static final INPUT_MODE_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HeifWriter"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

.field private final mInputMode:I

.field private final mMaxImages:I

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mNumTiles:I

.field private mOutputIndex:I

.field private final mPrimaryIndex:I

.field private final mResultWaiter:Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;

.field private final mRotation:I

.field private mStarted:Z

.field private mTrackIndexArray:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;-><init>(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$1;)V

    iput-object v8, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mResultWaiter:Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;

    if-ge v6, v5, :cond_3

    const-string v8, "HeifWriter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", rotation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", gridEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", quality: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", maxImages: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", primaryIndex: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", inputMode: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "image/vnd.android.heic"

    invoke-static {v8, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    const/4 v8, 0x1

    iput v8, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mNumTiles:I

    iput v4, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mRotation:I

    iput v7, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mInputMode:I

    iput v5, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMaxImages:I

    iput v6, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mPrimaryIndex:I

    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v9

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "HeifEncoderThread"

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    iget-object v4, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_1

    :cond_1
    iput-object v9, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    :goto_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    new-instance v5, Landroid/media/MediaMuxer;

    invoke-direct {v5, p1, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    new-instance v5, Landroid/media/MediaMuxer;

    move-object/from16 v1, p2

    invoke-direct {v5, v1, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    :goto_2
    iput-object v5, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    new-instance v10, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    iget v6, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mInputMode:I

    iget-object v7, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$HeifCallback;

    invoke-direct {v8, p0, v9}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$HeifCallback;-><init>(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$1;)V

    move-object v1, v10

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v8}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;-><init>(IIZIILandroid/os/Handler;Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder$Callback;)V

    iput-object v10, v0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid maxImages ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") or primaryIndex ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p11}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mOutputIndex:I

    return p0
.end method

.method static synthetic access$1008(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mOutputIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mOutputIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->closeInternal()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mResultWaiter:Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)[I
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mTrackIndexArray:[I

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mTrackIndexArray:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mNumTiles:I

    return p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mNumTiles:I

    return p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMaxImages:I

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mRotation:I

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mPrimaryIndex:I

    return p0
.end method

.method private checkMode(I)V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mInputMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not valid in input mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mInputMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStarted(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mStarted:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStartedAndMode(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStarted(Z)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkMode(I)V

    return-void
.end method

.method private closeInternal()V
    .locals 2

    const-string v0, "HeifWriter"

    const-string v1, "closeInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->close()V

    monitor-enter p0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->addBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addYuvBuffer(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->addYuvBuffer(I[B)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$1;-><init>(Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkMode(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public setInputEndOfStreamTimestamp(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->setEndOfInputStreamTimestamp(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mStarted:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->start()V

    return-void
.end method

.method public stop(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->checkStarted(Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mHeifEncoder:Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifEncoder;->stopAsync()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter;->mResultWaiter:Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/heif/HeifWriter$ResultWaiter;->waitForResult(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
