.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;
.super Ljava/lang/Object;
.source "MatrixDisplayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->bindView()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
