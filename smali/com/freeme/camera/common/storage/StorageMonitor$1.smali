.class Lcom/freeme/camera/common/storage/StorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/storage/StorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/storage/StorageMonitor;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/storage/StorageMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[mReceiver.onReceive] action is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$100(Lcom/freeme/camera/common/storage/StorageMonitor;)Lcom/freeme/camera/common/storage/Storage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/storage/Storage;->updateDefaultDirectory()V

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$200(Lcom/freeme/camera/common/storage/StorageMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {v1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$100(Lcom/freeme/camera/common/storage/StorageMonitor;)Lcom/freeme/camera/common/storage/Storage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-interface {v0, v1, p2}, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;->onStateChanged(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_3
    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$100(Lcom/freeme/camera/common/storage/StorageMonitor;)Lcom/freeme/camera/common/storage/Storage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/storage/Storage;->isSameStorage(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$200(Lcom/freeme/camera/common/storage/StorageMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v3, p2}, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;->onStateChanged(ILandroid/content/Intent;)V

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$100(Lcom/freeme/camera/common/storage/StorageMonitor;)Lcom/freeme/camera/common/storage/Storage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/storage/Storage;->isSameStorage(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor$1;->this$0:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->access$200(Lcom/freeme/camera/common/storage/StorageMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v4, p2}, Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;->onStateChanged(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_4
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5a4113c8 -> :sswitch_5
        -0x4418042d -> :sswitch_4
        -0x39738481 -> :sswitch_3
        -0x254e496f -> :sswitch_2
        0x543610e0 -> :sswitch_1
        0x751aa7fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
