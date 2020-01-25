.class public final Lcom/baidu/platform/comapi/util/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/baidu/platform/comapi/util/e;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/util/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/platform/comapi/util/d;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/e;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/util/e;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->a:Lcom/baidu/platform/comapi/util/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/platform/comapi/util/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/util/e;->a:Lcom/baidu/platform/comapi/util/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/platform/comapi/util/e;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/util/e;-><init>()V

    sput-object v1, Lcom/baidu/platform/comapi/util/e;->a:Lcom/baidu/platform/comapi/util/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/platform/comapi/util/e;->a:Lcom/baidu/platform/comapi/util/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/test.0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeList"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getVolumeState"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "android.os.storage.StorageVolume"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "isRemovable"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getPath"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_a

    array-length v7, v1

    move v8, v3

    :goto_0
    const/16 v9, 0x13

    if-ge v8, v7, :cond_4

    aget-object v10, v1, v8

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, "mounted"

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v11, v13, v3

    invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-array v12, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    move v10, v5

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v12, v9, :cond_2

    invoke-direct {p0, v11}, Lcom/baidu/platform/comapi/util/e;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v9, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    new-instance v12, Lcom/baidu/platform/comapi/util/d;

    xor-int/lit8 v13, v10, 0x1

    if-eqz v10, :cond_1

    const-string v10, "\u5185\u7f6e\u5b58\u50a8\u5361"

    goto :goto_2

    :cond_1
    const-string v10, "\u5916\u7f6e\u5b58\u50a8\u5361"

    :goto_2
    invoke-direct {v12, v11, v13, v10, p1}, Lcom/baidu/platform/comapi/util/d;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_3

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "BaiduMapSDKNew"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "map_pref"

    invoke-virtual {p1, v9, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "PREFFERED_SD_CARD"

    const-string v12, ""

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "BaiduMapSDKNew"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/platform/comapi/util/e;->f:Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_9

    aget-object v4, v0, v2

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/util/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v3

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    new-instance v6, Lcom/baidu/platform/comapi/util/d;

    const-string v7, "\u5916\u7f6e\u5b58\u50a8\u5361"

    invoke-direct {v6, v4, v5, v7, p1}, Lcom/baidu/platform/comapi/util/d;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x9

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string v7, "/dev/block/vold/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v7, v3

    if-lez v7, :cond_0

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_4

    :cond_2
    :goto_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/vold.fstab"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string v8, "dev_mount"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v8, v3

    if-lez v8, :cond_3

    const/4 v8, 0x2

    aget-object v3, v3, v8

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    new-instance v5, Lcom/baidu/platform/comapi/util/d;

    const-string v6, "Auto"

    invoke-direct {v5, v3, v7, v6, p1}, Lcom/baidu/platform/comapi/util/d;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    new-instance v6, Lcom/baidu/platform/comapi/util/d;

    const-string v8, "Auto"

    invoke-direct {v6, v4, v7, v8, p1}, Lcom/baidu/platform/comapi/util/d;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_8
    return-void

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_9
    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/util/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/e;->b:Z

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/e;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/e;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/util/d;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/util/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v5

    goto :goto_1

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/util/e;->b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {p0, p1, v2}, Lcom/baidu/platform/comapi/util/e;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/d;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v2, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    goto :goto_2

    :cond_5
    if-ne v2, v0, :cond_6

    invoke-virtual {p0, p1, v4}, Lcom/baidu/platform/comapi/util/e;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v4, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/util/e;->b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/d;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/util/d;

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_9
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_a
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_4

    :cond_b
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/util/e;->c:Z

    new-instance v0, Lcom/baidu/platform/comapi/util/d;

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    iget-object p1, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_4
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/d;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/util/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/baidu/platform/comapi/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "map_pref"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREFFERED_SD_CARD"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/platform/comapi/util/d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->e:Lcom/baidu/platform/comapi/util/d;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/d;
    .locals 3

    const-string v0, "map_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PREFFERED_SD_CARD"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/util/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
