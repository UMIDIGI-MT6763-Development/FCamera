.class public Lcom/baidu/location/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/f$a;
    }
.end annotation


# static fields
.field private static gA:I = 0x0

.field private static final gD:I = 0x80

.field private static gF:Lcom/baidu/location/e/f;

.field private static gI:I

.field private static gK:I

.field private static final gy:Ljava/lang/String;


# instance fields
.field public gB:Z

.field public gC:Z

.field public gE:Z

.field public gG:Z

.field public gH:Z

.field public gJ:Z

.field public gw:Z

.field public gx:Z

.field private gz:Lcom/baidu/location/e/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/conlts.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/f;->gy:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/baidu/location/e/f;->gI:I

    sput v0, Lcom/baidu/location/e/f;->gA:I

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/e/f;->gK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gC:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gE:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/e/f;->gH:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gw:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gJ:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gx:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gB:Z

    iput-boolean v1, p0, Lcom/baidu/location/e/f;->gG:Z

    return-void
.end method

.method public static bA()Lcom/baidu/location/e/f;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/f;->gF:Lcom/baidu/location/e/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/f;

    invoke-direct {v0}, Lcom/baidu/location/e/f;-><init>()V

    sput-object v0, Lcom/baidu/location/e/f;->gF:Lcom/baidu/location/e/f;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/f;->gF:Lcom/baidu/location/e/f;

    return-object v0
.end method

