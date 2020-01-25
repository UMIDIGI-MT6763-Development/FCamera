.class Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;
.super Landroid/os/Handler;
.source "ContinuousShotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShotView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShotView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShotView;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShotView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShotView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShotView;Landroid/app/Activity;Lcom/freeme/camera/common/IAppUi;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
