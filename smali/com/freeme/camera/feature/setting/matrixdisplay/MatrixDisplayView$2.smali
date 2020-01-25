.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;
.super Ljava/lang/Object;
.source "MatrixDisplayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "onScrollOut"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;->onScrollOut(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;I)V

    :cond_0
    return-void
.end method
