.class Lcom/freeme/camera/ui/ReviewUI$3;
.super Ljava/lang/Object;
.source "ReviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ReviewUI;->updateOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ReviewUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/ReviewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI$3;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$3;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$100(Lcom/freeme/camera/ui/ReviewUI;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$3;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/ReviewUI$3;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/ReviewUI;->access$1100(Lcom/freeme/camera/ui/ReviewUI;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method
