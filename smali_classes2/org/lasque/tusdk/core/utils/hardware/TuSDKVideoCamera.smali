.class public abstract Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;
    }
.end annotation


# instance fields
.field private A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

.field private B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

.field private C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

.field private D:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field private E:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

.field private F:F

.field private G:Z

.field private H:Z

.field private I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

.field private J:J

.field private K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

.field private L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

.field private M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

.field private N:Z

.field private O:I

.field private P:F

.field private Q:Z

.field private R:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

.field private S:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

.field private T:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

.field private U:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

.field private V:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

.field private a:Ljavax/microedition/khronos/egl/EGLContext;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:F

.field private f:F

.field private g:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field private h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field private i:J

.field private j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

.field private final k:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field protected mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field protected mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

.field private n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

.field private o:Z

.field private p:Z

.field private q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

.field private r:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/graphics/Bitmap;

.field private w:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private x:Z

.field private y:Z

.field private z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->facing:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->e:F

    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    iput-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    sget-object v3, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->r:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->u:Z

    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->F:F

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->H:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->J:J

    const/high16 v3, -0x1000000

    iput v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->O:I

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->Q:Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->S:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->V:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->l:Z

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->m:Z

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p1

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_1

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    goto :goto_1

    :cond_1
    iput v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->initCamera()V

    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d:I

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d:I

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/seles/output/SelesSmartView;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->r:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;->onVideoCameraScreenShot(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->c()V

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$6;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$6;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object p1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object p1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopVideoDataEncoder()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startVideoDataEncoder()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderModeContinuously()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderModeDirty()V

    :goto_0
    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableLiveStickr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->J:J

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    iget-boolean p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->s:Z

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->J:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)V
    .locals 0

    new-instance p4, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)V

    invoke-static {p4}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object p1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object p1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopVideoDataEncoder()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startVideoDataEncoder()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->c()V

    return-void
.end method

.method private b()Z
    .locals 1

    instance-of v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    const-string v2, "smoothing"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableBeauty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->F:F

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->submitFilterParameter()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableLiveStickr()Z

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableLiveStickr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->setEnableFaceDetection(Z)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f()V

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    return-object p0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;->onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->o:Z

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->r:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    return-void
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->V:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getStickers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateStickers(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionRatio()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->setDisplayRect(Landroid/graphics/RectF;F)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->T:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->U:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioDataDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->startRecording()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    const-string v0, "Can not record audio"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isFaceBeautySupported()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isFaceBeautySupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    return-void
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->canSupportAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->i:J

    if-eqz p1, :cond_1

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$3;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "autoFocus"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1, v2, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;->onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V

    :cond_3
    return-void
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;)V

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void
.end method

