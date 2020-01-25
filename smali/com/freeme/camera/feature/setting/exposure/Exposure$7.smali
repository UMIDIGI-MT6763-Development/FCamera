.class Lcom/freeme/camera/feature/setting/exposure/Exposure$7;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    const v1, -0x42841f76

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x30d357b6

    if-eq v0, v1, :cond_1

    const v1, 0x3c2616

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_video_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_continuous_shot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto/16 :goto_2

    :cond_4
    const-string p1, "stop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :pswitch_1
    const-string p1, "recording"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :cond_5
    const-string p1, "preview"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->changeFlashToTorchByAeState(Z)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$1100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    :cond_7
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
