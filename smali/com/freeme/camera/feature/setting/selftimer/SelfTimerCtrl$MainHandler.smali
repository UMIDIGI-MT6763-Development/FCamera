.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;
.super Landroid/os/Handler;
.source "SelfTimerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->access$000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;Ljava/lang/String;)V

    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
