.class Lcom/freeme/camera/ui/preview/PreviewManager$1$1;
.super Ljava/lang/Object;
.source "PreviewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/preview/PreviewManager$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/preview/PreviewManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;->this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;->this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;

    iget-object v0, v0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$100(Lcom/freeme/camera/ui/preview/PreviewManager;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;->this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;

    iget-object v0, v0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$200(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;->this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;

    iget-object v1, v1, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$000(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;->this$1:Lcom/freeme/camera/ui/preview/PreviewManager$1;

    iget-object v2, v2, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$000(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->setPreviewSize(II)V

    return-void
.end method
