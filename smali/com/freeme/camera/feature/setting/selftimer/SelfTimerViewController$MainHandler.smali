.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;
.super Landroid/os/Handler;
.source "SelfTimerViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->hideQuickSwitcherOption()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    :cond_1
    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
