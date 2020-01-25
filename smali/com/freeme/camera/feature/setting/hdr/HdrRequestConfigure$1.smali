.class Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "HdrRequestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string p1, "auto"

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.mediatek.hdrfeature.hdrDetectionResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$100(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 p2, 0x0

    aget p3, p1, p2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)I

    move-result v0

    if-ne p3, v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    aget p3, p1, p2

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$400()[I

    move-result-object v0

    aget v0, v0, p2

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onAutoDetectionResult(Z)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onAutoDetectionResult(Z)V

    :goto_0
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    aget p1, p1, p2

    invoke-static {p3, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->access$202(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;I)I

    :cond_4
    return-void
.end method
