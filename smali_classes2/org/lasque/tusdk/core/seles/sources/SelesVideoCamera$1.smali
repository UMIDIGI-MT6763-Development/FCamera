.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canInitCamera()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera$CameraInfo;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "The device can not find any camera info: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;

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
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onCameraWillOpen"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInitCamera()Landroid/hardware/Camera;
    .locals 8

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getCamera(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-static {v6, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v2, :cond_1

    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const-string v0, "No front-facing camera found; opening default"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "The device can not find init camera: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-static {v4}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->onInitConfig(Landroid/hardware/Camera;)V

    return-object v0
.end method

.method public previewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->createSize(Landroid/hardware/Camera$Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public previewOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->computerOutputOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method
