.class public Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z

.field protected mFilterConfigSeekbarDelegate:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

.field protected mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mFilterConfigSeekbarDelegate:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mFilterConfigSeekbarDelegate:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mFilterConfigSeekbarDelegate:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;)V
    .locals 2

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->f:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->f:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->i:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->h:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->f:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    invoke-interface {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->i:I

    invoke-virtual {p0, p1, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->buildAppendSeekbar(Landroid/widget/LinearLayout;I)Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->setFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mFilterConfigSeekbarDelegate:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->setDelegate(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->h:I

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->h:I

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->hiddenDefault()V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->j:Z

    return p1
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_impl_component_widget_filter_config_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public buildAppendSeekbar(Landroid/widget/LinearLayout;I)Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getLayoutId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConfigWrap()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_configWrap"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->e:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;

    return-object v0
.end method

.method public getResetButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_resetButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->b:Landroid/view/View;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getStateBg()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_stateBg"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getStateButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_stateButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->c:Landroid/view/View;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->mOnClickListener:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->c:Landroid/view/View;

    return-object v0
.end method

.method protected handleResetAction()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->reset()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->requestRender()V

    return-void
.end method

.method protected handleShowStateAction()V
    .locals 8

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->j:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->j:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getResetButton()Landroid/view/View;

    move-result-object v3

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v5, 0x104

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v7, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v7, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;

    invoke-direct {v7, p0, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;Z)V

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateButton()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz v1, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    const/high16 v7, 0x42b40000    # 90.0f

    :goto_2
    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz v1, :cond_4

    const v7, 0x3f333333    # 0.7f

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v7, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v3, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->h:I

    :goto_5
    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->heightAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    :cond_7
    :goto_6
    return-void
.end method

.method public hiddenDefault()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getResetButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateButton()Landroid/view/View;

    move-result-object v1

    const v3, 0x3f333333    # 0.7f

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method public loadView()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->i:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getResetButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateButton()Landroid/view/View;

    move-result-object v0

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method protected requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->f:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;->submitParameter()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;->onFilterConfigRequestRender(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V

    :cond_1
    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$FilterConfigViewDelegate;

    return-void
.end method

.method public setSelesFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast p1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->a(Landroid/widget/LinearLayout;Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateBg()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->h:I

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->heightAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->hiddenDefault()V

    return-void
.end method
