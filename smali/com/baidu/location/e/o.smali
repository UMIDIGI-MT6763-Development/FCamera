.class public Lcom/baidu/location/e/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/o$a;,
        Lcom/baidu/location/e/o$b;
    }
.end annotation


# static fields
.field private static final iA:Ljava/lang/String;

.field private static iB:Ljava/io/File; = null

.field private static iC:Lcom/baidu/location/e/o; = null

.field private static final iD:I = 0x410

.field private static final iE:I = 0x20

.field private static iF:I = 0x0

.field private static final iH:Ljava/lang/String;

.field private static iI:D = 0.0

.field private static iJ:D = 0.0

.field private static iK:Ljava/util/ArrayList; = null

.field private static final iL:I = 0x80

.field private static iM:Ljava/lang/String; = null

.field private static iN:I = 0x0

.field private static iP:I = 0x0

.field private static ik:D = 0.0

.field private static final il:Ljava/lang/String;

.field private static im:Landroid/location/Location; = null

.field private static in:Ljava/util/ArrayList; = null

.field private static io:Lcom/baidu/location/h/f; = null

.field private static ip:Ljava/util/ArrayList; = null

.field private static iq:I = 0x0

.field private static ir:I = 0x0

.field private static is:Landroid/location/Location; = null

.field private static it:I = 0x0

.field private static final iu:Ljava/lang/String;

.field private static final iv:I = 0x800

.field private static ix:Landroid/location/Location;

.field private static iy:D

.field private static iz:I


# instance fields
.field private iG:I

.field private iO:Lcom/baidu/location/e/o$b;

.field iw:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/e/o;->in:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/e/o;->iK:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/o;->iM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yoh.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/o;->iu:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yom.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/o;->iH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yol.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/o;->il:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yor.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/o;->iA:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    const/16 v1, 0x8

    sput v1, Lcom/baidu/location/e/o;->iN:I

    sput v1, Lcom/baidu/location/e/o;->it:I

    const/16 v1, 0x10

    sput v1, Lcom/baidu/location/e/o;->iF:I

    const/16 v1, 0x400

    sput v1, Lcom/baidu/location/e/o;->iP:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/baidu/location/e/o;->iJ:D

    const-wide v1, 0x3fb999999999999aL    # 0.1

    sput-wide v1, Lcom/baidu/location/e/o;->ik:D

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    sput-wide v1, Lcom/baidu/location/e/o;->iy:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    sput-wide v1, Lcom/baidu/location/e/o;->iI:D

    const/4 v1, 0x0

    sput v1, Lcom/baidu/location/e/o;->ir:I

    const/16 v1, 0x40

    sput v1, Lcom/baidu/location/e/o;->iz:I

    const/16 v1, 0x80

    sput v1, Lcom/baidu/location/e/o;->iq:I

    sput-object v0, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    sput-object v0, Lcom/baidu/location/e/o;->is:Landroid/location/Location;

    sput-object v0, Lcom/baidu/location/e/o;->im:Landroid/location/Location;

    sput-object v0, Lcom/baidu/location/e/o;->io:Lcom/baidu/location/h/f;

    sput-object v0, Lcom/baidu/location/e/o;->iC:Lcom/baidu/location/e/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/o;->iO:Lcom/baidu/location/e/o$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/e/o;->iG:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/e/o;->iw:J

    new-instance v1, Lcom/baidu/location/e/o$b;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/o$b;-><init>(Lcom/baidu/location/e/o;)V

    iput-object v1, p0, Lcom/baidu/location/e/o;->iO:Lcom/baidu/location/e/o$b;

    iput v0, p0, Lcom/baidu/location/e/o;->iG:I

    return-void
.end method

