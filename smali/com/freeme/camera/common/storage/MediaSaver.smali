.class public Lcom/freeme/camera/common/storage/MediaSaver;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;,
        Lcom/freeme/camera/common/storage/MediaSaver$Request;,
        Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private final VIDEO_BASE_URI:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mMediaSaverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaveQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/storage/MediaSaver$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://media/external/video/media"

    iput-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->VIDEO_BASE_URI:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mMediaSaverListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mMediaSaverListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;)Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver;->saveDataToStorage(Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver;->insertDb(Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V

    return-void
.end method

.method static synthetic access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSaveRequest]+, the queue number is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mSaveTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    if-nez p1, :cond_0

    new-instance p1, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;)V

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveTask:Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[addRequest]execute save AsyncTask."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addRequest]-, the queue number is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private insertDb(Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 8

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[insertDb]"

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[insertDb] ContentValues is null, return"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/storage/MediaSaver;->updateContentValues(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    iget-object p2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "failed to add image to media store,SQLiteConstraintException:"

    invoke-static {v0, v1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception p2

    :try_start_2
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "failed to add image to media store, UnsupportedOperationException:"

    invoke-static {v0, v1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_2
    move-exception p2

    :try_start_3
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "failed to add image to media store, IllegalArgumentException:"

    invoke-static {v0, v1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "Current image URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto/16 :goto_a

    :goto_1
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current image URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "filePath is null when insert video DB"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    :try_start_4
    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->getSdCardExternalVolumeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->getInternalVolumeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$600(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-static {v1, p2}, Lcom/freeme/camera/common/storage/MediaSaver;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$600(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_6

    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$600(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/storage/MediaSaver;->scanPathforMediaStore(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :catchall_1
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    goto/16 :goto_b

    :catch_8
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    :goto_5
    :try_start_7
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to insert requst values:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    goto/16 :goto_9

    :catch_9
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    :goto_6
    :try_start_8
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to add video to media store,SQLiteConstraintException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    goto :goto_9

    :catch_a
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    :goto_7
    :try_start_9
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to add video to media store, UnsupportedOperationException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    goto :goto_9

    :catch_b
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    :goto_8
    :try_start_a
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to add video to media store, IllegalArgumentException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    :goto_9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_a
    return-void

    :catchall_2
    move-exception v0

    :goto_b
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private saveDataToStorage(Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[saveDataToStorage]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "data is null,return!"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "get filePath from contentValues."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$202(Lcom/freeme/camera/common/storage/MediaSaver$Request;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "filePath is null, return"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "_display_name"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->getSdCardExternalVolumeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p2, v0, v1, v3, v4}, Lcom/freeme/camera/common/exif/ExifInterface;->addGpsTags(DD)Z

    :cond_3
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/freeme/camera/common/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object p2

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Failed to write image,ex:"

    invoke-static {v0, v1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "IOException:"

    invoke-static {p2, v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "IOException:"

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$500(Lcom/freeme/camera/common/storage/MediaSaver$Request;)I

    move-result v0

    sget v3, Lcom/freeme/camera/common/mode/photo/HeifHelper;->FORMAT_HEIF:I

    if-ne v0, v3, :cond_8

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object p2

    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, v0, v1, p1}, Lcom/freeme/camera/common/mode/photo/HeifHelper;->saveData([BIIILjava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[saveDataToStorage]-"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_8
    :try_start_5
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "save the data to internal"

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "_display_name"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->getInternalVolumeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p2, v0, v1, v3, v4}, Lcom/freeme/camera/common/exif/ExifInterface;->addGpsTags(DD)Z

    :cond_9
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/freeme/camera/common/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object p2

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_b

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    :try_start_7
    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Failed to write image,ex:"

    invoke-static {v0, v1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    sget-object p2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "IOException:"

    invoke-static {p2, v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[saveDataToStorage]-"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :goto_6
    if-eqz v2, :cond_c

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "IOException:"

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw p2
.end method

.method private scanPathforMediaStore(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method

.method private updateContentValues(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V
    .locals 5

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateContentValues] size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromSdkExif(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "height"

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateContentValues] ,update width & height"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateDbAccordingUri(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateDbAccordingUri]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateDbAccordingUri] ContentValues is null, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/storage/MediaSaver;->updateContentValues(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to update image to media store,SQLiteConstraintException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to update image to media store, UnsupportedOperationException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "failed to update image to media store, IllegalArgumentException:"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v2, "Current image URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current image URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method private static writeFile(Ljava/lang/String;[B)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static writeFile(Ljava/lang/String;[BLcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->writeExif([BLjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/freeme/camera/common/storage/MediaSaver;->writeFile(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addMediaSaverListener(Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mMediaSaverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 10
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[addSaveRequest] there is no valid data need to save."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v9, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/freeme/camera/common/storage/MediaSaver$Request;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V

    invoke-direct {p0, v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    return-void
.end method

.method public addSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 10
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[addSaveRequest] there is no valid data need to save."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v9, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/freeme/camera/common/storage/MediaSaver$Request;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V

    invoke-direct {p0, v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    return-void
.end method

.method public addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 6
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v5, 0x100

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;I)V

    return-void
.end method

.method public addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;I)V
    .locals 10
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[addSaveRequest] there is no valid data need to save."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v9, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/freeme/camera/common/storage/MediaSaver$Request;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V

    invoke-direct {p0, v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    return-void
.end method

.method public addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 10
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[addSaveRequest] there is no valid data need to save."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v9, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    const/4 v6, 0x0

    const/16 v7, 0x100

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/freeme/camera/common/storage/MediaSaver$Request;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V

    invoke-direct {p0, v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    return-void
.end method

.method public getBytesWaitingToSave()J
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {v4}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$000(Lcom/freeme/camera/common/storage/MediaSaver$Request;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingRequestNumber()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver;->mSaveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    sget-object p1, Lcom/freeme/camera/common/storage/MediaSaver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[updateSaveRequest] there is no valid data need to save."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v9, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/freeme/camera/common/storage/MediaSaver$Request;-><init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V

    invoke-direct {p0, v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addRequest(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    return-void
.end method
