.class public abstract Lorg/lasque/tusdk/core/activity/TuSdkFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;


# instance fields
.field private a:I

.field private b:Landroid/view/ViewGroup;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/support/v4/app/Fragment;

.field private h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

.field private i:Z

.field private j:Z

.field private k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

.field private l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->enable()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->d()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarLoaded(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->viewDidLoad(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/activity/TuSdkFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->c:Z

    return p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/activity/TuSdkFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->c:Z

    return p1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->disable()V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 1

    iget p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->d:I

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->f:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->f:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setButtonLayoutId(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->e:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setBackButtonId(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    iput-object p0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->setDelegate(Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->disable()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    return-void
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->backStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->showBackButton(Z)V

    return-void
.end method


# virtual methods
.method public addOrientationListener()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->setDelegate(Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->l:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->enable()V

    return-void
.end method

.method public backStackEntryCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->backStackEntryCount()I

    move-result v0

    return v0
.end method

.method public bindSoftInputEvent()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->bindSoftInputEvent()V

    return-void
.end method

.method public dismissActivity()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->dismissActivity()V

    return-void
.end method

.method public dismissActivityWithAnim()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->dismissActivityWithAnim()V

    return-void
.end method

.method public dismissActivityWithAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->dismissActivityWithAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public equalViewIds(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getViewId(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getViewId(Landroid/view/View;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V

    return-void
.end method

.method public getDismissAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getDismissAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    return-object v0
.end method

.method public getNavButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;

    move-result-object p1

    return-object p1
.end method

.method public getOriginFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->g:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getResColor(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getResString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getRootViewLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    return v0
.end method

.method public getSdkActivity()Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->loadView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewId(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method protected abstract initCreateView()V
.end method

.method public isBackButtonShowed()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->isBackButtonShowed()Z

    move-result v0

    return v0
.end method

.method public isFragmentPause()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->j:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isSupportSlideBack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->i:Z

    return v0
.end method

.method protected abstract loadView(Landroid/view/ViewGroup;)V
.end method

.method public navSearchViewSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->searchKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public navSearchViewSetDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setSearchViewDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;)V

    return-void
.end method

.method public varargs navSegmentedAddTexts([I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->addSegmentedText([I)V

    return-void
.end method

.method public varargs navSegmentedAddTexts([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->addSegmentedText([Ljava/lang/String;)V

    return-void
.end method

.method public navSegmentedSetDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setSegmentedDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;)V

    return-void
.end method

.method public navSegmentedSetected(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setSegmentedSelected(I)V

    return-void
.end method

.method public navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->backStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarCancelAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->popFragment()V

    :goto_0
    return-void
.end method

.method public navigatorBarCancelAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->dismissActivityWithAnim()V

    return-void
.end method

.method public navigatorBarHeight()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public navigatorBarLeftAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need overwrite navigatorBarLeftAction in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected navigatorBarLoaded(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V
    .locals 0

    return-void
.end method

.method public navigatorBarRightAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need overwrite navigatorBarRightAction in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    :cond_0
    return-void
.end method

.method public onBackForSlide()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->i:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p1

    :cond_1
    new-instance p3, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;

    invoke-direct {p3, p0, p2}, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;-><init>(Lorg/lasque/tusdk/core/activity/TuSdkFragment;Z)V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->initCreateView()V

    iget p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    if-nez p1, :cond_0

    const-string p1, "can not defind rootViewId"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    invoke-static {p1, p3, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->loadView(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->c()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->viewWillDestory(Landroid/view/View;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->g:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->viewWillDestory()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->viewWillDestory(Landroid/view/View;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method protected onFragmentAnimationEnd(ZZ)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNavigatorBarButtonClicked(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$2;->a:[I

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarRightAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarLeftAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "you need overwrite \'public void onOrientationChanged(LasqueOrientation orien)\' in class:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onPauseFragment()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->j:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onPause()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRefreshData(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a()V

    return-void
.end method

.method public onResumeFragment()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->j:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onResume()V

    return-void
.end method

.method public popFragment()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->popFragment()V

    return-void
.end method

.method public popFragment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->popFragment(Ljava/lang/String;)V

    return-void
.end method

.method public popFragmentRoot()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->popFragmentRoot()V

    return-void
.end method

.method public presentActivity(Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public pushFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public refreshOriginFragment(I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->g:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onRefreshData(I)V

    :cond_0
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsSupportSlideBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->i:Z

    return-void
.end method

.method public setNavLeftButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->left:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavLeftButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->setNavLeftButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->right:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->setNavRightButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavigatorBarId(III)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->d:I

    iput p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->e:I

    iput p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->f:I

    return-void
.end method

.method public setNavigatorBarOnButtom()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOriginFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->g:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setRootViewLayoutId(I)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    if-nez v0, :cond_0

    iput p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a:I

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->getResString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->m:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->m:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showBackButton(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->i:Z

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->showBackButton(Z)V

    return-void
.end method

.method public showNavigatorBar(ZZ)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->showView(Z)V

    return-void

    :cond_1
    const-wide/16 v1, 0x104

    invoke-static {v0, v1, v2, p1}, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->showTopView(Landroid/view/View;JZ)V

    return-void
.end method

.method public showView(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method public showViewIn(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method protected abstract viewDidLoad(Landroid/view/ViewGroup;)V
.end method

.method public wantFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->h:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->wantFullScreen(Z)V

    return-void
.end method
