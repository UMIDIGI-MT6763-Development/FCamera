.class public Lcom/mediatek/camera/portability/storage/StorageManagerExt;
.super Ljava/lang/Object;
.source "StorageManagerExt.java"


# static fields
.field private static sStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->initStorageManager(Landroid/content/Context;)V

    sget-object p0, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initStorageManager(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/storage/StorageManager;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->sStorageManager:Landroid/os/storage/StorageManager;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/storage/StorageManager;

    invoke-direct {p0, v2, v2}, Landroid/os/storage/StorageManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object p0, Lcom/mediatek/camera/portability/storage/StorageManagerExt;->sStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isSameStorage(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageVolume;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
