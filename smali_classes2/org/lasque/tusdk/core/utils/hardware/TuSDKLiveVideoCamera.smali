.class public Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;

.field private d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    return-void
.end method

.method private a(Ljava/nio/IntBuffer;[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v2, v3

    const/16 v3, 0x11

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    array-length v3, p2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const-string p1, "bytes size not equal: %d, %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, v0, :cond_2

    iget p3, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYUV([BII[I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->YV12:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, v0, :cond_3

    iget p3, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYV12([BII[I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->I420:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    if-ne p3, v0, :cond_4

    iget p3, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoI420([BII[I)V

    :cond_4
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;Ljava/nio/IntBuffer;[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a(Ljava/nio/IntBuffer;[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c()V

    return-void
.end method

.method private a()Z
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoStreamEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The video streaming feature has been expired, please contact us via http://tusdk.com"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    return-void
.end method

.method public getFrameDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;

    return-object v0
.end method

.method protected initCamera()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->initCamera()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->setEnableFaceDetection(Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->setEnableFaceDetection(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->setEnableLiveSticker(Z)V

    return-void
.end method

.method public initOutputSettings()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->initOutputSettings()V

    new-instance v0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->setEnableAudioCapture(Z)V

    return-void
.end method

.method protected onCameraStarted()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->onCameraStarted()V

    const-wide/32 v0, 0x900000

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->onDestroy()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public setFrameDelegate(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$TuSDKLiveVideoCameraDelegate;

    return-void
.end method

.method public startRecording()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b()Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->startWork()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->updateOutputFilter()V

    :cond_1
    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startRecording()V

    return-void
.end method

.method protected startVideoDataEncoder()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startVideoDataEncoder()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->b()Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->startWork()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->updateOutputFilter()V

    :cond_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopCameraCapture()V

    const-wide/32 v0, 0x900001

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$2;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    return-void
.end method

.method protected stopVideoDataEncoder()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopVideoDataEncoder()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isFilterChanging()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->isNormalFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->getGroupTypeByCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->isNormalFilter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const-string v0, "Only live video filter [%s] could be used here, please visit http://tusdk.com."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->switchFilter(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateOutputFilterSettings()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->updateOutputFilterSettings()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isFrontFacingCameraPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnableHorizontallyFlip(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->setEnableHorizontallyFlip(Z)V

    :cond_2
    :goto_1
    return-void
.end method
