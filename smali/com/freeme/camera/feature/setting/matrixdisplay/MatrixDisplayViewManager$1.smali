.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;
.super Ljava/lang/Object;
.source "MatrixDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setLayoutSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplaySize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setLayoutSize(II)V

    :cond_0
    return-void
.end method
