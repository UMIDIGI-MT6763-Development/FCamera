.class Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->b:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->b:I

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->b:I

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->c:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;->onTuSdkViewPagerScrolled()V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;->onTuSdkViewPagerChanged(I)V

    :cond_0
    return-void
.end method
