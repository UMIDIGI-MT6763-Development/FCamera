.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d:Ljava/lang/Runnable;

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->e:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "aperture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;->setParams(Ljava/util/List;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->setConfigViewShowState(Z)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->c()V

    return-void
.end method

.method private a(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->reset()V

    const-string v1, "selective"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b(F)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->c:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->e()Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(Z)V

    return-void
.end method

.method private b(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->c:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    :cond_1
    const-string v1, "maskAlpha"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->requestRender()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->requestRender()V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;->setDuration(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;->cancel()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    return-object v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->requestRender()V

    return-void
.end method

.method private f()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected handleCompleteButton()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d()V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->e()Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$MaskAnimation;->cancel()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "maskAlpha"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->reset(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->requestRender()V

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->handleCompleteButton()V

    return-void
.end method

.method protected handleConfigCompeleteButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected handleSelectiveAction(IF)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a:I

    if-ne v0, p1, :cond_1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a:I

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(F)V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadView(Landroid/view/ViewGroup;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editApertureFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->f()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->disableTouchForOrigin()V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->e:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V

    return-void
.end method

.method public onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V

    return-void
.end method

.method public readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F

    move-result p1

    return p1
.end method

.method protected abstract setConfigViewShowState(Z)V
.end method
