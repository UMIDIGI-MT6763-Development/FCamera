.class public Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;
    }
.end annotation


# static fields
.field public static final PHOTOJECTIONS:[Ljava/lang/String;

.field public static final PHOTOJECTIONS_JELLY_BEAN:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final PHOTOJECTIONS_LOW:[Ljava/lang/String;

.field public static final PHOTOJECTIONS_VIDEO:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "_id"

    const-string v1, "orientation"

    const-string v2, "_data"

    const-string v3, "date_modified"

    const-string v4, "bucket_id"

    const-string v5, "_size"

    const-string v6, "width"

    const-string v7, "height"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_JELLY_BEAN:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "orientation"

    const-string v3, "_data"

    const-string v4, "date_modified"

    const-string v5, "bucket_id"

    const-string v6, "_size"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_LOW:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "date_modified"

    const-string v3, "bucket_id"

    const-string v4, "_size"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_VIDEO:[Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_LOW:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_JELLY_BEAN:[Ljava/lang/String;

    :goto_0
    sput-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getDefaultContentValues(Landroid/graphics/Bitmap;)Landroid/content/ContentValues;

    move-result-object p3

    :cond_1
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0, p2, v2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "saveJpgToAblum faild: %s"

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "saveJpgToAblum: %s"

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object p3

    :goto_2
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0

    :cond_4
    :goto_3
    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/content/ContentValues;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "width"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "height"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "saveJpgToAblum: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, p2, v1

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object p3

    :goto_2
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static build(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getDefaultContentValues(Landroid/graphics/Bitmap;)Landroid/content/ContentValues;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumFile()Ljava/io/File;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "description"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public static getAlbumCoverInfo(Landroid/content/Context;J)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 7

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "date_modified DESC"

    sget-object v3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlbumList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "COUNT(*) AS bucket_total"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "1) GROUP BY bucket_id-- ("

    const-string v6, "bucket_display_name ASC"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getWithCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    invoke-direct {v2, v1}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;-><init>(Landroid/database/Cursor;)V

    iget-wide v3, v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->id:J

    invoke-static {p0, v3, v4}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getAlbumCoverInfo(Landroid/content/Context;J)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v3

    iput-object v3, v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->cover:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->sortTitle(Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getCommonContentValues()Landroid/content/ContentValues;
    .locals 6

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_modified"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2
.end method

.method public static getDefaultContentValues(Landroid/graphics/Bitmap;)Landroid/content/ContentValues;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getCommonContentValues()Landroid/content/ContentValues;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->a(Landroid/graphics/Bitmap;Landroid/content/ContentValues;)V

    :cond_1
    return-object v0
.end method

.method public static getImageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/database/Cursor;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageInfo(Landroid/content/Context;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 6

    sget-object v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getWithCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/database/Cursor;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInfo(Landroid/database/Cursor;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;-><init>(Landroid/database/Cursor;)V

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getLocalImageFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/content/Context;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getPhotoList(Landroid/content/ContentResolver;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date_modified"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, " DESC"

    goto :goto_0

    :cond_1
    const-string p1, " ASC"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getPhotoList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoList(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->Date_Modified:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getPhotoList(Landroid/content/Context;JLorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoList(Landroid/content/Context;JLorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper$PhotoSortDescriptor;->desc:Z

    if-eqz p2, :cond_1

    const-string p2, " DESC"

    goto :goto_0

    :cond_1
    const-string p2, " ASC"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getWithCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getPhotoList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThumbnail(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-wide v1, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->id:J

    invoke-static {p0, v1, v2, p2, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p1, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->orientation:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getVideoInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->PHOTOJECTIONS_VIDEO:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/database/Cursor;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWithCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static saveJpgToAblum(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isSupporTurbo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->a(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->b(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveJpgToAblum(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/content/ContentValues;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveJpgToAblum(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getImageInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static saveJpgToAblum(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->build(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveJpgToAblum(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/content/ContentValues;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static saveMp4ToAlbum(Landroid/content/Context;Ljava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 3

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getCommonContentValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "description"

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "mime_type"

    const-string v0, "video/mp4"

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getVideoInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p0

    return-object p0
.end method
