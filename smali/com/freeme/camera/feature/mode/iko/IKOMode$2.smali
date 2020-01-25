.class Lcom/freeme/camera/feature/mode/iko/IKOMode$2;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$900(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1000(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoTipView()Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0f010b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v5}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1100(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v3

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    const v3, 0x7f080190

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1400(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoTipView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getTopBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
