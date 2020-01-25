.class public abstract Lcom/freeme/camera/ui/AbstractViewManager;
.super Ljava/lang/Object;
.source "AbstractViewManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/IViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;
    }
.end annotation


# instance fields
.field protected final mApp:Lcom/freeme/camera/common/app/IApp;

.field private final mOrientationChangeListener:Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;

.field protected final mParentView:Landroid/view/ViewGroup;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mParentView:Landroid/view/ViewGroup;

    new-instance p1, Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/AbstractViewManager;Lcom/freeme/camera/ui/AbstractViewManager$1;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/AbstractViewManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    return-object p0
.end method

.method private hide(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private show()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getView()Landroid/view/View;
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/AbstractViewManager$OnOrientationChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    return-void
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/AbstractViewManager;->hide(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/AbstractViewManager;->hide(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateViewOrientation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/AbstractViewManager;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method
