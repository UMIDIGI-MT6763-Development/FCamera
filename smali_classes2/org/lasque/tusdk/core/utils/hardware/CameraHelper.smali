.class public Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;
.super Ljava/lang/Object;


# static fields
.field public static final AutoFocusDelay:J = 0x1388L

.field public static final DENOISE_KEY:Ljava/lang/String; = "denoise"

.field public static final DENOISE_VALUES:Ljava/lang/String; = "denoise-values"

.field public static final DENOISE_VALUES_OFF:Ljava/lang/String; = "denoise-off"

.field public static final DENOISE_VALUES_ON:Ljava/lang/String; = "denoise-on"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FocusResetDelay:J = 0x1388L

.field public static final SHARPNESS_KEY:Ljava/lang/String; = "sharpness"

.field public static final SHARPNESS_MAX_VALUE:Ljava/lang/String; = "max-sharpness"

.field public static final SHARPNESS_MIN_VALUE:Ljava/lang/String; = "min-sharpness"

.field public static final autoFocusModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final focusModes:[Ljava/lang/String;

.field public static final videoFocusModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "continuous-picture"

    const-string v1, "continuous-video"

    const-string v2, "infinity"

    const-string v3, "macro"

    const-string v4, "auto"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->focusModes:[Ljava/lang/String;

    const-string v0, "continuous-video"

    const-string v1, "macro"

    const-string v2, "auto"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->videoFocusModes:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/Point;->y:I

    add-int/lit16 p0, p0, 0x3e8

    int-to-float p0, p0

    div-float/2addr p0, v2

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static antiBandingType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    goto :goto_0

    :cond_1
    const-string v1, "50hz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->RATE_50HZ:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    goto :goto_0

    :cond_2
    const-string v1, "60hz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->RATE_60HZ:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    goto :goto_0

    :cond_3
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static cameraCounts()I
    .locals 1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static cameraDisplayOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getRotation(Landroid/content/Context;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a

    :goto_0
    :pswitch_3
    iget p0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    iget p0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v0

    goto :goto_1

    :cond_1
    iget p0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x168

    :goto_1
    rem-int/lit16 p0, p0, 0x168

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static cameraPosition(Landroid/hardware/Camera$CameraInfo;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

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

.method public static canSupportAutofocus(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportAutofocus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->autoFocusModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static canSupportBackFace()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstBackCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canSupportCamera(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "android.hardware.camera"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraCounts()I

    move-result p0

    if-lez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v2

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getCamera(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "fail to access camera"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_2
    const-string v3, "time for checking camera access: %s ms"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static canSupportDenoise(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "denoise"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static canSupportFaceDetection(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->a(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    return p0
.end method

.method public static canSupportFlash(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.flash"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static canSupportSharpness(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "sharpness"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static captureOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;I)I
    .locals 1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraDisplayOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;)I

    move-result p0

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sub-int/2addr p0, p2

    add-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_0
    add-int/2addr p0, p2

    :goto_0
    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static computerCameraViewRect(Landroid/content/Context;Landroid/view/View;Landroid/view/View;F)Landroid/graphics/Rect;
    .locals 4

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p3, v1

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-gt p3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p0, p1, :cond_3

    invoke-static {p2, p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewHeight(Landroid/view/View;I)V

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToCameraArea(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)Landroid/hardware/Camera$Area;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v0, 0x3e8

    if-nez p0, :cond_0

    new-instance p0, Landroid/hardware/Camera$Area;

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->d:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :pswitch_1
    iget p1, p0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :pswitch_2
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float p1, v2, p1

    goto :goto_3

    :pswitch_3
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :pswitch_4
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    :goto_0
    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_1
    iput p0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_5
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float p1, v2, p1

    :goto_2
    iput p1, v1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :pswitch_6
    iget p1, p0, Landroid/graphics/PointF;->y:F

    :goto_3
    iput p1, v1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_4
    sub-float/2addr v2, p0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :goto_5
    iget p0, v1, Landroid/graphics/PointF;->x:F

    const/high16 p1, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    sub-int/2addr p0, v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr p1, v0

    const/16 v0, 0x64

    invoke-static {p0, p1, v0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getFocusRect(IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/hardware/Camera$Area;

    invoke-direct {p1, p0, p2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    return-object p1

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

.method public static createSize(Landroid/hardware/Camera$Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static firstBackCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public static firstCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraCounts()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static firstCameraInfo(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;)Landroid/hardware/Camera$CameraInfo;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Back:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public static firstFrontCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->firstCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public static focusModeType(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    goto :goto_0

    :cond_1
    const-string v1, "macro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    goto :goto_0

    :cond_2
    const-string v1, "continuous-video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousVideo:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    goto :goto_0

    :cond_3
    const-string v1, "continuous-picture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    goto :goto_0

    :cond_4
    const-string v1, "edof"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getCamera(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "open Camera: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getDenoise(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportDenoise(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "denoise"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "denoise-off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static getFlashMode(Landroid/hardware/Camera$Parameters;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_1
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_2
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_3
    const-string v0, "torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_4
    const-string v0, "red-eye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0

    :cond_5
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0
.end method

.method public static getFocusRect(IIII)Landroid/graphics/Rect;
    .locals 6

    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v4, p3

    mul-double/2addr v4, v2

    double-to-int v1, v4

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p0, v0

    sub-int v4, p1, v1

    add-int/2addr p0, v0

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, v2, Landroid/graphics/Rect;->left:I

    const/16 p1, 0x3e8

    const/16 v0, -0x3e8

    if-ge p0, v0, :cond_0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget p0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p2

    iput p0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p0, v2, Landroid/graphics/Rect;->right:I

    if-le p0, p1, :cond_1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    iget p0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, v2, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget p0, v2, Landroid/graphics/Rect;->top:I

    if-ge p0, v0, :cond_2

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iget p0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p3

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    if-le p0, p1, :cond_3

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    iput p0, v2, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    return-object v2
.end method

.method public static getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
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

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-static {p0, v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->matchRatio(ILandroid/hardware/Camera$Size;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/hardware/Camera$Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lorg/lasque/tusdk/core/struct/TuSdkSize;",
            ")",
            "Landroid/hardware/Camera$Size;"
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

    check-cast v2, Landroid/hardware/Camera$Size;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->createSize(Landroid/hardware/Camera$Size;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

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

.method public static getSharpness(Landroid/hardware/Camera$Parameters;)I
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportSharpness(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "sharpness"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
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

.method public static isContinuous(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v0, "continuous-picture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static logParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, p0, v3

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v4, :cond_1

    aget-object v4, v6, v2

    aget-object v5, v6, v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$3;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$3;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "log: %s = %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static logSize(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    const-string v1, "logSize: [preview: %sx%s - picture: %sx%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    iget p0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x2

    aput-object p0, v2, v3

    iget p0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static matchRatio(ILandroid/hardware/Camera$Size;)Z
    .locals 1

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getSizeRatio(II)I

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

.method public static setAntibanding(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->b:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAntibanding;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "off"

    goto :goto_0

    :pswitch_0
    const-string p1, "60hz"

    goto :goto_0

    :pswitch_1
    const-string p1, "50hz"

    goto :goto_0

    :pswitch_2
    const-string p1, "auto"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setAntibanding(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs setAntibanding(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs setColorEffect(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDenoise(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportDenoise(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "denoise"

    if-eqz p1, :cond_1

    const-string p1, "denoise-on"

    goto :goto_0

    :cond_1
    const-string p1, "denoise-off"

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setFlashMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    :cond_0
    const-string v0, "off"

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->e:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "red-eye"

    goto :goto_0

    :pswitch_1
    const-string v0, "torch"

    goto :goto_0

    :pswitch_2
    const-string v0, "auto"

    goto :goto_0

    :pswitch_3
    const-string v0, "on"

    :goto_0
    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)V

    return-void
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->convertToCameraArea(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)Landroid/hardware/Camera$Area;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Area;)V

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setMeteringArea(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Area;)V

    :cond_0
    return-void
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Area;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setFocusMode(Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->swichFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p2, p3}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusPoint(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-void
.end method

.method public static varargs setFocusMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setFocusPoint(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMeteringArea(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Area;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)V

    return-void
.end method

.method public static setPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p2

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->sortSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatio()I

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_4
    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/hardware/Camera$Size;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {p2, p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getNearestSize(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/hardware/Camera$Size;

    move-result-object p3

    :cond_5
    if-nez p3, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Landroid/hardware/Camera$Size;

    :cond_6
    iget p0, p3, Landroid/hardware/Camera$Size;->width:I

    iget p2, p3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static setPreviewFpsRange(Landroid/hardware/Camera$Parameters;I)Z
    .locals 8

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v5, v2, v4

    aget v6, v2, v3

    if-ne v5, v6, :cond_0

    aget v5, v2, v3

    if-ne v5, p1, :cond_0

    aget p1, v2, v4

    aget v0, v2, v3

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    move v2, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v6, v5, v4

    aget v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v6, v1, :cond_2

    aget v6, v5, v4

    aget v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v6, p1, :cond_2

    aget v1, v5, v4

    aget v2, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v5, v4

    aget v5, v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find matched Fps range for ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static setPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IFF)V

    return-void
.end method

.method public static setPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IFF)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->sortSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    iget p2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void

    :cond_3
    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_4

    cmpl-float v5, p3, v6

    if-lez v5, :cond_5

    :cond_4
    move p3, v6

    :cond_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    int-to-double v7, p2

    cmpg-double p3, v5, v7

    if-gez p3, :cond_6

    double-to-int p2, v5

    :cond_6
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatio()I

    move-result p3

    cmpl-float v4, p4, v4

    if-lez v4, :cond_7

    const/high16 p3, 0x41200000    # 10.0f

    mul-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    double-to-int p3, p3

    :cond_7
    invoke-static {p3, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->getMatchRatioSizes(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_b

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/Camera$Size;

    iget v5, p4, Landroid/hardware/Camera$Size;->width:I

    iget v6, p4, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_8

    iget v5, p4, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p2, :cond_8

    iget v5, p4, Landroid/hardware/Camera$Size;->height:I

    if-le v5, p2, :cond_9

    goto :goto_0

    :cond_9
    if-lez v4, :cond_a

    iget v5, p4, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v5, v5, 0x10

    if-gtz v5, :cond_8

    iget v5, p4, Landroid/hardware/Camera$Size;->height:I

    rem-int/lit8 v5, v5, 0x10

    if-lez v5, :cond_a

    goto :goto_0

    :cond_a
    move-object v1, p4

    :cond_b
    const/4 p3, 0x3

    const/4 p4, 0x2

    const/4 v4, 0x4

    if-nez v1, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v6, p2, :cond_c

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    if-le v6, p2, :cond_d

    goto :goto_1

    :cond_d
    move-object v1, v5

    :cond_e
    const-string p2, "no matched previewSize for (%d, %d), pick one: (%d, %d)"

    new-array v0, v4, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    iget p0, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p4

    iget p0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p3

    goto :goto_2

    :cond_f
    const-string p2, "matched previewSize found for (%d, %d) : (%d, %d)"

    new-array v0, v4, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    iget p0, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p4

    iget p0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p3

    :goto_2
    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, v1, Landroid/hardware/Camera$Size;->width:I

    iget p2, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_10
    :goto_3
    return-void
.end method

.method public static varargs setSceneMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setSharpness(Landroid/hardware/Camera$Parameters;I)Z
    .locals 3

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportSharpness(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "max-sharpness"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "min-sharpness"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sharpness"

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static varargs setWhiteBalance(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showAlertIfNotSupportCamera(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->showAlertIfNotSupportCamera(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static showAlertIfNotSupportCamera(Landroid/content/Context;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-nez p0, :cond_1

    return p1

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->cameraCounts()I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "lsq_carema_no_device"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->canSupportCamera(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "lsq_carema_no_access"

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v0

    :cond_4
    const-string v0, "lsq_carema_alert_title"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lsq_button_done"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static sortFaceWithCenterList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Face;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Face;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$2;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static sortSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$1;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static supportFlash(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "off"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public static swichFocusMode(Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$4;->c:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "infinity"

    return-object p0

    :pswitch_0
    const-string p0, "edof"

    return-object p0

    :pswitch_1
    const-string p0, "continuous-picture"

    return-object p0

    :pswitch_2
    const-string p0, "continuous-video"

    return-object p0

    :pswitch_3
    const-string p0, "macro"

    return-object p0

    :pswitch_4
    const-string p0, "auto"

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

.method public static transforFace(Landroid/hardware/Camera$Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Face;->id:I

    iput v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->id:I

    iget v1, p0, Landroid/hardware/Camera$Face;->score:I

    iput v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->score:I

    iget-object v1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->a(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->leftEye:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->a(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rightEye:Landroid/graphics/PointF;

    iget-object p0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->a(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p0

    iput-object p0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->mouth:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->convertOrientation(Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-object v0
.end method

.method public static transforFaces([Landroid/hardware/Camera$Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/Camera$Face;",
            "Lorg/lasque/tusdk/core/utils/image/ImageOrientation;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->sortFaceWithCenterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Face;

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->transforFace(Landroid/hardware/Camera$Face;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unifiedParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setDenoise(Landroid/hardware/Camera$Parameters;Z)Z

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->setSharpness(Landroid/hardware/Camera$Parameters;I)Z

    return-void
.end method
