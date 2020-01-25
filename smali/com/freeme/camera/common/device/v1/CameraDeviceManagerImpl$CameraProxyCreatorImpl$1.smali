.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;
.super Ljava/lang/Object;
.source "CameraDeviceManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
