.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;
.super Landroid/os/Handler;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$600(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$400(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$500(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$MainHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$300(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Landroid/view/View;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
