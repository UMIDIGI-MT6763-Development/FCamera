.class public abstract Lorg/lasque/tusdk/modules/components/TuSdkComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/modules/components/TuSdkComponentErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->initComponent()V

    return-void
.end method


# virtual methods
.method public activity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;II)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    const-string v0, "lsq_nav_cancel"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "lsq_button_done"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->b:Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;

    return-object v0
.end method

.method public getResString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract initComponent()V
.end method

.method public isAutoDismissWhenCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->c:Z

    return v0
.end method

.method protected notifyResult(Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;Lorg/lasque/tusdk/impl/activity/TuFragment;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->isAutoDismissWhenCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/lasque/tusdk/impl/activity/TuFragment;->dismissActivityWithAnim()V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getDelegate()Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getDelegate()Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;->onComponentFinished(Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;Lorg/lasque/tusdk/impl/activity/TuFragment;)V

    return-void
.end method

.method public onComponentError(Lorg/lasque/tusdk/impl/activity/TuFragment;Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;)V
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->notifyResult(Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;Lorg/lasque/tusdk/impl/activity/TuFragment;)V

    return-void
.end method

.method public presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Z)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 8

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    sget-object v1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getMainActivityClazz()Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

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

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public pushModalNavigationActivity(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->pushModalNavigationActivity(Landroid/support/v4/app/Fragment;Z)V

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

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public setAutoDismissWhenCompleted(Z)Lorg/lasque/tusdk/modules/components/TuSdkComponent;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->c:Z

    return-object p0
.end method

.method public setDelegate(Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->b:Lorg/lasque/tusdk/modules/components/TuSdkComponent$TuSdkComponentDelegate;

    return-void
.end method

.method public showAlertIfCannotSaveFile()Z
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "lsq_save_not_found_sdcard"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeNotFoundSDCard:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->hasAvailableExternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lsq_save_insufficient_storage_space"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeStorageSpace:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    goto :goto_0

    :cond_2
    move-object v0, v2

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    iget-object v4, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->a:Landroid/app/Activity;

    const-string v5, "lsq_save_unsupport_storage_title"

    invoke-virtual {p0, v5}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsq_button_done"

    invoke-virtual {p0, v6}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->getResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->getError(Ljava/lang/Object;)Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;->onComponentError(Lorg/lasque/tusdk/impl/activity/TuFragment;Lorg/lasque/tusdk/core/TuSdkResult;Ljava/lang/Error;)V

    return v1
.end method

.method public abstract showComponent()Lorg/lasque/tusdk/modules/components/TuSdkComponent;
.end method
