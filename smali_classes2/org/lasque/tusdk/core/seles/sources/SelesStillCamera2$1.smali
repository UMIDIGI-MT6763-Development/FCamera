.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    const-string p1, "mCameraStateCallback : %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onClosed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    const-string p1, "mCameraStateCallback : %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    const-string p1, "mCameraStateCallback : %s [%s]"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onError"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const-string v0, "mCameraStateCallback : %s [Thread: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onOpened"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)V

    return-void
.end method
