.class public Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;
.super Ljava/lang/Object;
.source "AndroidFiles.java"

# interfaces
.implements Lcom/badlogic/gdx/Files;


# instance fields
.field protected final assets:Landroid/content/res/AssetManager;

.field private expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

.field protected final localpath:Ljava/lang/String;

.field protected final sdcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->sdcard:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->sdcard:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->localpath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->sdcard:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->localpath:Ljava/lang/String;

    return-void
.end method

.method private getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidZipFileHandle;

    invoke-direct {v0, p2}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public getExpansionFile()Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->sdcard:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne p2, v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLocalStoragePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->localpath:Ljava/lang/String;

    return-object v0
.end method

.method public internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->getZipFileHandleIfExists(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isExternalStorageAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocalStorageAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public setAPKExpansion(II)Z
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;->expansionFile:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
