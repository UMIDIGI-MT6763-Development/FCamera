.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->isOnlyReturnFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->backUIThreadNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitScale()F

    move-result v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected asyncProcessingFilter(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method public getImageView()Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->enableTouchForOrigin()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method protected handleCompleteButton()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$4;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$4;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected handleSwitchFilter(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v0, "lsq_edit_filter_processing"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$2;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public abstract isOnlyReturnFilter()Z
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    return-void
.end method

.method public abstract notifyFilterConfigView()V
.end method

.method protected processedFilter()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->hubDismiss()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->notifyFilterConfigView()V

    return-void
.end method

.method public setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 3

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editFilterFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const-string p1, "Can not find input image."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditFilterFragmentBase;)V

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
