.class public Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;


# instance fields
.field private b:Landroid/hardware/Camera$CameraInfo;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

.field private e:Z

.field private f:Z

.field private g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    if-nez p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :cond_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b:Landroid/hardware/Camera$CameraInfo;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    return-object p0
.end method

.method private a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->_isEnableFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->c()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b:Landroid/hardware/Camera$CameraInfo;

    return-object p0
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportFaceDetection(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    const-string v2, "startFaceDetection"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static computerOutputOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getInterfaceRotation(Landroid/content/Context;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    invoke-static {p1, p0, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->computerOutputOrientation(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static computerOutputOrientation(Landroid/hardware/Camera$CameraInfo;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    iget v2, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v1, v2

    :cond_3
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    add-int/2addr p0, p1

    :cond_4
    if-eqz v0, :cond_6

    sub-int/2addr v1, p0

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    if-eqz p2, :cond_5

    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$3;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :cond_5
    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$3;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_1

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :cond_6
    add-int/2addr v1, p0

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    if-eqz p3, :cond_7

    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$3;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_2

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :cond_7
    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera$3;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_3

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "stopFaceDetection"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public _isEnableFaceDetection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->c:Z

    return v0
.end method

.method public cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraPosition(Landroid/hardware/Camera$CameraInfo;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v0

    return-object v0
.end method

.method protected computerOutputOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b:Landroid/hardware/Camera$CameraInfo;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->computerOutputOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method

.method public inputCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public inputCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->inputCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public isBackFacingCameraPresent()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableFaceDetection()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->_isEnableFaceDetection()Z

    move-result v0

    return v0
.end method

.method public isFrontFacingCameraPresent()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->e:Z

    return v0
.end method

.method public onCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onCameraStarted()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onCameraStarted()V

    return-void
.end method

.method protected onInitConfig(Landroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method protected onPreviewStarted()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onPreviewStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->e:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->a()V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->pauseCameraCapture()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b()V

    return-void
.end method

.method public resumeCameraCapture()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->resumeCameraCapture()V

    return-void
.end method

.method public rotateCamera()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraCounts()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->d:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->startCameraCapture()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setEnableFaceDetection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->a()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b()V

    :goto_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->stopCameraCapture()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->e:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera;->b:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method
