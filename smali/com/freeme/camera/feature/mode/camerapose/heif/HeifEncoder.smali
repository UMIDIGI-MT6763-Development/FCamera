.class public final Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;
.super Ljava/lang/Object;
.source "HeifEncoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$EncoderCallback;,
        Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;,
        Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GRID_HEIGHT:I = 0x200

.field private static final GRID_WIDTH:I = 0x200

.field private static final INPUT_BUFFER_POOL_SIZE:I = 0x2

.field public static final INPUT_MODE_BITMAP:I = 0x2

.field public static final INPUT_MODE_BUFFER:I = 0x0

.field public static final INPUT_MODE_SURFACE:I = 0x1

.field private static final MAX_COMPRESS_RATIO:D = 0.25

.field private static final TAG:Ljava/lang/String; = "HeifEncoder"


# instance fields
.field private final mCallback:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;

.field private final mCodecInputBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBuffer:Ljava/nio/ByteBuffer;

.field private final mDstRect:Landroid/graphics/Rect;

.field private mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

.field private final mEmptyBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

.field private mEncoderSurface:Landroid/view/Surface;

.field private final mFilledBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridCols:I

.field private final mGridHeight:I

.field private final mGridRows:I

.field private final mGridWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHeight:I

.field private mInputEOS:Z

.field private mInputIndex:I

.field private final mInputMode:I

.field private mInputSurface:Landroid/view/Surface;

.field private mInputTexture:Landroid/graphics/SurfaceTexture;

.field private final mNumTiles:I

.field private mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTextureId:I

