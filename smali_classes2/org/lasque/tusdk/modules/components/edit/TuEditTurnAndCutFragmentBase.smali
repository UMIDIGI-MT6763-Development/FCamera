.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

.field protected mRegionLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->mRegionLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;

    invoke-direct {p2, p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v3, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    sget-object v2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0, v0, v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public abstract getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end method

.method public abstract getCutSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setInvalidateTargetView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method public getSelectedFilterCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getZoomedRect()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getSelectedFilterCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$4;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$4;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleSwitchFilter(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a:Ljava/lang/String;

    const-string v1, "lsq_edit_filter_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editEntryFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected onRegionLayoutChanged(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRatio()F

    move-result p1

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->changeRegionRatio(Landroid/graphics/Rect;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected processedFilter(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setImageBitmapWithAnim(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->hubDismiss()V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const-string p1, "Can not find input image."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->setRegionSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setZoom(F)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
