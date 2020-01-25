.class Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;
.super Landroid/os/Handler;
.source "SdofViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$300(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$200(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$100(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
