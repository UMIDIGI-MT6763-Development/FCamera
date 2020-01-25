.class Lcom/freeme/camera/ui/SwitchWideAngleManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "SwitchWideAngleManager.java"


# instance fields
.field private mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

.field private mViewEntry:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized attachViewEntry()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewEntry()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    return-object v0
.end method

.method public declared-synchronized removeViewEntry()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mSwitchWideAngleViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/ui/AbstractViewManager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setViewEntry(Landroid/view/View;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/ui/SwitchWideAngleManager;->mViewEntry:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
