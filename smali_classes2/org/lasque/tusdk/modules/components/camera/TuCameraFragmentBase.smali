.class public abstract Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->c:I

    new-instance v0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->e:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    return-void
.end method


# virtual methods
.method protected asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected abstract configCamera(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;)V
.end method

.method public abstract getAvPostion()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
.end method

.method public getCamera()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    return-object v0
.end method

.method public abstract getCameraView()Landroid/widget/RelativeLayout;
.end method

.method public abstract getCameraViewRatio()F
.end method

.method public getCurrentRatio()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getCameraViewRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getCameraViewRatio()F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->d:I

    if-lez v0, :cond_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getCurrentRatioType()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->d:I

    return v0
.end method

.method protected getPreviewOffsetTopPercent(I)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final getRatioType()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->c:I

    return v0
.end method

.method public getRequiredPermissions()[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCameraRatio()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getRatioType()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->d:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/RatioType;->nextRatioType(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->setCurrentRatioType(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getRegionHandler()Lorg/lasque/tusdk/impl/view/widget/RegionHandler;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->d:I

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getPreviewOffsetTopPercent(I)F

    move-result v2

    invoke-interface {v1, v2}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler;->setOffsetTopPercent(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    move-result-object v1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->changeRegionRatio(F)V

    return-void
.end method

.method protected handleCaptureButton()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->captureImage()V

    :cond_0
    return-void
.end method

.method protected handleCaptureWithVolume()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->captureImage()V

    :cond_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_capture_with_volume:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected handleCloseButton()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->dismissActivityWithAnim()V

    return-void
.end method

.method protected handleFlashModel(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_flash_auto:J

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-ne p1, v2, :cond_1

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_flash_on:J

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-ne p1, v2, :cond_2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_flash_off:J

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->setFlashMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V

    :cond_3
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected handleGuideLineButton()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->isDisplayGuideLine()Z

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->adapter()Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->setDisplayGuideLine(Z)V

    return-void
.end method

.method protected handleSwitchButton()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->rotateCamera()V

    :cond_0
    return-void
.end method

.method protected handleSwitchFilter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->switchFilter(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected initCameraView()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getAvPostion()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->getCameraView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/TuSdk;->camera(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->addOrientationListener()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->e:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->setCameraListener(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface$TuSdkStillCameraListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->configCamera(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->startCameraCapture()V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected abstract onCameraStateChangedImpl(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
.end method

.method protected abstract onCameraTakedPictureImpl(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;Lorg/lasque/tusdk/core/TuSdkResult;)V
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->onDestroyView()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    :cond_0
    return-void
.end method

.method protected onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 0

    return-void
.end method

.method protected setCurrentRatioType(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_ratio_orgin:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_ratio_9_16:J

    goto :goto_0

    :cond_1
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_ratio_3_4:J

    goto :goto_0

    :cond_2
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_ratio_2_3:J

    goto :goto_0

    :cond_3
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->camera_action_ratio_1_1:J

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->d:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public final setRatioType(I)V
    .locals 3

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->c:I

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->getScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->radioType(F)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->b:I

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    and-int v2, v0, p1

    if-ne v0, v2, :cond_1

    or-int/2addr p1, v1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuCameraFragmentBase;->c:I

    :cond_1
    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->cameraFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
