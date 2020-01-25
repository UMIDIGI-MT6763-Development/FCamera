.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canInitCamera()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->firstCameraId(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "The device can not find any camera2 info: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method public onCameraStarted()V
    .locals 0

    return-void
.end method

.method public onCameraWillOpen(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Landroid/view/Surface;)Landroid/view/Surface;

    :try_start_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getCameraStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SelesVideoCamera2 asyncInitCamera"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInitCamera()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCharacter(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "The device can not find init camera2: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->onInitConfig(Landroid/hardware/camera2/CameraCharacteristics;)V

    return v1
.end method

.method public previewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->computerPreviewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public previewOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method
