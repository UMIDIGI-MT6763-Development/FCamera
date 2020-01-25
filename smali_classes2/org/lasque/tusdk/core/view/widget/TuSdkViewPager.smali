.class public Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;
.super Landroid/support/v4/view/ViewPager;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegateImpl;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/support/v4/app/FragmentManager;Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;)V
    .locals 0

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    new-instance p2, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;

    invoke-direct {p2, p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$PagerOnPageChangeListener;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$1;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    return-object v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method public reloadData()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

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
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    return-void
.end method

.method protected viewWillPrimary(ILandroid/support/v4/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;->onTuSdkViewPagerWillPrimary(ILandroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method
