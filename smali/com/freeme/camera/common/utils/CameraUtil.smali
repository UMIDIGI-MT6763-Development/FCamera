.class public final Lcom/freeme/camera/common/utils/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/utils/CameraUtil$TableList;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.02

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field public static final CAMERA_HARDWARE_EXCEPTION:I = 0x3e8

.field public static final CAMERA_OPEN_FAIL:I = 0x41a

.field private static final DEVICE_TYPE_SPLITTER:Ljava/lang/String; = "#"

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final IMAGE_READER_PREVIEW_HEIGHT:I = 0x1e0

.field private static final IMAGE_READER_PREVIEW_WIDTH:I = 0x320

.field public static final KEYCODE_DISABLE_ZSD:I = 0x21

.field public static final KEYCODE_ENABLE_ZSD:I = 0x20

.field public static final KEYCODE_SET_FLASH_OFF:I = 0x23

.field public static final KEYCODE_SET_FLASH_ON:I = 0x22

.field public static final KEYCODE_SWITCH_CAMERA:I = 0x1f

.field public static final KEYCODE_SWITCH_TO_PHOTO:I = 0x1d

.field public static final KEYCODE_SWITCH_TO_VIDEO:I = 0x1e

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final KEY_DISP_ROT_SUPPORTED:Ljava/lang/String; = "disp-rot-supported"

.field private static final PICTURE_RATIO_4_3:Ljava/lang/String; = "1.3333"

.field public static final PORTRAITBLURDEGRESS:I = 0x4

.field public static final RATIO_11_9:I = 0x7

.field public static final RATIO_16_9:I = 0x1

.field public static final RATIO_18_9:I = 0x5

.field public static final RATIO_19_9:I = 0x9

.field public static final RATIO_2340_1080:I = 0x8

.field public static final RATIO_28_15:I = 0x3

.field public static final RATIO_4_3:I = 0x2

.field public static final RATIO_MMS_VIDEO:I = 0x6

.field public static final RATIO_NEXUS6:I = 0x4

.field private static final RATIO_TOLERANCE:F = 0.1f

.field public static final RATIO_UNKNOWN:I = 0x0

.field public static final SIZE_FULL:I = -0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field private static final UNKNOWN:I = -0x1

.field private static sAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/utils/CameraUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->sAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->sAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method public static acquireJpegBytesAndClose(Landroid/media/Image;)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported image format."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static acquireRgbBufferAndClose(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getContinuousRgbDataFromImage(Landroid/media/Image;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static buildSize(Lcom/freeme/camera/common/utils/Size;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null"

    return-object p0
.end method

.method public static calculateCurrentScreenOrientation(Landroid/app/Activity;)I
    .locals 3

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateCurrentScreenOrientation displayRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 v1, 0xb4

    if-ne p0, v1, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 v1, 0x10e

    if-ne p0, v1, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    return v0
.end method

