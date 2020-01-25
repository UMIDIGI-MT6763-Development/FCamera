.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;
.super Ljava/lang/Object;
.source "MatrixDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClick], mViewIsShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->ui(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onClick], view is disabled, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onClick], supported effect is null, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "previewing"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onClick] mModeDeviceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", not in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "previewing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->onMatrixDisplayClick()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$6;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V

    return-void
.end method
