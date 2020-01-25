.class public Lorg/lasque/tusdk/core/utils/image/ExifHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/image/ExifHelper$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllTags(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getExifInterface(Ljava/io/File;)Lorg/lasque/tusdk/core/exif/ExifInterface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getExifDescription(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getExifInterface(Ljava/io/File;)Lorg/lasque/tusdk/core/exif/ExifInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getExifDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getExifDescription(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExifInterface(Ljava/io/File;)Lorg/lasque/tusdk/core/exif/ExifInterface;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1f

    invoke-virtual {v1, p0, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->readExif(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "getExifInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getExifInterface(Ljava/lang/String;)Lorg/lasque/tusdk/core/exif/ExifInterface;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getExifInterface(Ljava/io/File;)Lorg/lasque/tusdk/core/exif/ExifInterface;

    move-result-object p0

    return-object p0
.end method

.method public static getExifInterface([B)Lorg/lasque/tusdk/core/exif/ExifInterface;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;-><init>()V

    const/16 v2, 0x1f

    :try_start_0
    invoke-virtual {v1, p0, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->readExif([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "getExifInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static log(Ljava/io/File;)V
    .locals 6

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getAllTags(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/exif/ExifTag;

    const-string v3, "exifTag (%s) %s: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Lorg/lasque/tusdk/core/utils/image/JpegExfiTag;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string v0, "Exif info unexsit: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/exif/ExifTag;

    const-string v3, "exifTag (%s) %s: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Lorg/lasque/tusdk/core/utils/image/JpegExfiTag;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string v2, "Exif info unexsit: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static writeExif(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->getAllTags(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmapSize(Ljava/io/File;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;-><init>()V

    invoke-virtual {v1, p0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    sget p0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    sget p0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/io/File;)Z

    return-void
.end method

.method public static writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->writeExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "writeExifInterface"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v0
.end method
