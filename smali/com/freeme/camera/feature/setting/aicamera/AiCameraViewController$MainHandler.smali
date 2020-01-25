.class Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;
.super Landroid/os/Handler;
.source "AiCameraViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$300(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$400(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$000(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$000(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$200(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$000(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromQuickSwitcher(Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$200(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$000(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToQuickSwitcher(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$100(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$002(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