.method public autoMetering(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method protected buildSelesView()Lorg/lasque/tusdk/core/seles/output/SelesSmartView;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Can not find holderView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getEnableFixedFramerate()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setEnableFixedFrameRate(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    return-object v0
.end method

.method public canSupportAutoFocus()Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public canSupportFlash()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->supportFlash(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final captureImage()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoCameraShotEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You are not allowed to capture image, please see http://tusdk.com"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->getTerminalFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/seles/filters/SelesFilter;)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isBackFacingCameraPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->computerOutputOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method public changeRegionRatio(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->changeWithRatio(FLorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;)Landroid/graphics/RectF;

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->removeAllTargets()V

    return-void
.end method

.method public getAntiBandingMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->antiBandingType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    return-object v0
.end method

.method public getAudioDataDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->E:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    return-object v0
.end method

.method public getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    return-object v0
.end method

.method public getBeautyLevel()F
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->F:F

    return v0
.end method

.method protected getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_0
    return-object p1
.end method

.method protected getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->R:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    return-object v0
.end method

.method public getDeviceAngle()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getDeviceAngle()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->r:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method protected getEnableFixedFramerate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->u:Z

    return v0
.end method

.method public getFlashMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getFlashMode(Landroid/hardware/Camera$Parameters;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-nez v0, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0
.end method

.method public getFocusMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->focusModeType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0
.end method

.method public getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    return-object v0
.end method

.method protected getHardVideoDataEncoder()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$9;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$9;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setOutputRegion(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoDataDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->w:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    invoke-interface {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->updateWaterMark(Landroid/graphics/Bitmap;ILorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-object v0
.end method

.method public getLastFocusTime()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->i:J

    return-wide v0
.end method

.method public getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->computerOutputOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v1, v2, v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v1
.end method

.method public getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewEffectScale()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    return v0
.end method

.method public getPreviewRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->e:F

    return v0
.end method

.method public getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;

    invoke-direct {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setWrapSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    return-object v0
.end method

.method public getRegionRatio()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    return v0
.end method

.method public getRegionViewColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->O:I

    return v0
.end method

.method public getRendererFPS()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->getRendererFPS()I

    move-result v0

    return v0
.end method

.method protected getSoftVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->initEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoDataDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    return-object v0
.end method

.method public getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    return-object v0
.end method

.method public getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    return-object v0
.end method

.method public getVideoDataDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->D:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-object v0
.end method

.method protected getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-object v0
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public getWaterMarkImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWaterMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->w:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object v0
.end method

.method protected initCamera()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setPreviewMaxSize(I)V

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setEnableFixedFramerate(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->buildSelesView()Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->l:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setZOrderOnTop(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-boolean v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->m:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setZOrderMediaOverlay(Ljava/lang/Boolean;)V

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v3

    invoke-interface {v3}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setDisplayRect(Landroid/graphics/RectF;)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setEnableBeauty(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setOutputImageOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setHorizontallyMirrorFrontFacingCamera(Z)V

    return-void
.end method

.method public initOutputSettings()V
    .locals 0

    return-void
.end method

.method protected isCameraFacingChangeing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    return v0
.end method

.method protected isCanCaptureAudio()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisableContinueFoucs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->N:Z

    return v0
.end method

.method public isDisableMirrorFrontFacing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->c:Z

    return v0
.end method

.method public isDisplayGuideLine()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->Q:Z

    return v0
.end method

.method public isEnableAudioCapture()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->H:Z

    return v0
.end method

.method public isEnableBeauty()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->G:Z

    return v0
.end method

.method public isEnableFaceDetection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->s:Z

    return v0
.end method

.method public isEnableLiveStickr()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->t:Z

    return v0
.end method

.method public final isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->o:Z

    return v0
.end method

.method public isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

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

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isLiveStickerSupported()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    return v0
.end method

.method protected isRecordingPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    return v0
.end method

.method public isUnifiedParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b:Z

    return v0
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public mute(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->C:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->mute(Z)V

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->H:Z

    return-void
.end method

.method public onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_0
    return-void
.end method

.method protected onCameraStarted()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onCameraStarted()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateOutputFilterSettings()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->resumeCameraCapture()V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onDestroy()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->removeAllLiveSticker()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_6
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    :cond_7
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->checkAppAuth()V

    return-void
.end method

.method protected onInitConfig(Landroid/hardware/Camera;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onInitConfig(Landroid/hardware/Camera;)V

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isUnifiedParameters()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->unifiedParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getPreviewEffectScale()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getPreviewRatio()F

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IFF)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->videoFocusModes:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->focusModeType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFlashMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFlashMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isBackFacingCameraPresent()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method protected onMainThreadStart()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onMainThreadStart()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->requestRender()V

    :cond_0
    return-void
.end method

.method protected onPreviewStarted()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onPreviewStarted()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startRecording()V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startVideoDataEncoder()V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->pauseCameraCapture()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Z)V

    return-void
.end method

.method protected pauseEncoder()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getHardVideoDataEncoder()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getHardVideoDataEncoder()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->pausdRecording()V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopAudioRecording()V

    return-void
.end method

.method public removeAllLiveSticker()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g()V

    :cond_0
    return-void
.end method

.method public resetVideoQuality(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->resumeCameraCapture()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Z)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    return-void
.end method

.method public rotateCamera()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->rotateCamera()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isFrontFacingCameraPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x901022

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x901021

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public setAntibandingMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setAntibanding(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setAudioCaptureSetting(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->T:Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    return-void
.end method

.method public setAudioCaptureSetting(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->U:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-void
.end method

.method public setAudioDataDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->E:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_1
    return-void
.end method

.method public setBeautyLevel(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->F:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->R:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    return-void
.end method

.method public setDisableContinueFoucs(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->N:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->N:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setDisableContinueFoucs(Z)V

    :cond_0
    return-void
.end method

.method public setDisableMirrorFrontFacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->c:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateOutputFilterSettings()V

    return-void
.end method

.method public setDisplayGuideLine(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->Q:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setGuideLineViewState(Z)V

    :cond_0
    return-void
.end method

.method public setEnableAudioCapture(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->H:Z

    return-void
.end method

.method public setEnableBeauty(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->G:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->G:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->G:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->F:F

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$2;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnableFaceDetection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->s:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d()V

    return-void
.end method

.method public setEnableFixedFramerate(Z)V
    .locals 2

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->u:Z

    return-void
.end method

.method public setEnableLiveSticker(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p1, "Sorry, Live sticker could only be used with video hardware encoder."

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isLiveStickerSupported()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "Sorry, face feature is not supported on this device"

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->t:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->t:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_2
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->t:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-nez p1, :cond_3

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->S:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setDelegate(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;)V

    :cond_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d()V

    return-void
.end method

.method public setFlashMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportFlash(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFlashMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p1, v0, p2, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setFocusPoint(Landroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusPoint(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setFocusTouchView(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "The setFocusTouchView must extend TuFocusTouchView: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->viewWillDestory()V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionRatio()F

    move-result v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setRatio(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionViewColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setDisplayRect(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setCamera(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setDisableFocusBeep(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isDisableContinueFoucs()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setDisableContinueFoucs(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setGuideLineViewState(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->setRegionPercent(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->M:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setHardVideoDataEncoder(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    return-void
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    return-void
.end method

.method public setPreviewEffectScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->f:F

    return-void
.end method

.method public setPreviewMaxSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d:I

    return-void
.end method

.method public setPreviewRatio(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->e:F

    return-void
.end method

.method public setRegionHandler(Lorg/lasque/tusdk/impl/view/widget/RegionHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    return-void
.end method

.method public setRegionRatio(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->L:Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->P:F

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setRatio(F)V

    :cond_0
    return-void
.end method

.method public setRegionViewColor(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->O:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->O:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setRendererFPS(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setRendererFPS(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$4;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$4;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-interface {v0, p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$TuSDKVideoCameraDelegate;->onVideoCameraStateChanged(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->q:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-interface {v0, p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;->cameraStateChanged(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setInputTextureSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getSelesRotateShotOutput()Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_3
    return-void
.end method

.method public setUnifiedParameters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b:Z

    return-void
.end method

.method public setVideoCaptureSetting(Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->z:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    return-void
.end method

.method public setVideoDataDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->D:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-void
.end method

.method public final setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoCameraBitrateEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "You are not allowed to change camera bitrate, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    iput-object v0, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    :cond_0
    return-void
.end method

.method public setWaterMarkImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->v:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->w:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-void
.end method

.method public final showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 6

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoCameraStickerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to user camera sticker, please see http://tusdk.com"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableLiveStickr()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Please set setEnableLiveSticker to true before use live sticker"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->getValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    const-string p1, "Too many live stickers in the group, please try to remove some stickers first."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V

    new-instance v0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->K:Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g()V

    return-void

    :cond_5
    :goto_0
    const-string p1, "Only live sticker could be used here"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startRecording()V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getRegionRatio()F

    move-result v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    const-string v1, "Output video size ratio not be same as regionRatio, regionRatio will be ignored."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setRegionRatio(F)V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startVideoDataEncoder()V

    return-void
.end method

.method protected startVideoDataEncoder()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getSoftVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;->start()Z

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateOutputFilter()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getHardVideoDataEncoder()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$10;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$10;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected stopAudioRecording()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getAudioRecoder()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->stopRecording()V

    :cond_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isRecording()Z

    move-result v0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->o:Z

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Z)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->I:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->h:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    :cond_2
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopVideoDataEncoder()V

    :cond_3
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->p:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    :cond_4
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->stopCameraCapture()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->x:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->y:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopAudioRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopVideoDataEncoder()V

    return-void
.end method

.method protected stopVideoDataEncoder()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;->stop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->A:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->stopRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isFilterChanging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->o:Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$5;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$5;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateCameraView()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->n:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->requestRender()V

    :cond_0
    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    return-void
.end method

.method protected updateOutputFilter()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateOutputFilterSettings()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateOutputFilterSettings()V
    .locals 0

    return-void
.end method
