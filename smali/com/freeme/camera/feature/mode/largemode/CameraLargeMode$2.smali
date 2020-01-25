.class Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;
.super Ljava/lang/Object;
.source "CameraLargeMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$900(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->showPlugin(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    iget v0, v0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    iget v0, v0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$1000(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$2;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$1100(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    :cond_1
    return-void
.end method
