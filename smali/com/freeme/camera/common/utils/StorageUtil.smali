.class public Lcom/freeme/camera/common/utils/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_SESSION_SCHEME:Ljava/lang/String; = "camera_session"

.field public static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field private static final GOOGLE_COM:Ljava/lang/String; = "google.com"

.field private static final IS_STEREO_PICTURE:I = 0x1

.field public static final JPEG_POSTFIX:Ljava/lang/String; = ".jpg"

.field private static final KEY_SAVE_SDCARD:Ljava/lang/String; = "key_save_sdcard"

.field private static final KEY_STEREO_REFOCUS_PICTURE:Ljava/lang/String; = "camera_refocus"

.field public static final LOW_STORAGE_THRESHOLD_BYTES:J = 0x2faf080L

.field public static final PREPARING:J = -0x2L

.field public static SDCARD_PATH:Ljava/lang/String; = null

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private static mContext:Landroid/content/Context;

.field private static sContentUrisToSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSaveSDCard:Z

.field private static sSessionsToContentUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->DCIM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/freeme/camera/common/utils/StorageUtil;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->BUCKET_ID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSaveSDCard:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToContentUris:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sContentUrisToSessions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToPlaceholderBytes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToSizes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "lily"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFilepath title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isSaveSDCard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->isSaveSDCard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",SDCARD_PATH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->isSaveSDCard()Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableSpace()J
    .locals 6

    const-string v0, "lily"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableSpace isSaveSDCard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->isSaveSDCard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",DroiSDCardManager.isSDCardMount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->isSaveSDCard()Z

    move-result v0

    const-wide/16 v1, -0x3

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    iget-wide v3, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v3, v0

    return-wide v3

    :catch_0
    return-wide v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "checking"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_1
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_2

    return-wide v3

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    sget-object v3, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v0, v0

    mul-long/2addr v3, v0

    return-wide v3

    :catch_1
    return-wide v1

    :cond_4
    :goto_0
    return-wide v3
.end method

.method public static getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/freeme/camera/common/ICameraContext;)V
    .locals 1

    sput-object p0, Lcom/freeme/camera/common/utils/StorageUtil;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/freeme/camera/common/utils/StorageUtil;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p0, Lcom/freeme/camera/common/utils/StorageUtil;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->getSDCardStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    const-string p0, "lily"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDCARD_PATH:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isSaveSDCard()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/common/utils/StorageUtil;->sSaveSDCard:Z

    return v0
.end method

.method public static replacePlaceholder(Landroid/net/Uri;[BII)V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    sget-object p2, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToPlaceholderBytes:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object p2, Lcom/freeme/camera/common/utils/StorageUtil;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveSdcard()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    const-string v1, "key_save_sdcard"

    const-string v2, "off"

    sget-object v3, Lcom/freeme/camera/common/utils/StorageUtil;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v3}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setSaveSDCard(Z)V
    .locals 0

    sput-boolean p0, Lcom/freeme/camera/common/utils/StorageUtil;->sSaveSDCard:Z

    return-void
.end method