.method public static calculateRotateLayoutCompensate(Landroid/app/Activity;)I
    .locals 3

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateRotateLayoutCompensate displayRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xb4

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x10e

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static delStereoThumb(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[delStereoThumb]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "camera_refocus=?"

    const-string v0, "2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "cursor is null!"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "cursor count is 0!"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[delStereoThumb] cursor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[delStereoThumb]-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static determineRatio(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float p0, v0, p0

    :cond_0
    const v0, 0x3f9ae148    # 1.21f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const v0, 0x3f9d70a4    # 1.23f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    const v0, 0x3faa3d71    # 1.33f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    const v0, 0x3faccccd    # 1.35f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const v0, 0x3fe28f5c    # 1.77f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_3

    const v0, 0x3fe3d70a    # 1.78f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const v0, 0x3fee147b    # 1.86f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_4

    const v0, 0x3fef5c29    # 1.87f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const v0, 0x3fd47ae1    # 1.66f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5

    const v0, 0x3fd5c28f    # 1.67f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const v0, 0x400a3d71    # 2.16f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_6

    const v1, 0x400ae148    # 2.17f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_7

    const/4 p0, 0x5

    return p0

    :cond_7
    const v1, 0x40066666    # 2.1f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_8

    cmpg-float p0, p0, v0

    if-gez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static determineRatio(II)I
    .locals 0

    if-eqz p1, :cond_1

    if-lt p0, p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(F)I

    move-result p0

    return p0

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dpToPixel(Landroid/content/Context;I)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static enable4CellRequest(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    const-string v0, "com.freeme.control.capture.remosaicenable"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static filterSupportedSizes(Ljava/util/ArrayList;Lcom/freeme/camera/common/utils/Size;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;",
            "Lcom/freeme/camera/common/utils/Size;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static findBestMatchPanelSize(Ljava/util/List;DII)Lcom/freeme/camera/common/utils/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;DII)",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v2}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v3, v0

    if-gtz v5, :cond_0

    move-object p3, v2

    move-wide v0, v3

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findBestMatchPanelSize size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " X "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    return-object p3
.end method

.method public static formatDeviceType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "#"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static geScreenRatio(Lcom/freeme/camera/common/app/IApp;)I
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result p0

    return p0
.end method

.method public static getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getAvailableSessionKeys] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getAvailableSessionKeys] No keys!"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAvailableSessionKeys] key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getBytesFromImageAsType(Landroid/media/Image;I)[B
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    const/16 v4, 0x23

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    div-int/lit8 v3, v3, 0x4

    new-array v5, v3, [B

    new-array v3, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v11, v0

    if-ge v7, v11, :cond_c

    aget-object v11, v0, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    aget-object v12, v0, v7

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    aget-object v13, v0, v7

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    new-array v14, v14, [B

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    move v13, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v8, v2, :cond_0

    invoke-static {v14, v11, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/2addr v13, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v17, v0

    move v8, v13

    goto/16 :goto_8

    :cond_1
    const/4 v13, 0x2

    const/4 v15, 0x1

    if-ne v7, v15, :cond_6

    move/from16 v17, v9

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_2
    div-int/lit8 v6, v2, 0x2

    if-ge v9, v6, :cond_5

    const/4 v6, 0x0

    :goto_3
    div-int/lit8 v15, v1, 0x2

    if-ge v6, v15, :cond_2

    add-int/lit8 v15, v17, 0x1

    aget-byte v18, v14, v16

    aput-byte v18, v5, v17

    add-int v16, v16, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v15

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    if-ne v11, v13, :cond_3

    sub-int v6, v12, v1

    add-int v16, v16, v6

    goto :goto_4

    :cond_3
    const/4 v6, 0x1

    if-ne v11, v6, :cond_4

    sub-int v6, v12, v15

    add-int v16, v16, v6

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    move/from16 v9, v17

    move-object/from16 v17, v0

    goto :goto_8

    :cond_6
    if-ne v7, v13, :cond_b

    move v15, v10

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5
    div-int/lit8 v13, v2, 0x2

    if-ge v6, v13, :cond_a

    move v13, v10

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v17, v0

    div-int/lit8 v0, v1, 0x2

    if-ge v10, v0, :cond_7

    add-int/lit8 v0, v15, 0x1

    aget-byte v18, v14, v13

    aput-byte v18, v3, v15

    add-int/2addr v13, v11

    add-int/lit8 v10, v10, 0x1

    move v15, v0

    move-object/from16 v0, v17

    goto :goto_6

    :cond_7
    const/4 v10, 0x2

    if-ne v11, v10, :cond_8

    sub-int v0, v12, v1

    add-int/2addr v13, v0

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x1

    if-ne v11, v10, :cond_9

    sub-int v0, v12, v0

    add-int/2addr v13, v0

    :cond_9
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v10, v13

    move-object/from16 v0, v17

    const/4 v13, 0x2

    goto :goto_5

    :cond_a
    move-object/from16 v17, v0

    move v10, v15

    goto :goto_8

    :cond_b
    move-object/from16 v17, v0

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_c
    packed-switch p1, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    const/4 v0, 0x0

    :goto_9
    array-length v1, v3

    if-ge v0, v1, :cond_d

    add-int/lit8 v1, v8, 0x1

    aget-byte v2, v3, v0

    aput-byte v2, v4, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v2, v5, v0

    aput-byte v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :pswitch_1
    const/4 v0, 0x0

    :goto_a
    array-length v1, v3

    if-ge v0, v1, :cond_d

    add-int/lit8 v1, v8, 0x1

    aget-byte v2, v5, v0

    aput-byte v2, v4, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v2, v3, v0

    aput-byte v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :pswitch_2
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    add-int/2addr v8, v0

    array-length v0, v3

    invoke-static {v3, v1, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_b
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraNum(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCamIdsByFacing] cameraNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p0, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p0, :cond_2

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v4, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCamIdsByFacing] i =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",facing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getCameraCharacteristics(Landroid/app/Activity;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    :try_start_0
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    invoke-static {p0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public static getContinuousRgbDataFromImage(Landroid/media/Image;)[B
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "getContinuousRGBADataFromImage begin"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    new-instance v3, Landroid/graphics/PixelFormat;

    invoke-direct {v3}, Landroid/graphics/PixelFormat;-><init>()V

    invoke-static {v0, v3}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    const/4 v0, 0x0

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p0

    mul-int v6, v1, v2

    iget v3, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x8

    new-array v3, v6, [B

    mul-int/2addr p0, v1

    sub-int/2addr v5, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v3, v1, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "getContinuousRGBADataFromImage end"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getDisplayOrientation(IILandroid/content/Context;)I
    .locals 1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getRecordingRotation] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p2

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getRecordingRotation] unknown  degrees"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p2

    :cond_1
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p2, :cond_2

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    rsub-int p0, p1, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_2
    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p0, p1, 0x168

    :goto_0
    return p0
.end method

.method public static getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->getV2DisplayOrientation(IILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/mediatek/camera/portability/WifiDisplayStatusEx;->isWfdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x10e

    return p0

    :pswitch_1
    const/16 p0, 0xb4

    return p0

    :pswitch_2
    const/16 p0, 0x5a

    return p0

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImageReaderPreviewSize(Ljava/util/List;I)Lcom/freeme/camera/common/utils/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;I)",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide p0, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->findBestMatchPanelSize(Ljava/util/List;DII)Lcom/freeme/camera/common/utils/Size;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/utils/Size;

    return-object p0
.end method

.method public static getJpegRotation(IILandroid/content/Context;)I
    .locals 1

    invoke-static {p2, p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getJpegRotation] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p2, :cond_1

    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_1
    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    :goto_0
    return p0
.end method

.method public static getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I
    .locals 1

    invoke-static {p2, p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getJpegRotationFromDeviceSpec] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p2, :cond_1

    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_1
    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    :goto_0
    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight()I
    .locals 2

    :try_start_0
    const-string v0, "com.freeme.util.FreemeNotchUtil"

    invoke-static {v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object v0

    const-string v1, "getNotchHeight"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->method(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZI)Lcom/freeme/camera/common/utils/Size;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;DZI)",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    if-gt v2, p5, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v2, v2, p2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v1, p0

    mul-double/2addr v1, p2

    double-to-int p1, v1

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    invoke-static {v0, p2, p3, p1, p0}, Lcom/freeme/camera/common/utils/CameraUtil;->findBestMatchPanelSize(Ljava/util/List;DII)Lcom/freeme/camera/common/utils/Size;

    move-result-object p5

    if-eqz p5, :cond_2

    return-object p5

    :cond_2
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez p5, :cond_5

    sget-object p1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", then use standard 4:3 for preview"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p1, "1.3333"

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {p4}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    int-to-double v3, v0

    invoke-virtual {p4}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p4}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v3, v0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_3

    invoke-virtual {p4}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p5

    sub-int/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-double v0, p5

    move-object p5, p4

    move-wide v1, v0

    goto :goto_1

    :cond_5
    return-object p5
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZZLjava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;DZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCustomPreviewSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "0"

    invoke-virtual {v2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-eqz v0, :cond_0

    sget-object p5, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCustomPreviewSize:Ljava/lang/String;

    const-string p6, "x"

    invoke-virtual {p5, p6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aget-object p6, p5, p6

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6

    aget-object p5, p5, v1

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    int-to-float p7, p6

    int-to-float v0, p5

    div-float/2addr p7, v0

    float-to-double v0, p7

    sub-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p7, v0, v2

    if-gez p7, :cond_0

    new-instance p0, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {p0, p6, p5}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object p0

    :cond_0
    const-string p5, "window"

    invoke-virtual {p0, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, p5, Landroid/graphics/Point;->x:I

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p5, p0

    mul-double/2addr p5, p2

    double-to-int p5, p5

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    invoke-static {p1, p2, p3, p5, p0}, Lcom/freeme/camera/common/utils/CameraUtil;->findBestMatchPanelSize(Ljava/util/List;DII)Lcom/freeme/camera/common/utils/Size;

    move-result-object p6

    if-eqz p6, :cond_1

    return-object p6

    :cond_1
    const-wide p4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez p6, :cond_4

    sget-object p7, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", then use standard 4:3 for preview"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p7, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p2, "1.3333"

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {p7}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p7}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    sub-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p7}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_2

    invoke-virtual {p7}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p4

    sub-int/2addr p4, p0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-double p4, p4

    move-object p6, p7

    goto :goto_0

    :cond_4
    return-object p6
.end method

.method public static getOrientationFromExif([B)I
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-direct {v0}, Lcom/freeme/camera/common/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget p0, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10e

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    goto :goto_1

    :cond_3
    const/16 v0, 0xb4

    :cond_4
    :goto_1
    return v0
.end method

.method public static getRecordingRotation(IILandroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRecordingRotation]orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getRecordingRotation] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p2, :cond_1

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_1
    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    :goto_0
    return p1
.end method

.method public static getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getRequestKey] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getRequestKey] No keys!"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRequestKey] key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getResultKey] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getResultKey] No keys!"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getResultKey] key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 4

    if-eqz p0, :cond_0

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v2, v1, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSize("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") return "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getSizeByTargetSize(Ljava/util/List;Landroid/hardware/Camera$Size;Z)Lcom/freeme/camera/common/utils/Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            "Z)",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    if-eqz p2, :cond_1

    const-wide/32 v1, 0x7fffffff

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    new-instance v5, Lcom/freeme/camera/common/utils/Size;

    iget v6, p1, Landroid/hardware/Camera$Size;->width:I

    iget v7, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    iget v6, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, p1

    div-double/2addr v6, v8

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p1, v6, v8

    if-gtz p1, :cond_2

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v6

    mul-int/2addr p1, v6

    int-to-long v6, p1

    if-eqz p2, :cond_3

    cmp-long p1, v6, v1

    if-gez p1, :cond_3

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-long v1, p1

    move-object v0, v5

    :cond_3
    if-nez p2, :cond_2

    cmp-long p1, v6, v1

    if-lez p1, :cond_2

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-long v0, p1

    move-wide v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSizeByTargetSize(Ljava/util/List;Lcom/freeme/camera/common/utils/Size;Z)Lcom/freeme/camera/common/utils/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/freeme/camera/common/utils/Size;",
            "Z)",
            "Lcom/freeme/camera/common/utils/Size;"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    if-eqz p2, :cond_1

    const-wide/32 v1, 0x7fffffff

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v5, v5

    if-eqz p2, :cond_3

    cmp-long v7, v5, v1

    if-gez v7, :cond_3

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v1, v0

    move-object v0, p1

    :cond_3
    if-nez p2, :cond_2

    cmp-long v5, v5, v1

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v1, v0

    move-object v0, p1

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-direct {v0}, Lcom/freeme/camera/common/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget p0, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    sget v1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/freeme/camera/common/utils/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object p0
.end method