.method private static A(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/e/o;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static byte(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/baidu/location/e/o;->iu:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/e/o;->in:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    sget-object p0, Lcom/baidu/location/e/o;->iH:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/e/o;->iK:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    sget-object p0, Lcom/baidu/location/e/o;->il:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    if-ne p0, v2, :cond_6

    sget-object p0, Lcom/baidu/location/e/o;->iA:Ljava/lang/String;

    goto :goto_0

    :goto_1
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_4

    invoke-static {p0, v2}, Lcom/baidu/location/e/o;->for(Ljava/lang/String;Ljava/util/List;)Z

    :cond_4
    const-class p0, Lcom/baidu/location/e/o;

    monitor-enter p0

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    return-object v1
.end method

.method private static byte(Landroid/location/Location;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/baidu/location/e/o;->is:Landroid/location/Location;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sget-object v3, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    float-to-double v3, v1

    sget v1, Lcom/baidu/location/b/k;->cb:F

    float-to-double v5, v1

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    sget v1, Lcom/baidu/location/b/k;->ca:F

    float-to-double v7, v1

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    sget v1, Lcom/baidu/location/b/k;->b9:I

    int-to-double v3, v1

    add-double/2addr v5, v3

    sget-object v1, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    invoke-virtual {p0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    float-to-double v3, p0

    cmpl-double p0, v3, v5

    if-lez p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    sput-object p0, Lcom/baidu/location/e/o;->is:Landroid/location/Location;

    return v2
.end method

.method public static ch()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/e/o;->it:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/baidu/location/e/o;->if(IZ)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/baidu/location/e/o;->if(IZ)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/baidu/location/e/o;->if(IZ)V

    const/16 v0, 0x8

    sput v0, Lcom/baidu/location/e/o;->it:I

    return-void
.end method

.method public static ci()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/baidu/location/e/o;->iH:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x14

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v0, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/16 v6, 0x80

    if-le v1, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&p1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-object v5, v1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/location/e/o;->il:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v0, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/16 v6, 0x100

    if-le v1, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&p2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1

    :catch_2
    move-object v5, v1

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    :goto_1
    sget-object v0, Lcom/baidu/location/e/o;->iA:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_6
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v0, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/16 v6, 0x200

    if-le v1, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&p3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-object v1

    :catch_4
    move-object v5, v1

    goto :goto_2

    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    :goto_2
    return-object v5
.end method

.method public static cl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/location/e/o;->cn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cm()Lcom/baidu/location/e/o;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/o;->iC:Lcom/baidu/location/e/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/o;

    invoke-direct {v0}, Lcom/baidu/location/e/o;-><init>()V

    sput-object v0, Lcom/baidu/location/e/o;->iC:Lcom/baidu/location/e/o;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/o;->iC:Lcom/baidu/location/e/o;

    return-object v0
.end method

.method public static cn()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/baidu/location/e/o;->byte(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/e/o;->iz:I

    invoke-static {v0, v2}, Lcom/baidu/location/e/o;->if(Ljava/util/List;I)I

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    sget v3, Lcom/baidu/location/e/o;->ir:I

    invoke-static {v0, v3}, Lcom/baidu/location/e/o;->if(Ljava/util/List;I)I

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    sget v3, Lcom/baidu/location/e/o;->iq:I

    invoke-static {v0, v3}, Lcom/baidu/location/e/o;->if(Ljava/util/List;I)I

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    return-object v1
.end method

.method public static do(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/e/f;->gC:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/baidu/location/b/k;->co:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-ne v0, v9, :cond_1

    invoke-static {v8, v7}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Lcom/baidu/location/h/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8, v10}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/baidu/location/c/b;->byte(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x42

    const/4 v12, 0x2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "&ofrt=%f|%f|%d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_2
    move-object/from16 v2, p3

    move-object v13, v2

    :goto_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/b/k;->for(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/baidu/location/c/d$c;->do:Lcom/baidu/location/c/d$c;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    :goto_1
    sget-object v5, Lcom/baidu/location/c/d$b;->do:Lcom/baidu/location/c/d$b;

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v11

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v12

    goto :goto_2

    :cond_6
    move v1, v10

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&ofl=%s|%d|%f|%f|%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v13, "1"

    aput-object v13, v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v12

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v9

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ofl=%s|0"

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "1"

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v1, 0x0

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/baidu/location/h/h;->du()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v8, v7}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Lcom/baidu/location/h/f;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v7

    :goto_5
    invoke-static {p0, v1, v8, v0, v11}, Lcom/baidu/location/b/k;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/e/o;->y(Ljava/lang/String;)V

    sput-object v8, Lcom/baidu/location/e/o;->is:Landroid/location/Location;

    sput-object v8, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    if-eqz v1, :cond_9

    sput-object v1, Lcom/baidu/location/e/o;->io:Lcom/baidu/location/h/f;

    :cond_9
    return-void

    :cond_a
    if-eqz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/h/f;->dj()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v8, v7}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Lcom/baidu/location/h/f;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/baidu/location/e/o;->byte(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->cV()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=1"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/baidu/location/e/o;->byte(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->cV()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=3"

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->cV()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=2"

    goto :goto_6

    :cond_d
    :goto_7
    invoke-static {p0, v7, v8, v0, v12}, Lcom/baidu/location/b/k;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/e/o;->x(Ljava/lang/String;)V

    sput-object v8, Lcom/baidu/location/e/o;->im:Landroid/location/Location;

    sput-object v8, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    if-eqz v7, :cond_e

    sput-object v7, Lcom/baidu/location/e/o;->io:Lcom/baidu/location/h/f;

    :cond_e
    return-void

    :cond_f
    invoke-static/range {p2 .. p2}, Lcom/baidu/location/e/o;->byte(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/b;->cV()Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cfr=1"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_10
    invoke-static/range {p2 .. p2}, Lcom/baidu/location/e/o;->byte(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/b;->cV()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cfr=3"

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/b;->cV()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cfr=2"

    goto :goto_8

    :cond_12
    :goto_9
    invoke-static {v8, v7}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Lcom/baidu/location/h/f;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_a

    :cond_13
    move-object v1, v7

    :goto_a
    if-nez v6, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    invoke-static {p0, v1, v8, v0, v9}, Lcom/baidu/location/b/k;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/e/o;->A(Ljava/lang/String;)V

    sput-object v8, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    if-eqz v1, :cond_15

    sput-object v1, Lcom/baidu/location/e/o;->io:Lcom/baidu/location/h/f;

    :cond_15
    return-void
.end method

.method public static for(Ljava/lang/String;Ljava/util/List;)Z
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

    sget v4, Lcom/baidu/location/e/o;->iP:I

    new-array v4, v4, [B

    sget v5, Lcom/baidu/location/e/o;->it:I
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

.method private static if(Ljava/util/List;I)I
    .locals 14

    if-eqz p0, :cond_7

    const/16 v0, 0x100

    if-gt p1, v0, :cond_7

    if-gez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/e/o;->iM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    sput-object p0, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    const/4 p0, -0x2

    return p0

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/baidu/location/e/o;->iB:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, -0x3

    return p0

    :cond_2
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v12

    move v3, p1

    move v4, v9

    move v5, v10

    move v6, v11

    move-wide v7, v12

    invoke-static/range {v3 .. v8}, Lcom/baidu/location/e/o;->if(IIIIJ)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-ge v9, v3, :cond_3

    goto :goto_1

    :cond_3
    sget v4, Lcom/baidu/location/e/o;->iP:I

    new-array v4, v4, [B

    sget v5, Lcom/baidu/location/e/o;->iN:I

    :goto_0
    if-lez v5, :cond_5

    if-lez v9, :cond_5

    add-int v6, p1, v9

    sub-int/2addr v6, v3

    rem-int/2addr v6, v10

    mul-int/2addr v6, v11

    int-to-long v6, v6

    add-long/2addr v6, v12

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-lez v6, :cond_4

    if-ge v6, v11, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v6, v6, -0x1

    aget-byte v8, v4, v6

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v7, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    sget p0, Lcom/baidu/location/e/o;->iN:I

    sub-int/2addr p0, v5

    return p0

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, -0x4

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x5

    return p0

    :cond_7
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public static if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/e/f;->gC:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/location/b/k;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(IZ)V
    .locals 14

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    sget-object v2, Lcom/baidu/location/e/o;->iu:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :goto_0
    sget-object v3, Lcom/baidu/location/e/o;->in:Ljava/util/ArrayList;

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    sget-object v2, Lcom/baidu/location/e/o;->iH:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v3, Lcom/baidu/location/e/o;->iK:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    if-ne p0, v2, :cond_5

    sget-object v2, Lcom/baidu/location/e/o;->il:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    sget-object v3, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    if-ne p0, v0, :cond_c

    sget-object v2, Lcom/baidu/location/e/o;->iA:Ljava/lang/String;

    if-eqz p1, :cond_c

    goto :goto_2

    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v2}, Lcom/baidu/location/e/o;->v(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    :goto_4
    sget v10, Lcom/baidu/location/e/o;->it:I

    const/4 v11, 0x0

    if-le v9, v10, :cond_b

    if-eqz p1, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    if-ge v6, v4, :cond_8

    mul-int v10, v5, v6

    add-int/lit16 v10, v10, 0x80

    int-to-long v12, v10

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v12, v10

    invoke-virtual {v2, v12}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v12, v10

    invoke-virtual {v2, v10, v11, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_a

    mul-int v10, v7, v5

    add-int/lit16 v10, v10, 0x80

    int-to-long v12, v10

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v12, v10

    invoke-virtual {v2, v12}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v12, v10

    invoke-virtual {v2, v10, v11, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    if-le v7, v6, :cond_9

    move v7, v11

    :cond_9
    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_a
    move v11, v1

    :cond_b
    const-wide/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v11, :cond_c

    if-ge p0, v0, :cond_c

    add-int/2addr p0, v1

    invoke-static {p0, v1}, Lcom/baidu/location/e/o;->if(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    return-void
.end method

.method private static if(IIIIJ)Z
    .locals 0

    const/4 p4, 0x0

    if-ltz p0, :cond_4

    if-lt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_4

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_4

    const/16 p0, 0x400

    if-le p2, p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x80

    if-lt p3, p1, :cond_4

    if-le p3, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return p4
.end method

.method private static if(Landroid/location/Location;Lcom/baidu/location/h/f;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/location/e/o;->io:Lcom/baidu/location/h/f;

    invoke-virtual {p1, v1}, Lcom/baidu/location/h/f;->int(Lcom/baidu/location/h/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    sget-object p1, Lcom/baidu/location/e/o;->im:Landroid/location/Location;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    sput-object p0, Lcom/baidu/location/e/o;->im:Landroid/location/Location;

    :cond_2
    :goto_0
    return v0
.end method

.method public static if(Landroid/location/Location;Z)Z
    .locals 1

    sget-object v0, Lcom/baidu/location/e/o;->ix:Landroid/location/Location;

    invoke-static {v0, p0, p1}, Lcom/baidu/location/h/a;->if(Landroid/location/Location;Landroid/location/Location;Z)Z

    move-result p0

    return p0
.end method

.method public static new(DDDD)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-wide p0, Lcom/baidu/location/e/o;->iJ:D

    :goto_0
    sput-wide p0, Lcom/baidu/location/e/o;->iJ:D

    sput-wide p2, Lcom/baidu/location/e/o;->ik:D

    const-wide/high16 p0, 0x4034000000000000L    # 20.0

    cmpl-double p0, p4, p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-wide p4, Lcom/baidu/location/e/o;->iy:D

    :goto_1
    sput-wide p4, Lcom/baidu/location/e/o;->iy:D

    sput-wide p6, Lcom/baidu/location/e/o;->iI:D

    return-void
.end method

.method public static v(Ljava/lang/String;)V
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

    const/16 v0, 0x800

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

.method public static declared-synchronized w(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/baidu/location/e/o;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/baidu/location/b/k;->b3:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/baidu/location/e/o;->in:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/baidu/location/e/o;->iK:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    sget-object v2, Lcom/baidu/location/e/o;->ip:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/baidu/location/e/o;->iF:I

    if-gt v3, v4, :cond_3

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sget v3, Lcom/baidu/location/e/o;->iF:I

    const/4 v4, 0x0

    if-lt p0, v3, :cond_4

    invoke-static {v1, v4}, Lcom/baidu/location/e/o;->if(IZ)V

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sget v1, Lcom/baidu/location/e/o;->iF:I

    if-le p0, v1, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static x(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/e/o;->w(Ljava/lang/String;)V

    return-void
.end method

.method private static y(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/e/o;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cj()V
    .locals 4

    invoke-static {}, Lcom/baidu/location/e/e;->bv()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->bt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/location/e/o;->iw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/o;->iw:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/e/o;->ck()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ck()V
    .locals 0

    return-void
.end method

.method public co()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c9()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/o;->iO:Lcom/baidu/location/e/o$b;

    invoke-virtual {v0}, Lcom/baidu/location/e/o$b;->a()V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/e/o$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/e/o$a;-><init>(Lcom/baidu/location/e/o;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/e/o$a;->a()V

    return-void
.end method
