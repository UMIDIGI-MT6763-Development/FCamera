.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;
.super Landroid/os/Handler;
.source "MatrixDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[handleMessage]unrecognize message!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;III)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->showSelectedBorder(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
