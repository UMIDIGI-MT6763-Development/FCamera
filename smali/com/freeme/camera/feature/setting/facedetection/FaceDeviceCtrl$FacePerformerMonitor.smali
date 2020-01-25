.class Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;
.super Ljava/lang/Object;
.source "FaceDeviceCtrl.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacePerformerMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)V

    return-void
.end method


# virtual methods
.method public isNeedToStart()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNeedStart]  overrideState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPreviewStarted = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFaceDetectionSupported = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needStart = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public isNeedToStop()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNeedStop]  overrideState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPreviewStarted = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFaceDetectionSupported = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needStop = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public setSupportedStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$FacePerformerMonitor;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->access$102(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;Z)Z

    return-void
.end method
