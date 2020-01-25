.class public Lcom/freeme/camera/feature/mode/iko/HeifHelper;
.super Ljava/lang/Object;
.source "HeifHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;
    }
.end annotation


# static fields
.field public static FORMAT_HEIF:I = 0x0

.field public static final HEIF_WAIT_TIME:J = 0x2710L

.field private static final IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_S"

.field public static final KEY_FORMAT:Ljava/lang/String; = "key_format"

.field public static final SUFFIX_NAME:Ljava/lang/String; = "heic"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static orientation:I


# instance fields
.field private mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mImageFileName:Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/16 v0, 0x23

    sput v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    const/4 v0, -0x1

    sput v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->orientation:I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/ICameraContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;

    const-string v0, "\'IMG\'_yyyyMMdd_HHmmss_S"

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;-><init>(Lcom/freeme/camera/feature/mode/iko/HeifHelper;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mImageFileName:Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;

    return-void
.end method

.method public static getCaptureFormat(Ljava/lang/String;)I
    .locals 1

    const-string v0, "heif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    :goto_0
    return p0
.end method

.method public static getYUVBuffer(Landroid/media/Image;)[B
    .locals 9

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sget-object v6, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getBuffer] Yb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Ub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Vb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int v6, v3, v4

    add-int v7, v6, v5

    new-array v7, v7, [B

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v7, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "save the data to SD Card"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "yuv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V

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

    move-object v0, p0

    move-object p0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    sget-object v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to write image,ex:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "IOException:"

    invoke-static {v0, v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v7

    :goto_2
    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "IOException:"

    invoke-static {v1, v2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw v0
.end method

.method public static saveData([BIIILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p1, p2, v2}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;-><init>(Ljava/lang/String;III)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;->setGridEnabled(Z)Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;

    invoke-virtual {v1, p3}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;->setRotation(I)Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;

    :try_start_0
    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter$Builder;->build()Lcom/freeme/camera/common/mode/photo/heif/HeifWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter;->start()V

    sget p2, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    invoke-virtual {p1, p2, p0}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter;->addYuvBuffer(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter;->stop(J)V

    sget-object p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveData] save heif file consume time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p2, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "Exception"

    invoke-static {p2, p3, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/photo/heif/HeifWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "getjpeg IOException "

    invoke-static {p1, p2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createBitmapFromYuv([BIII)Landroid/graphics/Bitmap;
    .locals 6

    sget v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    sget v5, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->orientation:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createContentValues(ILjava/lang/String;JII)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mImageFileName:Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;

    invoke-virtual {v1, p3, p4}, Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;->generateTitle(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/heic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "heic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "title"

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_display_name"

    invoke-virtual {v0, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "mime_type"

    invoke-virtual {v0, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "orientation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "_data"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "latitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p3, "longitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    sget-object p2, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createContentValues, width : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",orientation = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentValues(II)Landroid/content/ContentValues;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->mImageFileName:Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;

    invoke-virtual {v0, v3, v4}, Lcom/freeme/camera/feature/mode/iko/HeifHelper$ImageFileName;->generateTitle(J)Ljava/lang/String;

    sget v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->orientation:I

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->createContentValues(ILjava/lang/String;JII)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
