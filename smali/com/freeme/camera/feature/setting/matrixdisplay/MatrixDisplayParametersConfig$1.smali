.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;
.super Ljava/lang/Object;
.source "MatrixDisplayParametersConfig.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

.field final synthetic val$cameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;->val$cameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onPreviewFrame], callback buffer is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;->onPreviewFrameAvailable([B)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayParametersConfig$1;->val$cameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->addCallbackBuffer([B)V

    :cond_1
    return-void
.end method
