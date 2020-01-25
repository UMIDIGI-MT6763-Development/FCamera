.class public Lorg/lasque/tusdk/core/view/TuSdkProgressBar;
.super Landroid/widget/ProgressBar;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->b:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->b:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->b:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkProgressBar;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->a:Z

    return p0
.end method


# virtual methods
.method protected initView()V
    .locals 0

    return-void
.end method

.method public loadView()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->setMax(I)V

    return-void
.end method

.method public showWithAnim(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->setVisibility(I)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkProgressBar;->b:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    return-void
.end method
