.class Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;
.super Landroid/os/Handler;
.source "HdrViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

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

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$300(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$400(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$600(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$700(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$600(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Z)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromQuickSwitcher(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$600(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$500(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToQuickSwitcher(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$300(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$400(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$500(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$100(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$002(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
