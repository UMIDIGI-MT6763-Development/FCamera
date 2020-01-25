.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;
.super Ljava/lang/Object;
.source "MatrixDisplay.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1702(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setOrientation(I)V

    :cond_0
    return-void
.end method
