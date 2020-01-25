.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Landroid/hardware/camera2/CameraManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/hardware/camera2/CameraCharacteristics;

.field private e:Landroid/os/HandlerThread;

.field private f:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

.field private g:Landroid/view/Surface;

.field private h:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

.field protected final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->h:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

    if-nez p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :cond_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->f:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b:Landroid/hardware/camera2/CameraManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "TuSDK_L_Camera"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->h:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->g:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->f:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->e:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "release Handler error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->isHorizontallyMirrorRearFacingCamera()Z

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->computerOutputOrientation(Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static computerOutputOrientation(Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getInterfaceRotation(Landroid/content/Context;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    invoke-static {p1, p0, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->computerOutputOrientation(Landroid/hardware/camera2/CameraCharacteristics;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static computerOutputOrientation(Landroid/hardware/camera2/CameraCharacteristics;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;ZZLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    move v0, v2

    :cond_3
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result p1

    add-int/2addr p0, p1

    :cond_4
    if-eqz v1, :cond_6

    sub-int/2addr v0, p0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    if-eqz p2, :cond_5

    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$2;->a:[I

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
    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$2;->a:[I

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
    add-int/2addr v0, p0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object p0

    if-eqz p3, :cond_7

    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$2;->a:[I

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
    sget-object p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2$2;->a:[I

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

.method static synthetic d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->b()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraPosition(Landroid/hardware/camera2/CameraCharacteristics;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    move-result-object v0

    return-object v0
.end method

.method protected abstract computerPreviewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
.end method

.method public getCameraCharacter()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getCameraStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->g:Landroid/view/Surface;

    return-object v0
.end method

.method public isBackFacingCameraPresent()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

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

.method public isFrontFacingCameraPresent()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->cameraPosition()Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

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

.method protected onCameraStarted()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->onCameraStarted()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->onDestroy()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->a()V

    return-void
.end method

.method protected onInitConfig(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    return-void
.end method

.method public rotateCamera()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCounts(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->f:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->f:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2;->startCameraCapture()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
