.class Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ExposureCaptureRequestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$002(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$102(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_1
    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$200(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isPanelOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$200(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setPanel(ZI)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendSettingChangeRequest()V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$500(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :cond_4
    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCaptureCompleted] request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",result "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
