.class Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;
.super Ljava/lang/Object;
.source "PortraitMode.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/portrait/PortraitMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1200(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1300(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1410(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1400(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1502(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1600(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mCapturingNumber = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$4;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1400(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
