.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;
.super Ljava/lang/Object;
.source "MatrixDisplay.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewAreaChanged], layoutWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", layoutHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1802(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1902(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setLayoutSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$8;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->hideView(ZI)V

    :cond_1
    return-void
.end method
