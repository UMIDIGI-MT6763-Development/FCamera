.class Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;
.super Landroid/os/Handler;
.source "DngViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->access$300(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->access$200(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->access$100(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
