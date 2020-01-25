.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const-string p1, "mSessionPreviewStateCallback : %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onConfigureFailed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->getPreviewSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$2;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "mSessionPreviewStateCallback onConfigured error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
