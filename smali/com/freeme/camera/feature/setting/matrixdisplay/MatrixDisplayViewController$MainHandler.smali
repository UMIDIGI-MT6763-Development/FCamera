.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;
.super Landroid/os/Handler;
.source "MatrixDisplayViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Z)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromQuickSwitcher(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Z)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToQuickSwitcher(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->initMatrixDisplayEntryView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->access$002(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
