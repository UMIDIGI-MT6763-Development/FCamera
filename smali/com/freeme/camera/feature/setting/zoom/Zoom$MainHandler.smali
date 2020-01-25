.class Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;
.super Landroid/os/Handler;
.source "Zoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    const v4, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2602(Lcom/freeme/camera/feature/setting/zoom/Zoom;F)F

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->resetView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScaleStatus(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] zoom out, mCurrentRatioMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)F

    move-result v1

    sub-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2602(Lcom/freeme/camera/feature/setting/zoom/Zoom;F)F

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)F

    move-result v1

    float-to-double v4, v1

    invoke-interface {v0, v4, v5}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScalePerformed(D)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v6, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2602(Lcom/freeme/camera/feature/setting/zoom/Zoom;F)F

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->resetView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScaleStatus(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] zoom in, mCurrentRatioMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2602(Lcom/freeme/camera/feature/setting/zoom/Zoom;F)F

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)F

    move-result v1

    float-to-double v6, v1

    invoke-interface {v0, v6, v7}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScalePerformed(D)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
