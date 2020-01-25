.class Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode$2;
.super Ljava/lang/Object;
.source "CameraChildrenMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode$2;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode$2;->this$0:Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;->access$900(Lcom/freeme/camera/feature/mode/camerachildren/CameraChildrenMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->hidePlugin(I)V

    return-void
.end method
