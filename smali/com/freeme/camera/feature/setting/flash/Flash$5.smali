.class Lcom/freeme/camera/feature/setting/flash/Flash$5;
.super Ljava/lang/Object;
.source "Flash.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/flash/Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/Flash;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x30d357b6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3c2616

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_video_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_continuous_shot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :cond_4
    const-string p1, "stop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "recording"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :cond_6
    const-string p1, "preview"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$5;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->changeFlashToTorchByAeState(Z)V

    :cond_7
    :goto_2
    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onStatusChanged] -"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
