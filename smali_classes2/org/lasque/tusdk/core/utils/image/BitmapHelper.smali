.class public Lorg/lasque/tusdk/core/utils/image/BitmapHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)F
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    if-eqz p2, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-ge p0, v0, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method private static a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Matrix;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getDegree()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/BitmapHelper$1;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :pswitch_0
    neg-float p0, p1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :pswitch_1
    neg-float p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Landroid/graphics/Bitmap;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p0, p2, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move p1, v1

    :goto_0
    const-string p2, "Error accessing outputStream"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return p1
.end method

.method private static a(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, v3, p2, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_7

    :catch_2
    move-exception p2

    move p1, v1

    :goto_0
    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception p2

    move p1, v1

    :goto_1
    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p2

    move p1, v1

    :goto_2
    :try_start_3
    const-string v3, "Error accessing file: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    :goto_3
    invoke-static {p2, v3, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception p2

    move p1, v1

    :goto_4
    const-string v3, "File not found: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_5
    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_6
    return p1

    :goto_7
    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method private static a(Ljava/io/File;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p3, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_7

    :catch_2
    move-exception p2

    move p1, v1

    :goto_0
    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception p2

    move p1, v1

    :goto_1
    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p2

    move p1, v1

    :goto_2
    :try_start_3
    const-string p3, "Error accessing file: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    :goto_3
    invoke-static {p2, p3, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception p2

    move p1, v1

    :goto_4
    const-string p3, "File not found: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_5
    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_6
    return p1

    :goto_7
    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method private static b(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)Z

    move-result p0

    return p0
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;I)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2InputStream(Landroid/graphics/Bitmap;ILjava/lang/StringBuilder;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;ILjava/lang/StringBuilder;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public static bitmap2byteArray(Landroid/graphics/Bitmap;I)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "bitmap2byteArray: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static bitmap2byteArrayMaxByte(Landroid/graphics/Bitmap;I)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x64

    :cond_1
    invoke-static {p0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    add-int/lit8 v1, v1, -0x5

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    array-length v3, v2

    if-le v3, p1, :cond_4

    if-lez p1, :cond_3

    if-gtz v1, :cond_1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    return-object v2
.end method

.method public static bitmap2byteArrayTurbo(Landroid/graphics/Bitmap;I)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isSupporTurbo()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Ljava/io/ByteArrayOutputStream;Landroid/graphics/Bitmap;I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    move v0, v2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_0
    :try_start_2
    const-string p2, "Error accessing file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    :goto_1
    invoke-static {p1, p2, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    const-string p2, "File not found: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_3
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_4
    return v0

    :goto_5
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0

    :cond_2
    :goto_6
    return v0
.end method

.method public static changeColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static computerMinMaxSideInRegionRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/Rect;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :goto_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static computerScaleSize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    move p1, p2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p2, p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->evenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createOvalImage(III)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/RectF;->left:F

    iput v3, p2, Landroid/graphics/RectF;->top:F

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    int-to-float p0, p1

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, v0

    :goto_1
    :try_start_2
    const-string p1, "decodeFileDescriptor: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    :goto_2
    invoke-static {p0, p1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p0

    move-object v3, v0

    :goto_3
    const-string p1, "decodeFileDescriptor: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_4
    return-object v0

    :catchall_1
    move-exception p0

    :goto_5
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0

    :cond_1
    :goto_6
    return-object v0
.end method

.method public static getAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;FZ)Landroid/graphics/Bitmap;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-direct {v1, v2, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-static {p2, v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Landroid/graphics/BitmapFactory$Options;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)I

    move-result p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->decodeFileDescriptor(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZZ)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p4

    const/4 v0, 0x1

    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p4, p1, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Landroid/graphics/BitmapFactory$Options;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)I

    move-result v0

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->decodeFileDescriptor(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->decodeFileDescriptor(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;I)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;IZ)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-static {p0, v0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    invoke-static {v0, p1, p0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;Z)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZI)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p2, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    invoke-static {v0, p2, p0, p3, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmapFormRaw(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getRawStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static getBitmapSize(Ljava/io/File;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getDrawableBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getImageOrientation(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz p0, :cond_0

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getRawBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getRawStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static imageCorp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorpResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;FLorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageCorp(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/RectHelper;->fixedCorpPrecentRect(Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v2

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v4

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v6

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p2, :cond_2

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p2, p2

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float/2addr v1, p1

    div-float/2addr p2, v1

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p2, v4

    invoke-direct {p1, v1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;ZZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageCorp(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageCorpResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;FLorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result p2

    :cond_0
    move v3, p2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageCorpResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p0, p1, v0, p2, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorpResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;FLorg/lasque/tusdk/core/utils/image/ImageOrientation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageDecode([BZ)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getDefaultOptions(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    invoke-static {v1, v0, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageLimit(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-lez p1, :cond_1

    int-to-float p1, p1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;ZZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 10

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->fixedRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, v1, :cond_3

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p2, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_3
    invoke-static {p0, p1, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    if-nez p4, :cond_4

    cmpl-float p4, p1, p3

    if-lez p4, :cond_4

    move p1, p3

    :cond_4
    invoke-static {p5, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "create Bitmap failed,return orginal Bitmap"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_6
    :goto_2
    const-string p0, "Image width and height must be > 0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZ)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v5, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/RectF;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;ZZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZFZLorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static mergeAbove(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v4, p1, p0, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p0, 0x1f

    invoke-virtual {v4, p0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    return-object v3

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static recycled(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isSupporTurbo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->b(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveBitmapAsPNG(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)Z

    move-result p0

    return p0
.end method

.method public static saveBitmapAsWebP(Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->c(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result p0

    return p0
.end method
