.class Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;
.super Ljava/lang/Object;
.source "CameraLargeMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$1900(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->hidePlugin(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$2000(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$2100(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$3;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$2200(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
