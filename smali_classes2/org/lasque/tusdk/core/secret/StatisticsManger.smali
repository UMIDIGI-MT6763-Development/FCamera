.class public Lorg/lasque/tusdk/core/secret/StatisticsManger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;,
        Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "tusdk.statistics"

.field private static b:J = 0x100L

.field private static c:Lorg/lasque/tusdk/core/secret/StatisticsManger;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/io/File;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    sget-boolean p2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->DEBUG:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->j:Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->init(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lorg/lasque/tusdk/core/secret/StatisticsManger$1;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$1;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Z)V

    new-instance v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$3;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V

    new-instance v2, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;-><init>()V

    const-string v3, "statistics"

    invoke-virtual {v2, v3, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object p1

    const-string v3, "/put"

    invoke-virtual {p1, v3, v2, v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    sget-object v5, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    invoke-static {v3}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    :cond_0
    const-string v2, "asyncFlushData: %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x21

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_1
    :try_start_2
    const-string v3, "asyncFlushData: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_2
    const-string v3, "asyncFlushData: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    :goto_3
    invoke-static {v2, v3, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger$7;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$7;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception p1

    :goto_5
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p1
.end method

.method private a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static appendBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    sget-byte v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;->Brush:B

    iget-wide v2, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V

    sget-object p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static appendComponent(J)V
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    sget-byte v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;->Component:B

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V

    sget-object p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    return-void
.end method

.method public static appendFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    sget-byte v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;->Filter:B

    iget-wide v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V

    sget-object p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    sget-byte v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;->Sticker:B

    iget-wide v2, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V

    sget-object p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->j:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    sget-object v2, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    sget-byte v2, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticsType;->Component:B

    sget-wide v3, Lorg/lasque/tusdk/modules/components/ComponentActType;->sdkLoadedComponent:J

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    invoke-static {v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "asyncLoadCacheData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$2;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;J)J

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;D)D

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->b(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;D)D

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/secret/StatisticsManger;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c()V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/secret/StatisticsManger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->i:Z

    return p1
.end method

.method private c()V
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    sget-object v2, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e:Ljava/io/File;

    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->rename(Ljava/io/File;Ljava/io/File;)Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lorg/lasque/tusdk/core/secret/StatisticsManger;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/core/secret/StatisticsManger$4;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$4;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$6;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static flushData()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->e()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v0, Lorg/lasque/tusdk/core/secret/StatisticsManger;->c:Lorg/lasque/tusdk/core/secret/StatisticsManger;

    :cond_0
    return-void
.end method


# virtual methods
.method protected asyncConvertData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;

    :try_start_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "asyncConvertData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/secret/StatisticsManger$5;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger$5;-><init>(Lorg/lasque/tusdk/core/secret/StatisticsManger;Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
