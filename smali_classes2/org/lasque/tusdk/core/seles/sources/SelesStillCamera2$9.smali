.class Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "mSessionCaptureStateCallback onConfigureFailed"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->c(Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2$9;->a:Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesStillCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "mSessionCaptureStateCallback onConfigured"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
