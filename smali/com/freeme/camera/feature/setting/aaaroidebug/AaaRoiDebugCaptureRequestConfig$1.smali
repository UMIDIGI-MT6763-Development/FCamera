.class Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AaaRoiDebugCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$000(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$000(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.freeme.3afeature.aeroi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$000(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {p2, v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[I)[Landroid/graphics/Rect;

    move-result-object p2

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.freeme.3afeature.afroi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v0, v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[I)[Landroid/graphics/Rect;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.freeme.3afeature.awbroi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[I)[Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$400()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCaptureCompleted] aeRois = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3, p2}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$600(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCaptureCompleted] afRois = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3, v0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$600(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCaptureCompleted] awbRois = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {v3, v1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$600(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;[Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$700(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->access$700(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;

    move-result-object p1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;->onRangeUpdate([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_6
    return-void
.end method
