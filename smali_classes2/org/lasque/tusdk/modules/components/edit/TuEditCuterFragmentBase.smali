.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

.field private b:Landroid/graphics/RectF;

.field private c:F

.field private d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private e:I

.field private f:F

.field protected mRegionLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->mRegionLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->isOnlyReturnCuter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->backUIThreadNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCuterImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/TuSdkResult;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public final getCurrentRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->f:F

    return v0
.end method

.method public final getCurrentRatioType()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getRatioTypes()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    :cond_1
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->setCurrentRatioType(I)V

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->e:I

    return v0
.end method

.method public abstract getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end method

.method public final getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method public getImageView()Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setInvalidateTargetView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method public abstract getRatioTypes()[I
.end method

.method public final getZoomRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getZoomScale()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->c:F

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->c:F

    return v0
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCurrentRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCurrentRatio()F

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageSizeRatio:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getZoomedRect()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getCurrentZoom()F

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->cutScale:F

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCurrentRatioType()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRatioType:I

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase$2;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract isOnlyReturnCuter()Z
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected onRegionLayoutChanged(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRatio()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->changeRegionRatio(Landroid/graphics/Rect;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCurrentRatioType(I)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->e:I

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->e:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->f:F

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioActionType(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public final setCuterResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->setZoomRect(Landroid/graphics/RectF;)V

    iget v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->cutScale:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->setZoomScale(F)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->setImageOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    iget p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->cutRatioType:I

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->setCurrentRatioType(I)V

    return-void
.end method

.method public final setImageOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public final setZoomRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setZoomScale(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->c:F

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {p0, p1, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const-string p1, "Can not find input image."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setImageBitmap(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getRatioTypes()[I

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getRatioTypes()[I

    move-result-object p1

    aget p1, p1, v0

    if-eq p1, v1, :cond_6

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCurrentRatio()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getCurrentRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->setRegionRatio(F)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getZoomRect()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setZoom(F)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getZoomScale()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p1

    mul-float/2addr v4, v3

    invoke-interface {v0, v1, v2, v4}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setZoom(FFF)V

    :cond_5
    :goto_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuterFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditCuterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
