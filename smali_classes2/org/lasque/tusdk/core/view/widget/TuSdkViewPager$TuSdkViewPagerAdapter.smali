.class Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TuSdkViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;->tuSdkViewPagerTotal()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;)Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerDelegate;->onTuSdkViewPagerBuild(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager$TuSdkViewPagerAdapter;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;

    move-object v1, p3

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkViewPager;->viewWillPrimary(ILandroid/support/v4/app/Fragment;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
