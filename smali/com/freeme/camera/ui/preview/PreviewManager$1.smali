.class Lcom/freeme/camera/ui/preview/PreviewManager$1;
.super Ljava/lang/Object;
.source "PreviewManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/preview/PreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/preview/PreviewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$000(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$200(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$1$1;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager$1;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$300(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/ui/preview/PreviewManager$1$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$1$2;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager$1;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$1;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$400(Lcom/freeme/camera/ui/preview/PreviewManager;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/ui/preview/PreviewManager$1$3;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/preview/PreviewManager$1$3;-><init>(Lcom/freeme/camera/ui/preview/PreviewManager$1;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
