.class Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;
.super Ljava/lang/Object;
.source "ContinuousShotBurstMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/device/CaptureSurface$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureCallback([BILjava/lang/String;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$208(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)I

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[mImageCallback] Number = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {p5}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-virtual {p3, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->saveJpeg([B)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)I

    move-result p1

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    iget p3, p3, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->MAX_CAPTURE_NUMBER:I

    if-lt p1, p3, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$3;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$700(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;->discardFreeBuffers()V

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
