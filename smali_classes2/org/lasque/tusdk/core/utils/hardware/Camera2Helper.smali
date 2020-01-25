.class public Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;-><init>(Landroid/graphics/Point;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    const-string v4, "Camera %s: [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static cameraCharacter(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Get Camera Character error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static cameraCounts(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static cameraIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraIds(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cameraIds(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Get system all camera ids error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static cameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    const-string v0, "camera"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static cameraPosition(Landroid/hardware/camera2/CameraCharacteristics;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    return-object p0

    :cond_1
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    return-object p0
.end method

.method public static canSupportAutofocus(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.autofocus"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static canSupportAutofocus(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    aget p0, p0, v0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public static canSupportAutofocus(Landroid/hardware/camera2/CameraCharacteristics;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    if-ne p1, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static canSupportCamera(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCounts(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static canSupportFaceDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    aget p0, p0, v0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static canSupportFlash(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.flash"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createSize(Landroid/util/Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static firstBackCameraId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->firstCameraId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static firstCameraId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v1, p0, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCharacter(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static firstCameraId(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$3;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->firstCameraId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static firstFrontCameraId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->firstCameraId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fixFocusRange(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static focusModeType(Landroid/hardware/camera2/CaptureRequest$Builder;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Always:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-static {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->matchRatio(ILandroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getSize()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->createSize(Landroid/util/Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v4

    if-le v4, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v5

    if-le v4, v5, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p1

    if-eq p0, p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    move-object v0, v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static getSizeRatio(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static hardwareOnlySupportLegacy(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->firstBackCameraId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCharacter(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->hardwareOnlySupportLegacy(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public static hardwareOnlySupportLegacy(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->supportHardwareLevel(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static logCameraCharacter(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 19

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :goto_1
    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)V

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_4
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_6
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_7
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_8
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    array-length v7, v3

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v3, v8

    const-string v10, "Camera %s: %s"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v9, v11, v5

    invoke-static {v10, v11}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_b
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto/16 :goto_1

    :cond_c
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto/16 :goto_1

    :cond_d
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto/16 :goto_1

    :cond_e
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    array-length v8, v3

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_1

    aget-object v10, v3, v9

    const-string v11, "Camera %s: [%s - %s]"

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    aput-object v10, v12, v4

    invoke-static {v11, v12}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_10
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_4
    if-ge v10, v9, :cond_1

    aget v11, v8, v10

    invoke-virtual {v3, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v12

    array-length v13, v12

    move v14, v6

    :goto_5
    if-ge v14, v13, :cond_12

    aget-object v15, v12, v14

    const-string v4, "Camera %s: [%s] %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v5, v17

    const/16 v16, 0x2

    aput-object v15, v5, v16

    invoke-static {v4, v5}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_5

    :cond_12
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_4

    :cond_13
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto/16 :goto_1

    :cond_14
    const-string v3, "Camera %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public static matchRatio(ILandroid/util/Size;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getSizeRatio(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static mergerBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static pictureOptimalSize(Landroid/content/Context;[Landroid/util/Size;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/util/Size;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->sortSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, p2

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatio()I

    move-result p2

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/util/Size;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/util/Size;

    move-result-object p2

    :cond_4
    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/util/Size;

    :cond_5
    return-object p2

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static previewOptimalSize(Landroid/content/Context;[Landroid/util/Size;IF)Landroid/util/Size;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->sortSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_3
    const/4 v3, 0x0

    cmpg-float v3, p3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_4

    cmpl-float v3, p3, v4

    if-lez v3, :cond_5

    :cond_4
    move p3, v4

    :cond_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    int-to-double v5, p2

    cmpg-double p3, v3, v5

    if-gez p3, :cond_6

    double-to-int p2, v3

    :cond_6
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatio()I

    move-result p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/util/Size;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_7

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_7

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_8

    goto :goto_0

    :cond_8
    move-object v0, p3

    :cond_9
    if-nez v0, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/util/Size;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    if-gt p3, p2, :cond_a

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-le p3, p2, :cond_b

    goto :goto_1

    :cond_b
    move-object v0, p1

    :cond_c
    :goto_2
    return-object v0
.end method

.method public static setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$3;->b:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_3
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :pswitch_5
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setFocusMode(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportAutofocus(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->swichFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;)I

    move-result p2

    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportAutofocus(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0, p1, p3, p4}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->setFocusPoint(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setFocusPoint(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    if-nez p3, :cond_1

    sget-object p3, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_1
    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$3;->d:[I

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget p3, p2, Landroid/graphics/PointF;->y:F

    iput p3, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :pswitch_1
    iget p3, p2, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_2
    iget p3, p2, Landroid/graphics/PointF;->y:F

    sub-float p3, v2, p3

    goto :goto_3

    :pswitch_3
    iget p3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :pswitch_4
    iget p3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    :goto_0
    iget p2, p2, Landroid/graphics/PointF;->x:F

    :goto_1
    iput p2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_5
    iget p3, p2, Landroid/graphics/PointF;->x:F

    sub-float p3, v2, p3

    :goto_2
    iput p3, v1, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :pswitch_6
    iget p3, p2, Landroid/graphics/PointF;->y:F

    :goto_3
    iput p3, v1, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    :goto_4
    sub-float/2addr v2, p2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3cf5c28f    # 0.03f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget p3, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr p3, v2

    add-int/2addr p3, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x2

    mul-int/2addr p2, v1

    sub-int v3, p3, p2

    sub-int p2, v2, p2

    invoke-direct {v0, v3, p2, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->fixFocusRange(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p3, 0x1f4

    invoke-direct {p2, p0, p3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 p0, 0x1

    new-array p3, p0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showAlertIfNotSupportCamera(Landroid/content/Context;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->cameraCounts(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "lsq_carema_no_device"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->canSupportCamera(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "lsq_carema_no_access"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v1

    :cond_4
    const-string v1, "lsq_carema_alert_title"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lsq_button_done"

    invoke-static {v3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static sortSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$1;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static streamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method public static supportFlash(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static supportHardwareLevel(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static swichFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;)I
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$3;->c:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transforFace(Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->id:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->score:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p0

    iput-object p0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->convertOrientation(Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static transforFaces(Landroid/hardware/camera2/CameraCharacteristics;Lorg/lasque/tusdk/core/struct/TuSdkSize;[Landroid/hardware/camera2/params/Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            "[",
            "Landroid/hardware/camera2/params/Face;",
            "Lorg/lasque/tusdk/core/utils/image/ImageOrientation;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->center()Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/Face;

    invoke-static {p2, p1, p3}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->transforFace(Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
