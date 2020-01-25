.class Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;
.super Ljava/lang/Object;
.source "CameraPoseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->initSettingManager(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$1200(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$1300(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$1400(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$1500(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;->access$1600(Lcom/freeme/camera/feature/mode/camerapose/CameraPoseMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    return-void
.end method
