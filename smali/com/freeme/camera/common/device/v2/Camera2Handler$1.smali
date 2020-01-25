.class Lcom/freeme/camera/common/device/v2/Camera2Handler$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method private createSessionAndProxy(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$400(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;-><init>(Landroid/os/Handler;Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$302(Lcom/freeme/camera/common/device/v2/Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method private postSessionRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$500(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$500(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[postSessionRunnable]use the respond handler"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$600(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActive] mCameraCaptureSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$300(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",active session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$4;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$4;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClosed] mCameraCaptureSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$300(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",closed session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$5;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigureFailed] session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->createSessionAndProxy(Landroid/hardware/camera2/CameraCaptureSession;)V

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$2;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$2;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigured], session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->createSessionAndProxy(Landroid/hardware/camera2/CameraCaptureSession;)V

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReady] mCameraCaptureSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$300(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",ready session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSurfacePrepared] mCameraCaptureSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$300(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",prepared session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$6;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->postSessionRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
