.class public abstract Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

# interfaces
.implements Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface$ParameterConfigViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

.field protected mButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

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

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getConfigView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected asyncNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;->onTuFilterResultFragmentEditedAsync(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result p1

    return p1
.end method

.method protected dispatcherViewClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getCancelButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->equalViewIds(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->handleBackButton()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getCompleteButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->equalViewIds(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->handleCompleteButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getCancelButton()Landroid/view/View;
.end method

.method public abstract getCompleteButton()Landroid/view/View;
.end method

.method public abstract getConfigView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;",
            ">()TT;"
        }
    .end annotation
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;

    return-object v0
.end method

.method protected getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

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

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->enableTouchForOrigin()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method protected handleBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$3;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$3;-><init>(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getCancelButton()Landroid/view/View;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getCompleteButton()Landroid/view/View;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getConfigView()Landroid/view/View;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    return-void
.end method

.method protected notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->showResultPreview(Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;->onTuFilterResultFragmentEdited(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->requestRender()V

    return-void
.end method

.method public onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->reset()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->requestRender()V

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result p2

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;->seekTo(F)V

    return-void
.end method

.method public readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result p1

    return p1
.end method

.method protected refreshConfigView()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;-><init>(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected requestRender()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->requestRender()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$TuFilterResultFragmentDelegate;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->setErrorListener(Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;)V

    return-void
.end method

.method protected final setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-void
.end method

.method protected setImageViewFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadImageWithThread()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getConfigView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->refreshConfigView()V

    return-void
.end method
