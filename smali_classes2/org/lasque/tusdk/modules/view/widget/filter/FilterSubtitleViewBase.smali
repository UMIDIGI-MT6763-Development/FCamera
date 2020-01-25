.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;
.super Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewInterface;


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$2;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$3;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a()V

    return-void
.end method


# virtual methods
.method protected getGroupName(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupNameKey(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected startScaleAnimation()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;->showViewIn(Z)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewBase;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method
