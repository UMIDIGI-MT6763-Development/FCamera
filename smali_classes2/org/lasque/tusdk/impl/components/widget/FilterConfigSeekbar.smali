.class public Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

.field private e:Ljava/lang/String;

.field private f:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

.field private g:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "%02d"

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->e:Ljava/lang/String;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->g:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "%02d"

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->e:Ljava/lang/String;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->g:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "%02d"

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->e:Ljava/lang/String;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->g:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    return-void
.end method

.method private a(F)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->b(F)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->f:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-interface {p1, p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;->onSeekbarDataChanged(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->a(F)V

    return-void
.end method

.method private b(F)V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getNumberView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getNumberView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_impl_component_widget_filter_config_seekbar"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDelegate()Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->f:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    return-object v0
.end method

.method public final getNumberView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_numberView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSeekbar()Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->a:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    if-nez v0, :cond_0

    const-string v0, "lsq_seekView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->a:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->a:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->g:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setDelegate(Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->a:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->b:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->setFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->f:Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;

    return-void
.end method

.method public setFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 3

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->d:Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getSeekbar()Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setProgress(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsq_filter_set_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->b(F)V

    return-void
.end method

.method public setValueFormatString(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;->e:Ljava/lang/String;

    return-void
.end method
