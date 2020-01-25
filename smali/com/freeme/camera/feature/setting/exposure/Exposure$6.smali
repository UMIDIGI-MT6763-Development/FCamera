.class Lcom/freeme/camera/feature/setting/exposure/Exposure$6;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$1002(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$900(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->setViewEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$1100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStopped]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$1002(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$900(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->setViewEnabled(Z)V

    return-void
.end method
