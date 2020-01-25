.class public Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;
.super Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;-><init>()V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_activity_fragment_context_layout"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public filpModalNavigationActivity(Landroid/support/v4/app/Fragment;ZZ)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getMainActivityClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V

    return-void
.end method

.method protected getAnimType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getActivityAnims()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object p1
.end method

.method protected initActivity()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->initActivity()V

    invoke-static {}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->getLayoutId()I

    move-result v0

    const-string v1, "lsq_fragment_container"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->setRootView(II)V

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPush()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPop()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->setfragmentChangeAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->onDetachedFromWindow()V

    invoke-static {}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->flushData()V

    return-void
.end method

.method public presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Z)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 7

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getMainActivityClazz()Ljava/lang/Class;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimDismiss()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public pushModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->pushModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public pushModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPush()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPop()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method
