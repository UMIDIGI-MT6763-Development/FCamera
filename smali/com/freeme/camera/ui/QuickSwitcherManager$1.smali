.class Lcom/freeme/camera/ui/QuickSwitcherManager$1;
.super Ljava/lang/Object;
.source "QuickSwitcherManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/QuickSwitcherManager;->hideQuickSwitcherOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/QuickSwitcherManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$200(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    iget-object p1, p1, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$1;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$300(Lcom/freeme/camera/ui/QuickSwitcherManager;)Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
