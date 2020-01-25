.class public Lcom/freeme/camera/common/utils/DocumentsUtils;
.super Ljava/lang/Object;
.source "DocumentsUtils.java"


# static fields
.field public static final OPEN_DOCUMENT_TREE_CODE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "DocumentsUtils"

.field private static mUri:Landroid/net/Uri;

.field private static sExtSdCardPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWrite(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    invoke-static {p1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static canWrite(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    move v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return v0
.end method

.method public static checkWritableRootPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-static {v0, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0, v3, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v3

    :cond_7
    return v2
.end method

.method public static cleanCache()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p0

    move p0, v2

    goto :goto_0

    :cond_2
    move-object v4, v1

    move p0, v3

    goto :goto_0

    :catch_0
    move-object v4, v1

    move p0, v3

    :goto_0
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p2, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_2
    array-length v0, p0

    if-ge v2, v0, :cond_9

    aget-object v0, p0, v2

    invoke-virtual {p2, v0}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_8

    array-length v0, p0

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "image"

    aget-object v1, p0, v2

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    goto :goto_4

    :cond_7
    :goto_3
    aget-object v0, p0, v2

    invoke-virtual {p2, v0}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    goto :goto_4

    :cond_8
    move-object p2, v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-object p2

    :catch_1
    return-object v1
.end method

.method private static getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {p1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p0, p1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    return-object v1
.end method

.method private static getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "external"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    const-string v5, "external"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Android/data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    sget-object v5, Lcom/freeme/camera/common/utils/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected external file dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v5, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    const-string v0, "/storage/sdcard1"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p0, Lcom/freeme/camera/common/utils/DocumentsUtils;->sExtSdCardPaths:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getImageUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->canWrite(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "relative_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    sput-object p1, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    const-string p1, "chencl_"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  item insert  Uri : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    const-string v1, "rw"

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/freeme/camera/common/utils/DocumentsUtils;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {p0, p1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mkdirs(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static renameTo(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v2, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, p0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p0

    move v0, p0

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getParentFile()Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    move v2, v4

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method

.method public static saveTreeUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/freeme/camera/common/utils/DocumentsUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no write permission: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
