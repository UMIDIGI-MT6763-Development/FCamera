.class public Lcom/baidu/location/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/o$a;
    }
.end annotation


# static fields
.field private static final e0:Ljava/lang/String;

.field private static e1:Lcom/baidu/location/b/o; = null

.field private static final e3:I = 0x80

.field private static e4:Ljava/lang/String; = "LogSDK"

.field private static e5:I = 0x400

.field private static final e6:I = 0x20

.field private static e9:I = 0x5

.field private static final fa:I = 0x410

.field private static final fc:Ljava/lang/String;

.field private static final fd:I = 0x3e8

.field public static final fe:Ljava/lang/String;


# instance fields
.field private e2:Lcom/baidu/location/b/l;

.field private e7:J

.field private e8:Ljava/text/SimpleDateFormat;

.field private fb:Lcom/baidu/location/b/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/llg.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/o;->e0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ller.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/o;->fc:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/llin.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/o;->fe:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/location/b/o;->e8:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    iput-object v0, p0, Lcom/baidu/location/b/o;->fb:Lcom/baidu/location/b/o$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/o;->e7:J

    iget-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/l;

    invoke-direct {v0}, Lcom/baidu/location/b/l;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    :cond_0
    return-void
.end method

.method public static aX()Lcom/baidu/location/b/o;
    .locals 2

    sget-object v0, Lcom/baidu/location/b/o;->e1:Lcom/baidu/location/b/o;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/location/b/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/b/o;->e1:Lcom/baidu/location/b/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/b/o;

    invoke-direct {v1}, Lcom/baidu/location/b/o;-><init>()V

    sput-object v1, Lcom/baidu/location/b/o;->e1:Lcom/baidu/location/b/o;

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
    sget-object v0, Lcom/baidu/location/b/o;->e1:Lcom/baidu/location/b/o;

    return-object v0
.end method

.method public static declared-synchronized for(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/baidu/location/b/o;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/baidu/location/b/o;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    const/4 v6, 0x0

    if-ge v3, v1, :cond_1

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x80

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v1, p1

    invoke-virtual {p0, p1, v6, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x80

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v1, p1

    invoke-virtual {p0, p1, v6, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_2

    move v4, v6

    :cond_2
    :goto_0
    const-wide/16 v1, 0xc

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static i(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x410

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/b/o;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b/o;->e7:J

    return-wide p1
.end method

.method public static if(Ljava/lang/String;Ljava/util/List;)Z
    .locals 10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    sget v4, Lcom/baidu/location/b/o;->e5:I

    new-array v4, v4, [B

    sget v5, Lcom/baidu/location/b/o;->e9:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    add-int/2addr v5, v6

    move v7, v1

    :goto_0
    if-lez v5, :cond_3

    if-lez v2, :cond_3

    if-ge v2, v3, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v8, v2, -0x1

    mul-int/2addr v8, v0

    add-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    :try_start_1
    invoke-virtual {p0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v8, v0, :cond_2

    invoke-virtual {p0, v4, v1, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v8, v8, -0x1

    aget-byte v9, v4, v8

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4, v1, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p1, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v7, v6

    :cond_2
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v7

    :catch_0
    move v7, v1

    :catch_1
    return v7
.end method


# virtual methods
.method public aU()Lcom/baidu/location/b/l;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    return-object v0
.end method

.method public aV()V
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/b/o;->fb:Lcom/baidu/location/b/o$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/o$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/o$a;-><init>(Lcom/baidu/location/b/o;)V

    iput-object v0, p0, Lcom/baidu/location/b/o;->fb:Lcom/baidu/location/b/o$a;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/o;->e7:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/o;->fb:Lcom/baidu/location/b/o$a;

    invoke-virtual {v0}, Lcom/baidu/location/b/o$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/baidu/location/b/o;->fc:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/location/b/o;->if(Ljava/lang/String;Ljava/util/List;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/baidu/location/b/o;->e0:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/location/b/o;->if(Ljava/lang/String;Ljava/util/List;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/baidu/location/b/o;->fe:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/location/b/o;->if(Ljava/lang/String;Ljava/util/List;)Z

    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v3

    move v2, v1

    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge v3, v6, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "locpt"

    :goto_2
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    const-string v0, "locup"

    goto :goto_2

    :cond_6
    const-string v0, "loctc"

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/baidu/location/b/o;->fb:Lcom/baidu/location/b/o$a;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/o$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-void
.end method

.method public aW()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/b/l;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/b/o;->e0:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/location/b/o;->for(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/b/o;->e2:Lcom/baidu/location/b/l;

    invoke-virtual {v0}, Lcom/baidu/location/b/l;->aj()V

    :cond_0
    return-void
.end method

.method public if(Lcom/baidu/location/b/l;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/b/l;->ak()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/baidu/location/b/o;->e0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/location/b/o;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/b/o;->e8:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/baidu/location/b/o;->fc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/location/b/o;->for(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
