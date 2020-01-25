.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;
.super Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

# interfaces
.implements Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b()V

    new-instance p2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p2, p1, p3, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lorg/lasque/tusdk/core/seles/sources/SelesOutput;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method private b()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->setOutputImageOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->setHorizontallyMirrorFrontFacingCamera(Z)V

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    return-object v0
.end method

.method public autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->canSupportAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isCreatedSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->autoFocus(Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;)V

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

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->captureImage()V

    return-void
.end method

.method public capturePhotoOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isFrontFacingCameraPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isBackFacingCameraPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->viewDegree()I

    move-result v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v2, v1, v3, v0, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->computerOutputOrientation(Landroid/hardware/camera2/CameraCharacteristics;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method

.method protected decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->decodeToBitmapAtAsync([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v1, p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->decodeToBitmapAtAsync([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getRegionRatio()F
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionRatio()F

    move-result v0

    return v0
.end method

.method public getState()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

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

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method protected onCameraStarted()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCameraStarted()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onCameraStarted()V

    return-void
.end method

.method protected onCounfigPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onCounfigPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setRendererFPS(I)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onDestroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onDestroy()V

    return-void
.end method

.method protected onMainThreadStart()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onMainThreadStart()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onMainThreadStart()V

    return-void
.end method

.method protected onTakePictured([B)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->onTakePictured([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->onTakePictured([B)V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->pauseCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->pauseCameraCapture()V

    return-void
.end method

.method protected final playSystemShutter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisableCaptureSound()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->c:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->resumeCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->resumeCameraCapture()V

    return-void
.end method

.method public setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V

    return-void
.end method

.method public setOutputPictureRatio(F)V
    .locals 0

    return-void
.end method

.method public setPreviewRatio(F)V
    .locals 0

    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->stopCameraCapture()V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->stopCameraCapture()V

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->switchFilter(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
