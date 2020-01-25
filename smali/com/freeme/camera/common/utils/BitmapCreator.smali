.class public Lcom/freeme/camera/common/utils/BitmapCreator;
.super Ljava/lang/Object;
.source "BitmapCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/utils/BitmapCreator$Media;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.freeme.storage.StorageManagerEx"

.field private static final DCIM_CAMERA_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

.field private static final FOLDER_PATH:Ljava/lang/String;

.field private static final METHOD_NAME:Ljava/lang/String; = "getDefaultPath"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sGetDefaultPath:Ljava/lang/reflect/Method;

.field private static sMountPoint:Ljava/lang/String;

.field private static sUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/utils/BitmapCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->FOLDER_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->DCIM_CAMERA_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sUri:Landroid/net/Uri;

    :try_start_0
    const-string v0, "com.freeme.storage.StorageManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "getDefaultPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sGetDefaultPath:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sGetDefaultPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sGetDefaultPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "ClassNotFoundException: com.freeme.storage.StorageManagerEx"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "NoSuchMethodException: getDefaultPath"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static covertYuvDataToJpeg([BIII)[B
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/YuvImage;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 p1, 0x2

    invoke-static {p1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result p1

    invoke-virtual {v1, v0, p1, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromJpeg] jpeg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/freeme/camera/common/utils/BitmapCreator;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->getJpegOrientation(Lcom/freeme/camera/common/exif/ExifInterface;)I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "create bitmap from exif thumbnail"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/freeme/camera/common/utils/BitmapCreator;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->getJpegWidth(Lcom/freeme/camera/common/exif/ExifInterface;)I

    move-result v1

    int-to-double v3, v1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createBitmapFromJpeg] end"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/freeme/camera/common/utils/BitmapCreator;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "createBitmapFromJpeg fail"

    invoke-static {p1, v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromVideo] filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const-wide/16 p0, -0x1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createBitmapFromVideo] bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-le p1, p2, :cond_2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromVideo] w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    return-object p0

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_4
    throw p0
.end method

.method public static createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromYuv] yuvData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", yuvWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yuvHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imageFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/utils/BitmapCreator;->isNeedDumpYuv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sdcard/postView.yuv"

    invoke-static {v0, p0}, Lcom/freeme/camera/common/utils/BitmapCreator;->dumpYuv(Ljava/lang/String;[B)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/freeme/camera/common/utils/BitmapCreator;->covertYuvDataToJpeg([BIII)[B

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    int-to-double p3, p4

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    :try_start_0
    array-length p3, p0

    invoke-static {p0, p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[createBitmapFromYuv] end"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p0, p5}, Lcom/freeme/camera/common/utils/BitmapCreator;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "createBitmapFromYuv fail"

    invoke-static {p1, p2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static decodeBitmapFromJpeg([BI)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/freeme/camera/common/utils/BitmapCreator;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->getJpegOrientation(Lcom/freeme/camera/common/exif/ExifInterface;)I

    move-result v2

    invoke-static {v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->getJpegWidth(Lcom/freeme/camera/common/exif/ExifInterface;)I

    move-result v1

    int-to-double v3, v1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/freeme/camera/common/utils/BitmapCreator;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "decodeBitmapFromJpeg fail"

    invoke-static {p1, v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private static dumpYuv(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[dumpYuv] begin"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[dumpYuv]Failed to write image,ex:"

    invoke-static {p1, v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    sget-object p1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[dumpYuv]IOException:"

    invoke-static {p1, v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[dumpYuv] end"

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[dumpYuv]IOException:"

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p0
.end method

.method private static getBucketId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/freeme/camera/common/utils/BitmapCreator;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBucketId directory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExif(Ljava/lang/String;)Lcom/freeme/camera/common/exif/ExifInterface;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-direct {v0}, Lcom/freeme/camera/common/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "filePath is null, can not get exif"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;
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

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "JPEG data is null, can not get exif"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFileDirectory()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/utils/BitmapCreator;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->DCIM_CAMERA_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private static getJpegOrientation(Lcom/freeme/camera/common/exif/ExifInterface;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget v1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/freeme/camera/common/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "exif is null, can not get JpegOrientation"

    invoke-static {p0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static getJpegWidth(Lcom/freeme/camera/common/exif/ExifInterface;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget v2, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {p0, v2}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "exif is null, can not get JpegWidth"

    invoke-static {p0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getLastBitmapFromDatabase(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "getLastBitmapFromDatabase() begin."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v1, "_id"

    const-string v3, "orientation"

    const-string v4, "datetaken"

    const-string v5, "_data"

    const-string v6, "media_type"

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((media_type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "media_type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ) AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bucket_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/common/utils/BitmapCreator;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "datetaken DESC,_id DESC"

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;

    invoke-static {v7, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Lcom/freeme/camera/common/utils/BitmapCreator$Media;-><init>(JIJLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object v3, v10

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastBitmapFromDatabase() media="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez v3, :cond_2

    sput-object v10, Lcom/freeme/camera/common/utils/BitmapCreator;->sUri:Landroid/net/Uri;

    return-object v10

    :cond_2
    iget v1, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->orientation:I

    :try_start_2
    iget v4, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->mediaType:I

    if-ne v4, v8, :cond_4

    iget-object v2, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/freeme/camera/common/utils/BitmapCreator;->getExif(Ljava/lang/String;)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/freeme/camera/common/exif/ExifInterface;->hasThumbnail()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/freeme/camera/common/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "get bitmap from exif thumbnail"

    invoke-static {v0, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/freeme/camera/common/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-wide v4, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->id:J

    invoke-static {v0, v4, v5, v8, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/freeme/camera/common/utils/BitmapCreator;->sUri:Landroid/net/Uri;

    goto :goto_2

    :cond_4
    iget v4, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->mediaType:I

    if-ne v4, v9, :cond_5

    iget-wide v4, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->id:J

    invoke-static {v0, v4, v5, v8, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v3, v3, Lcom/freeme/camera/common/utils/BitmapCreator$Media;->id:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->sUri:Landroid/net/Uri;

    move v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v10

    :goto_2
    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "getThumbnail fail"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Quit getLastBitmap"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v10

    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getUriAfterQueryDb()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static isDefaultPathCanUsed()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sGetDefaultPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->sMountPoint:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/freeme/camera/common/utils/BitmapCreator;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/common/utils/BitmapCreator;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isDefaultPathCanUsed] isDefaultPathCanUsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static isExtendStorageCanUsed()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/utils/BitmapCreator;->isDefaultPathCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNeedDumpYuv()Z
    .locals 4

    const-string v0, "vendor.debug.thumbnailFromYuv.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedDumpYuv] return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/utils/BitmapCreator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Failed to rotate bitmap"

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method
