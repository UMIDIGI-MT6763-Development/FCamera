.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;
.super Ljava/lang/Object;
.source "MatrixDisplay.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$BackPressedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBackPressed] mViewIsShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$9;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$2000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;ZI)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
