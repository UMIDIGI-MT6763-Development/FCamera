.class Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;
.super Ljava/lang/Object;
.source "BeautyFaceDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onPreviewFrame] mModeDeviceCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$600(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)Lcom/freeme/camera/feature/mode/beautyface/device/IDeviceController$DeviceCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$700(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$802(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;Z)Z

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$600(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)Lcom/freeme/camera/feature/mode/beautyface/device/IDeviceController$DeviceCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$600(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)Lcom/freeme/camera/feature/mode/beautyface/device/IDeviceController$DeviceCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler$1;->this$1:Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;->access$900(Lcom/freeme/camera/feature/mode/beautyface/device/BeautyFaceDeviceController$BeautyFaceDeviceHandler;)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/device/IDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_0
    return-void
.end method
