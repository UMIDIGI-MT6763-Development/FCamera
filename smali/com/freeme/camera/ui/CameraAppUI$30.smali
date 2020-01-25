.class Lcom/freeme/camera/ui/CameraAppUI$30;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->showQuickSwitcherOption(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$optionView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$30;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$30;->val$optionView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$30;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$30;->val$optionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->showQuickSwitcherOption(Landroid/view/View;)V

    return-void
.end method
