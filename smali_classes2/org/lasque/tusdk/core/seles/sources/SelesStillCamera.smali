.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface;


# instance fields
.field private b:Z

.field private c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:F

.field private i:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field private j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field private k:J

.field private l:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

.field private m:F

.field private n:F

.field private o:Ljava/lang/Runnable;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->d:Z

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->o:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->p:Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p1

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_0

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    :goto_0
    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->g:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->g:I

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->g:I

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->computerScaleSize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    new-instance v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-direct {v2, p1, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->setScaleSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getScaleSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getRegionRatio()F

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
    new-instance p2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$10;

    invoke-direct {p2, p0, p4, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$10;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;[BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getShutterCallback()Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;

    invoke-direct {v3, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$6;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "takePictureAtAsync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$7;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$7;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b:Z

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onCapturePhotoStateChanged(Z)V

    return-void
.end method

.method private a([BLorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 6

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;

    invoke-direct {p1, p0, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$8;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$9;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$9;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->p:Z

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a(Z)V

    return-void
.end method


# virtual methods
.method public autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->canSupportAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->k:J

    const/4 v0, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->p:Z

    if-eqz p1, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->o:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {p1, v2, v3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "autoFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1, v1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;->onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V

    :cond_3
    return-void
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->setFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;)V

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void
.end method

.method public autoMetering(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public canSupportAutoFocus()Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

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

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

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

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAutoFocusTimer()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V

    return-void
.end method

.method public capturePhotoAsBitmap(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsBitmapCallback;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    return-void
.end method

.method public capturePhotoAsJPEGData(Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;ZLorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;Lorg/lasque/tusdk/core/seles/sources/SelesStillCameraInterface$CapturePhotoAsJPEGDataCallback;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method public capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isBackFacingCameraPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->computerOutputOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method protected decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageDecode([BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public doFocusCallback(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->cancelAutoFocusTimer()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->p:Z

    invoke-interface {p1, v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;->onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->cancelAutoFocus()V

    return-void
.end method

.method public getAntiBandingMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->l:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

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
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->l:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

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

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getFlashMode(Landroid/hardware/Camera$Parameters;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->i:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-nez v0, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->i:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->i:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0
.end method

.method public getFocusMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

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
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0
.end method

.method public getLastFocusTime()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->k:J

    return-wide v0
.end method

.method protected getOutputPictureRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->n:F

    return v0
.end method

.method public final getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getPreviewEffectScale()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    return v0
.end method

.method public getPreviewRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->m:F

    return v0
.end method

.method public getRegionRatio()F
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    return v0
.end method

.method protected getShutterCallback()Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoReleaseAfterCaptured()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->e:Z

    return v0
.end method

.method public isCapturePhoto()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b:Z

    return v0
.end method

.method public isDisableMirrorFrontFacing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->f:Z

    return v0
.end method

.method public isUnifiedParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->d:Z

    return v0
.end method

.method protected onCapturePhotoStateChanged(Z)V
    .locals 0

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
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isUnifiedParameters()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->unifiedParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->a()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getPreviewEffectScale()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getPreviewRatio()F

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IFF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getOutputPictureRatio()F

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->focusModes:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->focusModeType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getFlashMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFlashMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getAntiBandingMode()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setAntibanding(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isBackFacingCameraPresent()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method protected onTakePictureFailed()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->startCameraCapture()V

    return-void
.end method

.method protected onTakePictured([B)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->isAutoReleaseAfterCaptured()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->stopCameraCapture()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->pauseCameraCapture()V

    :goto_0
    return-void
.end method

.method public setAntibandingMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->l:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->l:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setAntibanding(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_1
    return-void
.end method

.method public setAutoReleaseAfterCaptured(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->e:Z

    return-void
.end method

.method public setDisableMirrorFrontFacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->f:Z

    return-void
.end method

.method public setFlashMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->i:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportFlash(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFlashMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

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
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p1, v0, p2, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setFocusPoint(Landroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getCenterIfNull(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusPoint(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setOutputPictureRatio(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->n:F

    return-void
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
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

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->h:F

    return-void
.end method

.method public setPreviewMaxSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->g:I

    return-void
.end method

.method public setPreviewRatio(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->m:F

    return-void
.end method

.method public setUnifiedParameters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->d:Z

    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->b:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->j:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->cancelAutoFocusTimer()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->stopCameraCapture()V

    return-void
.end method
