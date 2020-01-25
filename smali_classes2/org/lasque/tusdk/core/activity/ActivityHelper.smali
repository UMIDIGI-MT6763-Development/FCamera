.class public Lorg/lasque/tusdk/core/activity/ActivityHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildModalActivityIntent(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)Lorg/lasque/tusdk/core/TuSdkIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZ)",
            "Lorg/lasque/tusdk/core/TuSdkIntent;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkIntent;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p5}, Lorg/lasque/tusdk/core/TuSdkIntent;->setWantFullScreen(Z)V

    invoke-virtual {v0, p6}, Lorg/lasque/tusdk/core/TuSdkIntent;->setActivityFilp(Z)V

    if-eqz p2, :cond_1

    sget-object p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->setTransmit(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkIntent;->needTransmitFragment()V

    :cond_1
    invoke-virtual {v0, p3}, Lorg/lasque/tusdk/core/TuSdkIntent;->setActivityPresentAnimType(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    invoke-virtual {v0, p4}, Lorg/lasque/tusdk/core/TuSdkIntent;->setActivityDismissAnimType(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dismissActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static dismissActivityWithAnim(Landroid/app/Activity;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->dismissActivity(Landroid/app/Activity;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result v0

    invoke-interface {p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public static presentActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZZ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->buildModalActivityIntent(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)Lorg/lasque/tusdk/core/TuSdkIntent;

    move-result-object p1

    invoke-static {p0, p1, p3, p7}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public static presentActivity(Landroid/app/Activity;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public static presentActivity(Landroid/app/Activity;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->buildModalActivityIntent(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)Lorg/lasque/tusdk/core/TuSdkIntent;

    move-result-object p1

    invoke-static {p0, p1, p2, p5}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public static presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_1

    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->dismissActivityWithAnim(Landroid/app/Activity;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result p1

    invoke-interface {p2}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public static presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public static presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/support/v4/app/Fragment;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentModalNavigationActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method
