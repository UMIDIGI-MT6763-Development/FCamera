.class Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;
.super Landroid/os/Handler;
.source "FaceViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$700(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/freeme/camera/feature/setting/facedetection/Face;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;[Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$600(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$500(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$402(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
