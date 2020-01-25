.class Lcom/freeme/camera/feature/setting/ContinuousShot$1;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShot;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "[onShutter]"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$302(Lcom/freeme/camera/feature/setting/ContinuousShot;Z)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShot;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->playSound()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
