.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;
.super Landroid/os/Handler;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1, v4}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$3000(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->reset()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->hide()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$2900(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
