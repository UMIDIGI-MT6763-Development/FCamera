.class public Lcom/freeme/camera/ui/SettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/SettingFragment$StateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mSettingViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSettingView;",
            ">;"
        }
    .end annotation
.end field

.field private mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

.field private mTextView:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/SettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSettingView], view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasVisibleChild()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSettingView;

    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSettingView;->isEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onActivityCreated]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/SettingFragment$StateListener;->onCreate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901e7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0901ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/freeme/camera/ui/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/SettingFragment$1;-><init>(Lcom/freeme/camera/ui/SettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p1, 0x7f120005

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/SettingFragment;->addPreferencesFromResource(I)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/setting/ICameraSettingView;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/setting/ICameraSettingView;->loadView(Landroid/preference/PreferenceFragment;)V

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSettingView;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSettingView;->unloadView()V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/freeme/camera/ui/SettingFragment$StateListener;->onDestroy()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/SettingFragment$StateListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/SettingFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSettingView;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSettingView;->refreshView()V

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/freeme/camera/ui/SettingFragment$StateListener;->onResume()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized refreshSettingView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSettingView;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSettingView;->refreshView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SettingFragment;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStateListener(Lcom/freeme/camera/ui/SettingFragment$StateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/SettingFragment;->mStateListener:Lcom/freeme/camera/ui/SettingFragment$StateListener;

    return-void
.end method