.method public static getSizeFromSdkExif(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "ImageWidth"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move p0, v0

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSizeFromSdkExif] width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object v1
.end method

.method public static getStaticKeyResult(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getStaticKeyResult] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getStaticKeyResult] No keys!"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStaticKeyResult] key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getV2DisplayOrientation(IILandroid/content/Context;)I
    .locals 1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getV2DisplayOrientation] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p2

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[getV2DisplayOrientation] unknown  degrees"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p2

    :cond_1
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p2, :cond_2

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    rsub-int p0, p1, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_2
    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p0, p1, 0x168

    :goto_0
    return p0
.end method

.method public static hasFocuser(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[hasFocuser] characteristics is null"

    invoke-static {p0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_2

    return v0

    :cond_2
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v2

    :cond_3
    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hasFocuser] hasFocuser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static hasNotch()Z
    .locals 2

    :try_start_0
    const-string v0, "com.freeme.util.FreemeNotchUtil"

    invoke-static {v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object v0

    const-string v1, "hasNotch"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/reflect/ReflectUtils;->method(Ljava/lang/String;)Lcom/freeme/camera/common/reflect/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/reflect/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/freeme/camera/common/reflect/ReflectUtils$ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasWaterDrop()Z
    .locals 1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isWaterDrop()Z

    move-result v0

    return v0
.end method

.method public static hideAlertDialog(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->sAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$1;

    invoke-direct {v0}, Lcom/freeme/camera/common/utils/CameraUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static is4CellSensor(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    const-string v0, "com.freeme.control.capture.remosaicenable"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCameraFacingFront(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCameraCharacteristicsFromDeviceSpec(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isColumnExistInDB(Landroid/app/Activity;Lcom/freeme/camera/common/utils/CameraUtil$TableList;Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isColumnExistInDB] + table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil$3;->$SwitchMap$com$freeme$camera$common$utils$CameraUtil$TableList:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v0

    goto :goto_0

    :pswitch_0
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    const-string p1, "external"

    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p0, -0x1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move p1, p0

    :goto_1
    if-eq p1, p0, :cond_2

    const/4 p0, 0x1

    move v1, p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move p0, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    sget-object p1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isColumnExistInDB] - index = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isInDB "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isDisplayRotateSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const-string v0, "disp-rot-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFreemeTheme()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "USE_FREEME_THEME_STYLES"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "USE_FREEME_THEME_STYLES"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHasNavigationBar(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isHasNavigationBarForFreeme(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedInitSetting(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

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

.method public static isServiceRun(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    move v0, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceRun "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceRun service name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is run "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_2
    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceRun mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " className = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static isSpecialKeyCodeEnabled()Z
    .locals 4

    const-string v0, "mtk.camera.app.keycode.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSpecialKeyCodeEnabled] isEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStillCaptureTemplate] frame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSupportAvailableMode(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[isSupportAvailableMode] characteristics is null"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[isSupportAvailableMode] No keys!"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSupportAvailableMode] key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    if-ne v5, p2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static isTablet()Z
    .locals 4

    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTablet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static isTheSameAspectRatio(Lcom/freeme/camera/common/utils/Size;Lcom/freeme/camera/common/utils/Size;)Z
    .locals 5
    .param p0    # Lcom/freeme/camera/common/utils/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/freeme/camera/common/utils/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p0

    int-to-double v3, p0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v3, p0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v1

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isTheSameString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "isTheSameDeviceType with first device type is null or empty!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "isTheSameDeviceType with second device type is null or empty!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isWaterDrop()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "WATER_DROP_SCREEN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "WATER_DROP_SCREEN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static launchCamera(Landroid/app/Activity;)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[launchCamera]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "com.freeme.camera.common.mode.photo.PhotoMode"

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/freeme/camera/common/loader/FeatureLoader;->updateSettingCurrentModeKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getInstance()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0, v3}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getCameraDeviceManager(Landroid/content/Context;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v2}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[launchCamera] e:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/device/CameraOpenException;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[launchCamera]- id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", api:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static mirrorJpegData([BI)[B
    .locals 3

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMatrix mirror ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " displayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, p3

    const/high16 p2, 0x44fa0000    # 2000.0f

    div-float p3, p1, p2

    int-to-float p4, p4

    div-float p2, p4, p2

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    div-float/2addr p4, p2

    invoke-virtual {p0, p1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static resizeToFill(IIIII)Landroid/graphics/Point;
    .locals 1

    rem-int/lit16 p2, p2, 0xb4

    if-eqz p2, :cond_0

    move v0, p1

    move p1, p0

    move p0, v0

    :cond_0
    const/4 p2, -0x2

    if-eq p0, p2, :cond_1

    if-ne p1, p2, :cond_2

    :cond_1
    move p0, p3

    move p1, p4

    :cond_2
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput p3, p2, Landroid/graphics/Point;->x:I

    iput p4, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, p0

    mul-int/2addr p3, p1

    if-le p4, p3, :cond_3

    iget p3, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, p3

    div-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget p3, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p3

    div-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Point;->x:I

    :goto_0
    return-object p2
.end method

.method public static rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_1

    :cond_0
    add-int/lit16 p2, p2, 0xb4

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    return-void
.end method

.method public static rotateViewOrientation(Landroid/view/View;IZ)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lcom/freeme/camera/common/widget/Rotatable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p0, p1, p2}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[showErrorAndFinish]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showErrorInfoAndFinish(Landroid/app/Activity;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x41a

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    const-string p1, "cannot_connect_camera_new"

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "camera_disabled"

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string p1, "cannot_connect_camera_new"

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "dialog_ok"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static splitDeviceType(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "splitDeviceType with device type is null or empty!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "#"

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v1, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static splitString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceRun mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " intent = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static unSupportFrontSLR()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_FRONT_SLR_SHOW"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v3, "CAMERA_FRONT_SLR_SHOW"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v3, "CAMERA_FRONT_SLR_SHOW"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method
