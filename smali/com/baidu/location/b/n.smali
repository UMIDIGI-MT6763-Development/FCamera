.class public Lcom/baidu/location/b/n;
.super Ljava/lang/Object;


# static fields
.field static if:Lcom/baidu/location/b/n;


# instance fields
.field a:I

.field do:I

.field for:I

.field int:I

.field new:I

.field try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "firll.dat"

    iput-object v0, p0, Lcom/baidu/location/b/n;->try:Ljava/lang/String;

    const/16 v0, 0xc5c

    iput v0, p0, Lcom/baidu/location/b/n;->for:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b/n;->do:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/b/n;->a:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/baidu/location/b/n;->new:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/b/n;->int:I

    return-void
.end method

.method private a(I)J
    .locals 7

    invoke-static {}, Lcom/baidu/location/b/k;->ai()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/n;->try:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v5, p1

    :try_start_1
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-wide v5

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    throw p1

    :catch_2
    move-object v4, v3

    :catch_3
    if-eqz v4, :cond_3

    goto :goto_0

    :catch_4
    :cond_3
    :goto_2
    return-wide v1
.end method

.method private a(IJ)V
    .locals 4

    invoke-static {}, Lcom/baidu/location/b/k;->ai()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/n;->try:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget p1, p0, Lcom/baidu/location/b/n;->for:I

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget p1, p0, Lcom/baidu/location/b/n;->for:I

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static if()Lcom/baidu/location/b/n;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/n;->if:Lcom/baidu/location/b/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/n;

    invoke-direct {v0}, Lcom/baidu/location/b/n;-><init>()V

    sput-object v0, Lcom/baidu/location/b/n;->if:Lcom/baidu/location/b/n;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/n;->if:Lcom/baidu/location/b/n;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/n;->a:I

    invoke-direct {p0, v0}, Lcom/baidu/location/b/n;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iget v0, p0, Lcom/baidu/location/b/n;->int:I

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/location/b/n;->a(IJ)V

    return-void
.end method

.method public do()J
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/n;->do:I

    invoke-direct {p0, v0}, Lcom/baidu/location/b/n;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public do(J)V
    .locals 1

    iget v0, p0, Lcom/baidu/location/b/n;->a:I

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/location/b/n;->a(IJ)V

    return-void
.end method

.method public for()J
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/n;->int:I

    invoke-direct {p0, v0}, Lcom/baidu/location/b/n;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public for(J)V
    .locals 1

    iget v0, p0, Lcom/baidu/location/b/n;->do:I

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/location/b/n;->a(IJ)V

    return-void
.end method

.method public if(J)V
    .locals 1

    iget v0, p0, Lcom/baidu/location/b/n;->new:I

    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/location/b/n;->a(IJ)V

    return-void
.end method

.method public int()J
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/n;->new:I

    invoke-direct {p0, v0}, Lcom/baidu/location/b/n;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
