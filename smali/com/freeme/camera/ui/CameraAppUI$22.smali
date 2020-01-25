.class Lcom/freeme/camera/ui/CameraAppUI$22;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->showSavingDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$isNeedShowProgress:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->val$isNeedShowProgress:Z

    iput-object p3, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f09008e

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0083

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$2502(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v1

    const v3, 0x7f09008d

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->val$isNeedShowProgress:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0f017c

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$22;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
