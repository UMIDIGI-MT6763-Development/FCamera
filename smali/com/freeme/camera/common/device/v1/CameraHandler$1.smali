.class Lcom/freeme/camera/common/device/v1/CameraHandler$1;
.super Ljava/lang/Object;
.source "CameraHandler.java"

# interfaces
.implements Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;->onDataCallback(I[BII)V

    :cond_0
    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;->onDataCallback(I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;->onDataTaken(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler$1;->this$0:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
