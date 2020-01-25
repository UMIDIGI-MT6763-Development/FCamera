.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;
.super Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;

# interfaces
.implements Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;


# instance fields
.field private final b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    new-instance p2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera$1;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->c:Landroid/hardware/Camera$ShutterCallback;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->a()V

    new-instance p2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p2, p1, p3, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lorg/lasque/tusdk/core/seles/sources/SelesOutput;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    return-void
.end method

.method private a()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->setOutputImageOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->setHorizontallyMirrorFrontFacingCamera(Z)V

    return-void
.end method


# virtual methods
.method public adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    return-object v0
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->canSupportAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isCreatedSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;->onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V

    :cond_2
    return-void
.end method

.method public captureImage()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->captureImage()V

    return-void
.end method

.method public capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isFrontFacingCameraPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isBackFacingCameraPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->viewDegree()I

    move-result v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->inputCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v2, v1, v3, v0, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->computerOutputOrientation(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method

.method protected decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1, p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->decodeToBitmapAtAsync([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getRegionRatio()F
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionRatio()F

    move-result v0

    return v0
.end method

.method protected getShutterCallback()Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisableCaptureSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->c:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method public getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    move-result-object v0

    return-object v0
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

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method protected onCameraStarted()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onCameraStarted()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onCameraStarted()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onDestroy()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onDestroy()V

    return-void
.end method

.method protected onInitConfig(Landroid/hardware/Camera;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onInitConfig(Landroid/hardware/Camera;)V

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    const/4 v1, 0x0

    aget v1, v0, v1

    div-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aget v0, v0, v2

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setRendererFPS(I)V

    return-void
.end method

.method protected onMainThreadStart()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onMainThreadStart()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onMainThreadStart()V

    return-void
.end method

.method protected onTakePictured([B)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->onTakePictured([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onTakePictured([B)V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->pauseCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->pauseCameraCapture()V

    return-void
.end method

.method public resumeCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->resumeCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->resumeCameraCapture()V

    return-void
.end method

.method public setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V

    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->stopCameraCapture()V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera;->stopCameraCapture()V

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->switchFilter(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
