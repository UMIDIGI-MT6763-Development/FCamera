.class Lcom/freeme/camera/ui/ReviewUI$2;
.super Ljava/lang/Object;
.source "ReviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ReviewUI;->hideReviewUI()V
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

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$600(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$600(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$800(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$800(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$900(Lcom/freeme/camera/ui/ReviewUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$900(Lcom/freeme/camera/ui/ReviewUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/ReviewUI;->access$902(Lcom/freeme/camera/ui/ReviewUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$2;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/ReviewUI;->access$402(Lcom/freeme/camera/ui/ReviewUI;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
