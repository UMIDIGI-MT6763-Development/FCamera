.class Lcom/freeme/camera/feature/setting/exposure/Exposure$1;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;->onExposureViewChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onExposureViewChanged]+ value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->val$value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->val$value:I

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$200(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onExposureViewChanged] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
