.class Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;
.super Ljava/lang/Object;
.source "DngParameterConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawPictureCallbackTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$602(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$702(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;[B)[B

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$400(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$500(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)V

    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "raw meta callback "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$102(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    iget-object v2, p1, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;->mArg2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$202(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    iget-object p1, p1, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;->mArg1:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$302(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$400(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$500(Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onDataTaken] invalid callback value, return null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
