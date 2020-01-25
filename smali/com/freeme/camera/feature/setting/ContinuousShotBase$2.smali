.class Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;
.super Ljava/lang/Object;
.source "ContinuousShotBase.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1000(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1108(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFileSaved] uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", savedNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1100(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1100(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1200(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1300(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->access$1400(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
