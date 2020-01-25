.class Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$1;
.super Ljava/lang/Object;
.source "CameraPoseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->showCameraPosein()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

.field final synthetic val$rl:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$1;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$1;->val$rl:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$1;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$300(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$1;->val$rl:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->showPlugin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method