.method private bB()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/e/f;->gy:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private bC()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/baidu/location/e/f;->n(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b/k;->bG:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b/k;->b4:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/baidu/location/b/k;->cM:Z

    sget-boolean v1, Lcom/baidu/location/b/k;->cM:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x271

    new-array v3, v1, [B

    sput-object v3, Lcom/baidu/location/b/k;->b2:[B

    sget-object v3, Lcom/baidu/location/b/k;->b2:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/f;->do(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private bE()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/location/b/k;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/c;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/e/f$a;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/f$a;-><init>(Lcom/baidu/location/e/f;)V

    iput-object v1, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/e/f$a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private bF()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v1, Lcom/baidu/location/b/k;->bG:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v1, Lcom/baidu/location/b/k;->b4:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Lcom/baidu/location/b/k;->cM:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Lcom/baidu/location/b/k;->cM:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/location/b/k;->b2:[B

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/location/b/k;->b2:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private bH()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/e/f;->gy:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sput v3, Lcom/baidu/location/e/f;->gK:I

    invoke-direct {p0}, Lcom/baidu/location/e/f;->bB()V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const-wide/16 v4, 0x80

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v4, v0, [B

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    mul-int v6, v0, v5

    add-int/lit16 v6, v6, 0x80

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-lez v6, :cond_1

    if-ge v6, v0, :cond_1

    invoke-virtual {v1, v4, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v6, v6, -0x1

    aget-byte v7, v4, v6

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    sget-object v6, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    sput v0, Lcom/baidu/location/e/f;->gI:I

    sput v5, Lcom/baidu/location/e/f;->gK:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v5, v2, :cond_3

    sput v2, Lcom/baidu/location/e/f;->gK:I

    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private bz()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/location/b/k;->bR:Z

    sget-boolean v2, Lcom/baidu/location/b/k;->bK:Z

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\",\"dmx\":%d}"

    const/16 v5, 0x27

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/baidu/location/b/k;->b0:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget v6, Lcom/baidu/location/b/k;->cQ:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget v9, Lcom/baidu/location/b/k;->bW:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x3

    sget v9, Lcom/baidu/location/b/k;->ck:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x4

    sget v9, Lcom/baidu/location/b/k;->cA:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x5

    sget v9, Lcom/baidu/location/b/k;->b7:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x6

    sget v9, Lcom/baidu/location/b/k;->cq:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x7

    sget v9, Lcom/baidu/location/b/k;->cC:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x8

    sget v9, Lcom/baidu/location/b/k;->bJ:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x9

    sget v9, Lcom/baidu/location/b/k;->bH:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xa

    sget v9, Lcom/baidu/location/b/k;->cI:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xb

    sget v9, Lcom/baidu/location/b/k;->bQ:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xc

    sget v9, Lcom/baidu/location/b/k;->ch:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xd

    sget v9, Lcom/baidu/location/b/k;->cg:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xe

    sget v9, Lcom/baidu/location/b/k;->cO:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xf

    sget v9, Lcom/baidu/location/b/k;->cx:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x10

    sget v9, Lcom/baidu/location/b/k;->cD:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x11

    sget v9, Lcom/baidu/location/b/k;->bL:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x12

    sget v9, Lcom/baidu/location/b/k;->cy:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x13

    sget v9, Lcom/baidu/location/b/k;->bF:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x14

    sget v9, Lcom/baidu/location/b/k;->cb:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x15

    sget v9, Lcom/baidu/location/b/k;->ca:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x16

    sget v9, Lcom/baidu/location/b/k;->b9:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x17

    sget v9, Lcom/baidu/location/b/k;->b8:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/16 v1, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    sget v2, Lcom/baidu/location/b/k;->cB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1b

    sget v2, Lcom/baidu/location/b/k;->cr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1c

    sget-wide v9, Lcom/baidu/location/b/k;->cH:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    sget v2, Lcom/baidu/location/b/k;->cL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    sget v2, Lcom/baidu/location/b/k;->cd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1f

    sget v2, Lcom/baidu/location/b/k;->cz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x20

    sget v2, Lcom/baidu/location/b/k;->cc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x21

    sget v2, Lcom/baidu/location/b/k;->cK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x22

    sget v2, Lcom/baidu/location/b/k;->bO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x23

    sget v2, Lcom/baidu/location/b/k;->bI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x24

    sget v2, Lcom/baidu/location/b/k;->bM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x25

    sget v2, Lcom/baidu/location/b/k;->cn:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x26

    sget v2, Lcom/baidu/location/b/k;->bT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private do(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gC:Z

    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gE:Z

    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gH:Z

    and-int/lit8 v0, p1, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gw:Z

    const/high16 v0, 0x10000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/baidu/location/e/f;->gx:Z

    const/high16 v0, 0x20000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/baidu/location/e/f;->gB:Z

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    iput-boolean v1, p0, Lcom/baidu/location/e/f;->gJ:Z

    :cond_6
    return-void
.end method

.method static synthetic do(Lcom/baidu/location/e/f;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/f;->if(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private do(Lorg/apache/http/HttpEntity;)V
    .locals 3

    const/4 v0, -0x1

    sput v0, Lcom/baidu/location/e/f;->gA:I

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/location/e/f;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/e/f;->bz()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ctr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ctr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/e/f;->gA:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/location/e/f;->bH()V

    sget p1, Lcom/baidu/location/e/f;->gA:I

    if-eq p1, v0, :cond_2

    sget p1, Lcom/baidu/location/e/f;->gA:I

    sget v1, Lcom/baidu/location/e/f;->gA:I

    invoke-direct {p0, v1}, Lcom/baidu/location/e/f;->if(I)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/baidu/location/e/f;->gI:I

    if-eq p1, v0, :cond_3

    sget p1, Lcom/baidu/location/e/f;->gI:I

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eq p1, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/baidu/location/e/f;->do(I)V

    :cond_4
    sget-boolean p1, Lcom/baidu/location/f;->isServing:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/baidu/location/e/f;->gH:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/baidu/location/b/k;->cl:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    return-void
.end method

.method private if(I)V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/e/f;->gy:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/e/f;->bB()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v3, Lcom/baidu/location/e/f;->gK:I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sget p1, Lcom/baidu/location/e/f;->gK:I

    if-ne v2, p1, :cond_1

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/e/f;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/f;->do(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private if(Lorg/apache/http/HttpEntity;)V
    .locals 16

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v3, v0

    const/16 v4, 0x280

    if-ge v3, v4, :cond_1

    sput-boolean v1, Lcom/baidu/location/b/k;->cM:Z

    sget-wide v0, Lcom/baidu/location/b/k;->cE:D

    const-wide v3, 0x3f9999999999999aL    # 0.025

    add-double/2addr v0, v3

    sput-wide v0, Lcom/baidu/location/b/k;->b4:D

    sget-wide v0, Lcom/baidu/location/b/k;->cp:D

    sub-double/2addr v0, v3

    sput-wide v0, Lcom/baidu/location/b/k;->bG:D

    goto/16 :goto_1

    :cond_1
    sput-boolean v2, Lcom/baidu/location/b/k;->cM:Z

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    const/4 v8, 0x6

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    const/4 v8, 0x5

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v11, 0x28

    shl-long/2addr v8, v11

    or-long/2addr v3, v8

    const/4 v8, 0x4

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    or-long/2addr v3, v8

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v13, 0x18

    shl-long/2addr v8, v13

    or-long/2addr v3, v8

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v14, 0x10

    shl-long/2addr v8, v14

    or-long/2addr v3, v8

    aget-byte v8, v0, v2

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v15, 0x8

    shl-long/2addr v8, v15

    or-long/2addr v3, v8

    aget-byte v8, v0, v1

    int-to-long v8, v8

    and-long/2addr v8, v5

    or-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b/k;->bG:D

    const/16 v3, 0xf

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    shl-long/2addr v3, v7

    const/16 v7, 0xe

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v10

    or-long/2addr v3, v7

    const/16 v7, 0xd

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v11

    or-long/2addr v3, v7

    const/16 v7, 0xc

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v12

    or-long/2addr v3, v7

    const/16 v7, 0xb

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v13

    or-long/2addr v3, v7

    const/16 v7, 0xa

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v14

    or-long/2addr v3, v7

    const/16 v7, 0x9

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v15

    or-long/2addr v3, v7

    aget-byte v7, v0, v15

    int-to-long v7, v7

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b/k;->b4:D

    const/16 v3, 0x271

    new-array v4, v3, [B

    sput-object v4, Lcom/baidu/location/b/k;->b2:[B

    :goto_0
    if-ge v1, v3, :cond_2

    sget-object v4, Lcom/baidu/location/b/k;->b2:[B

    add-int/lit8 v5, v1, 0x10

    aget-byte v5, v0, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/baidu/location/e/f;->bF()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ver"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget v3, Lcom/baidu/location/b/k;->b0:I

    if-le p1, v3, :cond_29

    sput p1, Lcom/baidu/location/b/k;->b0:I

    const-string p1, "gps"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz p1, :cond_a

    const-string p1, "gps"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    const/16 v8, 0xa

    if-le v7, v8, :cond_a

    aget-object v7, p1, v1

    if-eqz v7, :cond_0

    aget-object v7, p1, v1

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cQ:F

    :cond_0
    aget-object v7, p1, v0

    if-eqz v7, :cond_1

    aget-object v7, p1, v0

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->bW:F

    :cond_1
    aget-object v7, p1, v6

    if-eqz v7, :cond_2

    aget-object v7, p1, v6

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->ck:F

    :cond_2
    aget-object v7, p1, v5

    if-eqz v7, :cond_3

    aget-object v7, p1, v5

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, p1, v5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cA:F

    :cond_3
    aget-object v7, p1, v4

    if-eqz v7, :cond_4

    aget-object v7, p1, v4

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->b7:I

    :cond_4
    aget-object v7, p1, v3

    if-eqz v7, :cond_5

    aget-object v7, p1, v3

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cq:I

    :cond_5
    const/4 v7, 0x6

    aget-object v9, p1, v7

    if-eqz v9, :cond_6

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cC:I

    :cond_6
    const/4 v7, 0x7

    aget-object v9, p1, v7

    if-eqz v9, :cond_7

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->bJ:I

    :cond_7
    const/16 v7, 0x8

    aget-object v9, p1, v7

    if-eqz v9, :cond_8

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->bH:I

    :cond_8
    const/16 v7, 0x9

    aget-object v9, p1, v7

    if-eqz v9, :cond_9

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cI:I

    :cond_9
    aget-object v7, p1, v8

    if-eqz v7, :cond_a

    aget-object v7, p1, v8

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->bQ:I

    :cond_a
    const-string p1, "up"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "up"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_e

    aget-object v7, p1, v1

    if-eqz v7, :cond_b

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->ch:F

    :cond_b
    aget-object v7, p1, v0

    if-eqz v7, :cond_c

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cg:F

    :cond_c
    aget-object v7, p1, v6

    if-eqz v7, :cond_d

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cO:F

    :cond_d
    aget-object v7, p1, v5

    if-eqz v7, :cond_e

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->cx:F

    :cond_e
    const-string p1, "wf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "wf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_12

    aget-object v7, p1, v1

    if-eqz v7, :cond_f

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cD:I

    :cond_f
    aget-object v7, p1, v0

    if-eqz v7, :cond_10

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->bL:F

    :cond_10
    aget-object v7, p1, v6

    if-eqz v7, :cond_11

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cy:I

    :cond_11
    aget-object v7, p1, v5

    if-eqz v7, :cond_12

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->bF:F

    :cond_12
    const-string p1, "ab"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "ab"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_16

    aget-object v7, p1, v1

    if-eqz v7, :cond_13

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cb:F

    :cond_13
    aget-object v7, p1, v0

    if-eqz v7, :cond_14

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->ca:F

    :cond_14
    aget-object v7, p1, v6

    if-eqz v7, :cond_15

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->b9:I

    :cond_15
    aget-object v7, p1, v5

    if-eqz v7, :cond_16

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->b8:I

    :cond_16
    const-string p1, "zxd"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "zxd"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v4, :cond_1b

    aget-object v7, p1, v1

    if-eqz v7, :cond_17

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cd:F

    :cond_17
    aget-object v7, p1, v0

    if-eqz v7, :cond_18

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cz:F

    :cond_18
    aget-object v7, p1, v6

    if-eqz v7, :cond_19

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cc:I

    :cond_19
    aget-object v7, p1, v5

    if-eqz v7, :cond_1a

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    aget-object v7, p1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cK:I

    :cond_1a
    aget-object v7, p1, v4

    if-eqz v7, :cond_1b

    aget-object v7, p1, v4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->bO:I

    :cond_1b
    const-string p1, "gpc"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "gpc"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v3, :cond_24

    aget-object v7, p1, v1

    if-eqz v7, :cond_1d

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1c

    sput-boolean v0, Lcom/baidu/location/b/k;->bR:Z

    goto :goto_0

    :cond_1c
    sput-boolean v1, Lcom/baidu/location/b/k;->bR:Z

    :cond_1d
    :goto_0
    aget-object v7, p1, v0

    if-eqz v7, :cond_1f

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1e

    sput-boolean v0, Lcom/baidu/location/b/k;->bK:Z

    goto :goto_1

    :cond_1e
    sput-boolean v1, Lcom/baidu/location/b/k;->bK:Z

    :cond_1f
    :goto_1
    aget-object v7, p1, v6

    if-eqz v7, :cond_20

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/b/k;->cB:I

    :cond_20
    aget-object v7, p1, v5

    if-eqz v7, :cond_21

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/baidu/location/b/k;->cr:I

    :cond_21
    aget-object v5, p1, v4

    if-eqz v5, :cond_23

    aget-object v5, p1, v4

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_22

    int-to-long v4, v4

    sput-wide v4, Lcom/baidu/location/b/k;->cH:J

    sget-wide v4, Lcom/baidu/location/b/k;->cH:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v4, v7

    sput-wide v4, Lcom/baidu/location/b/k;->cs:J

    sget-wide v4, Lcom/baidu/location/b/k;->cs:J

    shr-long/2addr v4, v6

    sput-wide v4, Lcom/baidu/location/b/k;->cP:J

    goto :goto_2

    :cond_22
    sput-boolean v1, Lcom/baidu/location/b/k;->cl:Z

    :cond_23
    :goto_2
    aget-object v4, p1, v3

    if-eqz v4, :cond_24

    aget-object v4, p1, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->cL:I

    :cond_24
    const-string p1, "shak"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "shak"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    if-le v3, v6, :cond_27

    aget-object v3, p1, v1

    if-eqz v3, :cond_25

    aget-object v3, p1, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b/k;->bI:I

    :cond_25
    aget-object v3, p1, v0

    if-eqz v3, :cond_26

    aget-object v3, p1, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b/k;->bM:I

    :cond_26
    aget-object v3, p1, v6

    if-eqz v3, :cond_27

    aget-object v3, p1, v6

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->cn:F

    :cond_27
    const-string p1, "dmx"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "dmx"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/b/k;->bT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_28
    move v1, v0

    :catch_0
    :cond_29
    return v1
.end method


# virtual methods
.method public bD()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/b/n;->if()Lcom/baidu/location/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/n;->for()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b/n;->if()Lcom/baidu/location/b/n;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/b/n;->a(J)V

    invoke-direct {p0}, Lcom/baidu/location/e/f;->bE()V

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/e/f;->bC()V

    return-void
.end method

.method public bG()V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/f$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/f$a;-><init>(Lcom/baidu/location/e/f;)V

    iput-object v0, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/f;->gz:Lcom/baidu/location/e/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/location/e/f$a;->a(Ljava/lang/String;Z)V

    return-void
.end method
