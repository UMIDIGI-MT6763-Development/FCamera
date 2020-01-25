.class Lcom/freeme/camera/ui/CameraAppUI$7;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput p2, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$width:I

    iput p3, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$height:I

    iput-object p4, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$width:I

    iget v2, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$height:I

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/ui/preview/PreviewManager;->updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget v1, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$width:I

    iget v2, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->val$height:I

    invoke-static {v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1302(Lcom/freeme/camera/ui/CameraAppUI;I)I

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->geScreenRatio(Lcom/freeme/camera/common/app/IApp;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1402(Lcom/freeme/camera/ui/CameraAppUI;I)I

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1400(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1300(Lcom/freeme/camera/ui/CameraAppUI;)I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070065

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v5, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v5}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v0

    const/16 v5, 0x20

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070066

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v6, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v6}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v0, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$100(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v5, 0x7f0901ac

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v5}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v5}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v5

    if-eq v5, v3, :cond_8

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_8

    iget-object v3, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v3

    if-eq v3, v2, :cond_8

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    if-eq v2, v1, :cond_8

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_9

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$7;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0, v4}, Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIVisibility(I)V

    :cond_9
    return-void
.end method