.field private final mTmpMatrix:[F

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIZIILandroid/os/Handler;Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    const/16 v6, 0x10

    new-array v6, v6, [F

    iput-object v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTmpMatrix:[F

    const-string v6, "HeifEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", useGrid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", quality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", inputMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_14

    if-ltz v2, :cond_14

    if-ltz v4, :cond_14

    const/16 v6, 0x64

    if-gt v4, v6, :cond_14

    const/16 v6, 0x200

    const/4 v8, 0x1

    if-gt v1, v6, :cond_1

    if-le v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    and-int/2addr v3, v9

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "image/vnd.android.heic"

    invoke-static {v10}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    iput-object v10, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v10, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v10

    const-string v11, "image/vnd.android.heic"

    invoke-virtual {v10, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    move v10, v8

    goto :goto_2

    :cond_2
    iget-object v10, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    iput-object v9, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v10, "video/hevc"

    invoke-static {v10}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    iput-object v10, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v10, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v10

    const-string v11, "video/hevc"

    invoke-virtual {v10, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v11

    xor-int/2addr v11, v8

    or-int/2addr v3, v11

    move-object v11, v10

    const/4 v10, 0x0

    :goto_2
    iput v5, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    move-object/from16 v12, p7

    iput-object v12, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCallback:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;

    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    goto :goto_3

    :cond_3
    move-object v12, v9

    :goto_3
    if-nez v12, :cond_4

    new-instance v12, Landroid/os/HandlerThread;

    const-string v13, "HeifEncoderThread"

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v12, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v12, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    iget-object v12, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    goto :goto_4

    :cond_4
    iput-object v9, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    :goto_4
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v13, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    if-eq v5, v8, :cond_6

    if-ne v5, v12, :cond_5

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v13, v8

    :goto_6
    if-eqz v13, :cond_7

    const v14, 0x7f000789

    goto :goto_7

    :cond_7
    const v14, 0x7f420888

    :goto_7
    iput v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iput v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    if-eqz v3, :cond_8

    add-int/lit16 v15, v2, 0x200

    sub-int/2addr v15, v8

    div-int/2addr v15, v6

    add-int/lit16 v9, v1, 0x200

    sub-int/2addr v9, v8

    div-int/2addr v9, v6

    move v12, v15

    move v15, v9

    move v9, v6

    goto :goto_8

    :cond_8
    iget v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v9, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    move v12, v8

    move v15, v12

    :goto_8
    if-eqz v10, :cond_9

    const-string v7, "image/vnd.android.heic"

    iget v8, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v5, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    invoke-static {v7, v8, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    goto :goto_9

    :cond_9
    const-string v5, "video/hevc"

    invoke-static {v5, v6, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    :goto_9
    if-eqz v3, :cond_a

    const-string v3, "tile-width"

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "tile-height"

    invoke-virtual {v5, v3, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "grid-cols"

    invoke-virtual {v5, v3, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "grid-rows"

    invoke-virtual {v5, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    if-eqz v10, :cond_b

    iput v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    iput v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    const/4 v3, 0x1

    iput v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    iput v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    goto :goto_a

    :cond_b
    iput v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    iput v9, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    iput v12, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    iput v15, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    :goto_a
    iget v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    iget v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    mul-int/2addr v3, v6

    iput v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    const-string v3, "i-frame-interval"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "color-format"

    invoke-virtual {v5, v3, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    iget v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "capture-rate"

    iget v6, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    mul-int/lit8 v6, v6, 0x1e

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-eqz v7, :cond_c

    const-string v1, "HeifEncoder"

    const-string v2, "Setting bitrate mode to constant quality"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getQualityRange()Landroid/util/Range;

    move-result-object v1

    const-string v2, "HeifEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quality range: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bitrate-mode"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "quality"

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    mul-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v3, v8

    add-double/2addr v6, v3

    double-to-int v1, v6

    invoke-virtual {v5, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_c

    :cond_c
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "HeifEncoder"

    const-string v7, "Setting bitrate mode to constant bitrate"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "bitrate-mode"

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_b

    :cond_d
    const-string v3, "HeifEncoder"

    const-string v6, "Setting bitrate mode to variable bitrate"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "bitrate-mode"

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_b
    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v6

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v1, v6

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v1, v6

    int-to-double v3, v4

    mul-double/2addr v1, v3

    div-double/2addr v1, v8

    double-to-int v1, v1

    const-string v2, "bitrate"

    invoke-virtual {v5, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_c
    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$EncoderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$EncoderCallback;-><init>(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$1;)V

    iget-object v4, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    if-eqz v13, :cond_12

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    iget v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    if-le v1, v2, :cond_e

    move v1, v2

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    :goto_d
    new-instance v3, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    invoke-direct {v3, v0, v1}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;-><init>(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;Z)V

    iput-object v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    move/from16 v3, p5

    if-ne v3, v2, :cond_13

    if-eqz v1, :cond_11

    new-instance v1, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    iget-object v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->makeCurrent()V

    new-instance v1, Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    new-instance v2, Lcom/freeme/camera/feature/mode/camerapose/heif/Texture2dProgram;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/4 v4, 0x0

    goto :goto_e

    :cond_f
    const/4 v4, 0x1

    :goto_e
    invoke-direct {v2, v4}, Lcom/freeme/camera/feature/mode/camerapose/heif/Texture2dProgram;-><init>(I)V

    iget v4, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v5, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    invoke-direct {v1, v2, v4, v5}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;-><init>(Lcom/freeme/camera/feature/mode/camerapose/heif/Texture2dProgram;II)V

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;->createTextureObject()I

    move-result v1

    iput v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTextureId:I

    const/4 v1, 0x1

    if-ne v3, v1, :cond_10

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTextureId:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    iput-object v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    iget v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    :cond_10
    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->makeUnCurrent()V

    goto :goto_10

    :cond_11
    iget-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_f
    if-ge v1, v2, :cond_13

    iget-object v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    iget v4, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v5, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_13
    :goto_10
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    iget v3, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mDstRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    return-void

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid encoder inputs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->maybeCopyOneTileYUV()V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    return p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCallback:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->stopInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    return p0
.end method

.method private acquireEmptyBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private addYuvBufferInternal([B)V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->acquireEmptyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$1;-><init>(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private computePresentationTime(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    const-wide/16 v2, 0x84

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static copyOneTileYUV(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_6

    rem-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_5

    rem-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->right:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->left:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->top:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->right:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_4

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v9, p2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, p3, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    if-lez v5, :cond_0

    mul-int v11, p2, p3

    add-int/lit8 v12, v5, 0x3

    mul-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x4

    move v12, v3

    goto :goto_1

    :cond_0
    move v12, v10

    const/4 v11, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    div-int v14, v9, v12

    if-ge v13, v14, :cond_3

    iget v14, v0, Landroid/graphics/Rect;->top:I

    div-int/2addr v14, v12

    add-int/2addr v14, v13

    mul-int v14, v14, p2

    div-int/2addr v14, v12

    add-int/2addr v14, v11

    iget v15, v0, Landroid/graphics/Rect;->left:I

    div-int/2addr v15, v12

    add-int/2addr v14, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    div-int/2addr v14, v12

    add-int/2addr v14, v13

    aget-object v16, v2, v5

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    mul-int v14, v14, v16

    iget v3, v1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v7

    div-int/2addr v3, v12

    add-int/2addr v14, v3

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_3
    div-int v14, v8, v12

    if-ge v3, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-le v7, v10, :cond_1

    add-int/lit8 v14, v14, -0x1

    if-eq v3, v14, :cond_1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    sub-int/2addr v4, v10

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move-object/from16 v15, p0

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src or dst are not aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and dst rect size are different!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCurrentBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    :goto_0
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    :goto_2
    return-object v1
.end method

.method private maybeCopyOneTileYUV()V
    .locals 15

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->getCurrentBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v14, v1

    goto :goto_1

    :cond_1
    move v14, v6

    :goto_1
    if-nez v14, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    iget v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    rem-int v5, v3, v4

    mul-int/2addr v5, v2

    iget v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    rem-int/2addr v3, v4

    mul-int/2addr v3, v7

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    add-int/2addr v2, v5

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->copyOneTileYUV(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    if-eqz v14, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    move v10, v0

    :goto_2
    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->computePresentationTime(I)J

    move-result-wide v11

    if-eqz v14, :cond_4

    const/4 v6, 0x4

    :cond_4
    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v14, :cond_5

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0, v14}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->returnEmptyBufferAndNotify(Z)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private returnEmptyBufferAndNotify(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private stopInternal()V
    .locals 3

    const-string v0, "HeifEncoder"

    const-string v1, "stopInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;->release(Z)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->release()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->computePresentationTime(I)J

    move-result-wide v1

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    iget v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->computePresentationTime(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;->updateLastInputAndEncoderTime(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "addBitmap is only allowed in bitmap input mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addYuvBuffer(I[B)V
    .locals 2

    iget p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    array-length p1, p2

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->addYuvBufferInternal([B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addYuvBuffer is only allowed in buffer input mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputEOS:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$2;-><init>(Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputSurface is only allowed in surface input mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->makeCurrent()V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTmpMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-string v2, "HeifEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrameAvailable: timestampUs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v6, v0, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    iget v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mNumTiles:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->computePresentationTime(I)J

    move-result-wide v6

    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;->updateLastInputAndEncoderTime(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridRows:I

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_1
    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridCols:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    mul-int/2addr v3, v1

    iget v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridWidth:I

    add-int/2addr v8, v3

    iget v9, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mGridHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mRectBlt:Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;

    iget v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTextureId:I

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mTmpMatrix:[F

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v7, v8}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglRectBlt;->copyRect(I[FLandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    iget v6, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputIndex:I

    invoke-direct {p0, v6}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->computePresentationTime(I)J

    move-result-wide v6

    mul-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->setPresentationTime(J)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->swapBuffers()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoderEglSurface:Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/camerapose/heif/EglWindowSurface;->makeUnCurrent()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEndOfInputStreamTimestamp(J)V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;->updateInputEOSTime(J)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setEndOfInputStreamTimestamp is only allowed in surface input mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public stopAsync()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mInputMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->mEOSTracker:Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder$SurfaceEOSTracker;->updateInputEOSTime(J)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/camerapose/heif/HeifEncoder;->addYuvBufferInternal([B)V

    :cond_1
    :goto_0
    return-void
.end method
