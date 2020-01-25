.class public Lorg/lasque/tusdk/api/TuSDKFilterProcessor;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

.field private i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

.field private j:Z

.field private k:J

.field private l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

.field protected mCurrentEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field protected mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field protected mGLRgbBuffer:Ljava/nio/IntBuffer;

.field protected mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

.field protected mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mIsFilterChanging:Z

.field protected mNeedRebuildFrameBuffer:Z

.field protected mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

.field protected mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

.field protected mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mRunOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

.field private o:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;-><init>(Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;-><init>(Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;Z)V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->d:Z

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->f:Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->k:J

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$5;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->o:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    iput-boolean p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    sget-object p2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mNeedRebuildFrameBuffer:Z

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p1
.end method

.method private a(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_0
    if-nez p5, :cond_1

    sget-object p5, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v1, v2

    :cond_3
    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p2

    add-int/2addr p1, p2

    :cond_4
    if-eqz v0, :cond_6

    sub-int/2addr v1, p1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p1

    if-eqz p3, :cond_5

    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$6;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_0
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_5
    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$6;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_6
    add-int/2addr v1, p1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p1

    if-eqz p4, :cond_7

    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$6;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_2

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_7
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_8
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :cond_7
    sget-object p2, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$6;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_3

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_9
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_a
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_b
    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->d()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->isEnableLiveSticker()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p2

    instance-of p2, p2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    array-length p4, p1

    if-lez p4, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget-object p2, p2, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->k:J

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->k:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->createEGLContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->b()V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    return-object p0
.end method

.method private c()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->destroyFramebuffer()V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mCurrentEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    return-object v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    return-object p0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mIsFilterChanging:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getInterfaceRotation(Landroid/content/Context;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v3

    iget-boolean v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->f:Z

    iget-boolean v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e:Z

    iget-object v6, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->g:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->f()V

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    iget-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    iget-boolean v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->f:Z

    if-eqz v1, :cond_2

    :goto_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :goto_1
    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->setOutputOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i()V

    return-void
.end method

.method private g()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->isEnableLiveSticker()Z

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getStickers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateStickers(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    :cond_0
    return-void
.end method

.method protected checkOutputFramebuffer()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mNeedRebuildFrameBuffer:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->c()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mNeedRebuildFrameBuffer:Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    return-void
.end method

.method protected convertRGBAToYUV([I[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->I420:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoI420([BII[I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYUV([BII[I)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYV12([BII[I)V

    :goto_0
    return-void
.end method

.method protected convertYUVFrameDataToRGBA([B[ILorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V
    .locals 1

    sget-object p2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->YUVtoRBGA([BII[I)V

    goto :goto_0

    :cond_0
    const-string p1, "%d format is not supported "

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected destroyFramebuffer()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->clearAllLocks()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mCurrentEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    :cond_0
    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;

    return-object v0
.end method

.method public getDeviceOriention()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->l:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method public getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public init(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->reset()V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->onFilterWrapChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final isEnableLiveSticker()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->j:Z

    return v0
.end method

.method public final isFaceBeautySupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isFaceBeautySupported()Z

    move-result v0

    return v0
.end method

.method public isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mIsFilterChanging:Z

    return v0
.end method

.method public isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isLiveStickerSupported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isLiveStickerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isOnDrawTasksEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->reset()V

    return-void
.end method

.method protected onFilterWrapChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->runOnDraw(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$4;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$4;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->runOnDraw(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public processData([B)V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "processData method is not supported, Please set the mIsOutputTextureIdEnable is false"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    sget-object v2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-eq v0, v2, :cond_1

    const-string p1, "%s format is not supported "

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->runPendingOnDrawTasks()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->processVideoSampleBuffer([B)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->updateTargetsForVideoCameraUsingCacheTexture(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->getImageBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    invoke-virtual {p0, v0, p1, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->convertRGBAToYUV([I[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V

    return-void
.end method

.method public processDataToTexture([B)I
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "processDataToTexture method is not supported, Please set the mIsOutputTextureIdEnable is true"

    new-array v0, v2, [Ljava/lang/Object;

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    sget-object v3, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-eq v0, v3, :cond_1

    const-string p1, "%s format is not supported "

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->runPendingOnDrawTasks()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->processVideoSampleBuffer([B)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->updateTargetsForVideoCameraUsingCacheTexture(J)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return p1
.end method

.method protected processVideoSampleBuffer([B)V
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputImageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->convertYUVFrameDataToRGBA([B[ILorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->checkOutputFramebuffer()V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v5, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v6, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v9, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public removeAllLiveSticker()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h()V

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->destroyFramebuffer()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->removeAllTargets()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputPixelBuffer:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_2
    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->destroy()V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->destroyOutput()V

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->n:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mRunOnDraw:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->a(Ljava/util/Queue;)V

    return-void
.end method

.method public setCameraFacing(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e()V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor$TuSDKFilterProcessorDelegate;

    return-void
.end method

.method public final setEnableLiveSticker(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->isLiveStickerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "Sorry, face feature is not supported on this device"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->j:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->j:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_1
    iget-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-nez p1, :cond_2

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->o:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setDelegate(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->m:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->g()V

    return-void
.end method

.method public setHorizontallyMirrorFrontFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e()V

    return-void
.end method

.method public setHorizontallyMirrorRearFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->f:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e()V

    return-void
.end method

.method public setOutputOriginalImageOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->d:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e()V

    return-void
.end method

.method public showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->isEnableLiveSticker()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Please set setEnableLiveSticker to true before use live sticker"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->getValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const-string p1, "Too many live stickers in the group, please try to remove some stickers first."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-nez v0, :cond_3

    new-instance v0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->i:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "Only live sticker could be used here"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->isFilterChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mIsFilterChanging:Z

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$1;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected switchFilterOnThread(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->onFilterWrapChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->h()V

    new-instance p1, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$2;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    return-void
.end method

.method protected updateTargetsForVideoCameraUsingCacheTexture(J)V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v5

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->wantsMonochromeInput()Z

    move-result v5

    invoke-interface {v3, v5}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setCurrentlyReceivingMonochromeInput(Z)V

    :cond_1
    iget-object v5, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
