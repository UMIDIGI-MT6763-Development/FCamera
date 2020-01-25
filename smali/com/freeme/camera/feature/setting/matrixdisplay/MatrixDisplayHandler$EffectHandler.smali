.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;
.super Landroid/os/Handler;
.source "MatrixDisplayHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<handleMessage> msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIsReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "<handleMessage>unrecognized message!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "process frame"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[I

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->process([B[I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$510(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)I

    const-string p1, "process frame"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->setSurface(Landroid/view/Surface;I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[[B

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[[B

    move-result-object v2

    new-array v3, v0, [B

    aput-object v3, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)[[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->setBuffers(II[[B)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<handleMessage> previewWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",previewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;)Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0xc

    const/16 v4, 0xb

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->initialize(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler$EffectHandler;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;->access$102(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayHandler;Z)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
