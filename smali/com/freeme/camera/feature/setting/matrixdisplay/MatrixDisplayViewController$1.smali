.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;
.super Ljava/lang/Object;
.source "MatrixDisplayViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Ljava/lang/String;)V

    return-void
.end method
