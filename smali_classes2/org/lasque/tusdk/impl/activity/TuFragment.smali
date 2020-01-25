.class public abstract Lorg/lasque/tusdk/impl/activity/TuFragment;
.super Lorg/lasque/tusdk/core/activity/TuSdkFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;II)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFragment;->alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v0, "lsq_nav_cancel"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "lsq_button_done"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public filpModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->filpModalNavigationActivity(Landroid/support/v4/app/Fragment;ZZ)V

    return-void
.end method

.method public filpModalNavigationActivity(Landroid/support/v4/app/Fragment;ZZ)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getMainActivityClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFragment;->filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V

    return-void
.end method

.method public hubDismiss()V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->dismiss()V

    return-void
.end method

.method public hubDismissRightNow()V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->dismissRightNow()V

    return-void
.end method

.method public hubError(I)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->showError(Landroid/content/Context;I)V

    return-void
.end method

.method public hubError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hubStatus(I)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->setStatus(Landroid/content/Context;I)V

    return-void
.end method

.method public hubStatus(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hubSuccess(I)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->showSuccess(Landroid/content/Context;I)V

    return-void
.end method

.method public hubSuccess(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected initCreateView()V
    .locals 3

    const-string v0, "lsq_navigatorBar"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lsq_backButton"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getLayoutId()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavigatorBarId(III)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onDetach()V

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->checkAppAuth()V

    invoke-static {}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->flushData()V

    return-void
.end method

.method public presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Z)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

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

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/impl/activity/TuFragment;->presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

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

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public pushModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->pushModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public pushModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimDismiss()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/impl/activity/TuFragment;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public setNavLeftButton(I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavLeftButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavLeftButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavLeftButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavLeftButton(Ljava/lang/String;I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavLeftButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setTextColor(I)V

    return-object p1
.end method

.method public setNavLeftHighLightButton(I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavLeftHighLightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavLeftHighLightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->highlight:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavLeftButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightButton(I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavRightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavRightButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightButton(Ljava/lang/String;I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavRightButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setTextColor(I)V

    return-object p1
.end method

.method public setNavRightHighLightButton(I)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->getResString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavRightHighLightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method

.method public setNavRightHighLightButton(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->highlight:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setNavRightButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p1

    return-object p1
.end method
