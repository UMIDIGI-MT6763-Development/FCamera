.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Landroid/hardware/camera2/CameraDevice;

.field private c:Landroid/hardware/camera2/CameraCaptureSession;

.field private d:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private e:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private f:Landroid/media/ImageReader;

.field private g:Z

.field private h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:F

.field private n:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field private o:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field private p:J

.field private q:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

.field private r:Z

.field private s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

.field private t:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private u:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private z:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->i:Z

    const/high16 p2, 0x3f400000    # 0.75f

    iput p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->t:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->u:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$12;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$12;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->z:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    :goto_0
    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->l:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->l:I

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->l:I

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->computerScaleSize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    new-instance v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-direct {v2, p1, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->setScaleSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getScaleSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getRegionRatio()F

    move-result v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->computerMinMaxSideInRegionRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->setOutputRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {v2, p2, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    new-instance p2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$16;

    invoke-direct {p2, p0, p4, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$16;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->w:Ljava/lang/Integer;

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->x:Ljava/lang/Integer;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->w:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->x:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    move v1, v2

    :pswitch_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$4;

    invoke-direct {p1, p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Ljava/lang/Integer;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Z)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;[BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b()Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b()Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$11;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->i()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onConfigCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->z:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "takePictureAtAsync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g:Z

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCapturePhotoStateChanged(Z)V

    return-void
.end method

.method private a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 6

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$14;

    invoke-direct {p1, p0, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$14;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$15;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method private b()Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->buildJpegImageReader()Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    return-object v0
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1, p1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->transforFaces(Landroid/hardware/camera2/CameraCharacteristics;Lorg/lasque/tusdk/core/struct/TuSdkSize;[Landroid/hardware/camera2/params/Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Ljava/util/List;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$13;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;->onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "changeOuputSize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->buildJpegImageReader()Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->continuePreview()V

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b()Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->_isEnableFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCounfigPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getSessionPreviewStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startPreview Error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->w:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->x:Ljava/lang/Integer;

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->_isEnableFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportFaceDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    return-void
.end method


# virtual methods
.method public _isEnableFaceDetection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->r:Z

    return v0
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->canSupportAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->p:J

    return-void
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->setFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;)V

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void
.end method

.method public autoMetering(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method protected buildJpegImageReader()Landroid/media/ImageReader;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->streamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->pictureOptimalSize(Landroid/content/Context;[Landroid/util/Size;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public canSupportAutoFocus()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportAutofocus(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public canSupportFlash()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->supportFlash(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->canSupportAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method public capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method public capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$8;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method

.method public capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$6;

    invoke-direct {v1, p0, v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$6;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;ZLorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$7;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$7;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method public capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isBackFacingCameraPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->computerOutputOrientation(Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method protected computerPreviewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->streamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewEffectScale()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->previewOptimalSize(Landroid/content/Context;[Landroid/util/Size;IF)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->createSize(Landroid/util/Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method protected continuePreview()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getSessionPreviewStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "continuePreview error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageDecode([BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getAntiBandingMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->q:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method protected getCameraStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->t:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
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

.method public getFlashMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->n:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-nez v0, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->n:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->n:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0
.end method

.method public getFocusMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->o:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->focusModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    move-result-object v0

    return-object v0
.end method

.method public getLastFocusTime()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->p:J

    return-wide v0
.end method

.method public final getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getPreviewBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method public getPreviewEffectScale()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    return v0
.end method

.method protected getPreviewSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public getRegionRatio()F
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    return v0
.end method

.method protected getSessionCaptureStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method protected getSessionPreviewStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->u:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method public isAutoReleaseAfterCaptured()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->j:Z

    return v0
.end method

.method public isCapturePhoto()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g:Z

    return v0
.end method

.method public isDisableMirrorFrontFacing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->k:Z

    return v0
.end method

.method public isEnableFaceDetection()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->_isEnableFaceDetection()Z

    move-result v0

    return v0
.end method

.method public isUnifiedParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->i:Z

    return v0
.end method

.method protected observableAutofocus(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Z)V

    :cond_1
    :goto_1
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0
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

    return-void
.end method

.method protected onCameraStarted()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->onCameraStarted()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g()V

    return-void
.end method

.method protected onCapturePhotoStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onConfigCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method protected onCounfigPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method protected onImageCaptured(Landroid/media/ImageReader;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$10;

    invoke-direct {p1, p0, v1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$10;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;[BLorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onTakePictureFailed()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->startCameraCapture()V

    return-void
.end method

.method protected onTakePictured([B)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->isAutoReleaseAfterCaptured()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->stopCameraCapture()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->pauseCameraCapture()V

    :goto_0
    return-void
.end method

.method public pauseCameraCapture()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->pauseCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "pauseCameraCapture"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract playSystemShutter()V
.end method

.method public resumeCameraCapture()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->resumeCameraCapture()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g()V

    return-void
.end method

.method public setAntibandingMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V
    .locals 0

    return-void
.end method

.method public setAutoReleaseAfterCaptured(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->j:Z

    return-void
.end method

.method public setDisableMirrorFrontFacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->k:Z

    return-void
.end method

.method public setEnableFaceDetection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->r:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->h()V

    :goto_0
    return-void
.end method

.method public setFlashMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->n:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->canSupportFlash()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->o:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->o:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p1, v0, v1, p2, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->setFocusMode(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFocusPoint(Landroid/graphics/PointF;)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1, p1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->setFocusPoint(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->updatePreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c()V

    :cond_1
    :goto_0
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

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->m:F

    return-void
.end method

.method public setPreviewMaxSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->l:I

    return-void
.end method

.method public setUnifiedParameters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->i:Z

    return-void
.end method

.method public stopCameraCapture()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->stopCameraCapture()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->o:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->s:Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->f:Landroid/media/ImageReader;

    :cond_2
    return-void
.end method

.method protected updatePreview()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->d:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "updatePreview error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
