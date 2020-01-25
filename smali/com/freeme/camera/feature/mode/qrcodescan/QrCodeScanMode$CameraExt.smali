.class Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;
.super Ljava/lang/Object;
.source "QrCodeScanMode.java"

# interfaces
.implements Lcom/freeme/camera/ICameraExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;-><init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)V

    return-void
.end method


# virtual methods
.method public getAlertDialog()Landroid/app/AlertDialog$Builder;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2400(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getGLRoot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->getGLRoot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2000(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2300(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPictureSize()Lcom/freeme/camera/data/Size;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2200(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/data/Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFormat()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    iget v0, v0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->previewFormet:I

    return v0
.end method

.method public getPreviewSize()Lcom/freeme/camera/data/Size;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2100(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/data/Size;

    move-result-object v0

    return-object v0
.end method

.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$CameraExt;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->onShutterButtonClick()Z

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public sendCommand(I)V
    .locals 0

    return-void
.end method

.method public setBottomBarVisible(I)V
    .locals 0

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setTopBarBackgroudcolor(I)V
    .locals 0

    return-void
.end method

.method public setTopBarVisible(I)V
    .locals 0

    return-void
.end method
