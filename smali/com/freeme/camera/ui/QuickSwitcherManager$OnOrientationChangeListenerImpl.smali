.class Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;
.super Ljava/lang/Object;
.source "QuickSwitcherManager.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/QuickSwitcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/QuickSwitcherManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/QuickSwitcherManager;Lcom/freeme/camera/ui/QuickSwitcherManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/QuickSwitcherManager;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    iget-object v0, v0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
