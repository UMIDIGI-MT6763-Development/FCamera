.class Lcom/freeme/camera/common/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static final CAPTURE_LOW_STORAGE_THRESHOLD:J

.field private static final CAPTURE_THRESHOLD_1:I = 0xa00000

.field private static final CAPTURE_THRESHOLD_2:I = 0x3200000

.field private static final CLASS_NAME:Ljava/lang/String; = "com.freeme.storage.StorageManagerEx"

.field private static final EXTERNAL_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

.field private static final FOLDER_PATH:Ljava/lang/String;

.field private static final METHOD_NAME:Ljava/lang/String; = "getDefaultPath"

.field private static final RECORD_LOW_STORAGE_THRESHOLD:J

.field private static final RECORD_THRESHOLD_1:I = 0x900000

.field private static final RECORD_THRESHOLD_2:I = 0x3000000

.field private static final STORAGE_STATE_FULL_SDCARD:J = -0x4L

.field private static final STORAGE_STATE_PREPARING:J = -0x2L

.field private static final STORAGE_STATE_UNAVAILABLE:J = -0x1L

.field private static final STORAGE_STATE_UNKNOWN_SIZE:J = -0x3L

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sContext:Landroid/content/Context;

.field private static sGetDefaultPath:Ljava/lang/reflect/Method;

.field private static sMountPoint:Ljava/lang/String;

.field private static sStorage:Lcom/freeme/camera/common/storage/Storage;


# instance fields
.field private mIsDefaultPathCanUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/storage/Storage;->EXTERNAL_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

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

    sput-object v0, Lcom/freeme/camera/common/storage/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/common/storage/Storage;->isMtkFatOnNand()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/storage/Storage;->isGmoROM()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x3200000

    sput-wide v0, Lcom/freeme/camera/common/storage/Storage;->CAPTURE_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v0, 0x3000000

    sput-wide v0, Lcom/freeme/camera/common/storage/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "CAPTURE_LOW_STORAGE_THRESHOLD = 52428800"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/freeme/camera/common/storage/Storage;->CAPTURE_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v0, 0x900000

    sput-wide v0, Lcom/freeme/camera/common/storage/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "CAPTURE_LOW_STORAGE_THRESHOLD = 10485760"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    const-string v0, "com.freeme.storage.StorageManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "getDefaultPath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/storage/Storage;->sGetDefaultPath:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sGetDefaultPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sGetDefaultPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "ClassNotFoundException: com.freeme.storage.StorageManagerEx"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "NoSuchMethodException: getDefaultPath"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/Storage;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[Storage] init internal storage"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/storage/Storage;->initializeStorageManager(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .locals 4

    const-string v0, "checking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    :try_start_0
    new-instance p1, Landroid/os/StatFs;

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/storage/Storage;->getFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    :cond_2
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Fail to access external storage"

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method static getStorage(Landroid/content/Context;)Lcom/freeme/camera/common/storage/Storage;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sStorage:Lcom/freeme/camera/common/storage/Storage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/storage/Storage;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/storage/Storage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freeme/camera/common/storage/Storage;->sStorage:Lcom/freeme/camera/common/storage/Storage;

    :cond_0
    sput-object p0, Lcom/freeme/camera/common/storage/Storage;->sContext:Landroid/content/Context;

    sget-object p0, Lcom/freeme/camera/common/storage/Storage;->sStorage:Lcom/freeme/camera/common/storage/Storage;

    return-object p0
.end method

.method private initializeStorageManager(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->initStorageManager(Landroid/content/Context;)V

    return-void
.end method

.method private isDefaultPathCanUsed()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sGetDefaultPath:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/freeme/camera/common/storage/Storage;->sMountPoint:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/freeme/camera/common/storage/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/common/storage/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v0, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z

    return v0
.end method

.method private isExtendStorageCanUsed()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/Storage;->isDefaultPathCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isGmoROM()Z
    .locals 4

    const-string v0, "ro.vendor.gmo.rom_optimize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGmoRom() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static isMtkFatOnNand()Z
    .locals 4

    const-string v0, "ro.vendor.mtk_fat_on_nand"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMtkFatOnNand() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static mkFileDir(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/freeme/camera/common/storage/Storage;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir not exit,will create this, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method


# virtual methods
.method getAvailableSpace()J
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/Storage;->isExtendStorageCanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/freeme/camera/common/storage/Storage;->sMountPoint:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/freeme/camera/common/utils/StorageUtil;->setSaveSDCard(Z)V

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->getAvailableSpace()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getCaptureThreshold()J
    .locals 2

    sget-wide v0, Lcom/freeme/camera/common/storage/Storage;->CAPTURE_LOW_STORAGE_THRESHOLD:J

    return-wide v0
.end method

.method getFileDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->mkdirs(Landroid/content/Context;Ljava/io/File;)Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/common/storage/Storage;->isExtendStorageCanUsed()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/freeme/camera/common/storage/Storage;->EXTERNAL_FOLDER_ABSOLUTE_PATH:Ljava/lang/String;

    return-object p1
.end method

.method getRecordThreshold()J
    .locals 2

    sget-wide v0, Lcom/freeme/camera/common/storage/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    return-wide v0
.end method

.method isSameStorage(Landroid/content/Intent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/common/storage/Storage;->mIsDefaultPathCanUsed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sMountPoint:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->isSameStorage(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method updateDefaultDirectory()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/storage/Storage;->sContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/storage/Storage;->getFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/storage/Storage;->mkFileDir(Ljava/lang/String;)V

    return-void
.end method
