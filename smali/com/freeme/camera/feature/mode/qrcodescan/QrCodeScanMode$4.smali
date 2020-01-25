.class Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;
.super Ljava/lang/Object;
.source "QrCodeScanMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2500(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->hidePlugin(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2600(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2700(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$2800(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$4;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1100(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    return-void
.end method
