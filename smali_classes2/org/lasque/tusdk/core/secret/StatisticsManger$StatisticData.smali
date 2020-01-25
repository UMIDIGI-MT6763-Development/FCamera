.class Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/StatisticsManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatisticData"
.end annotation


# instance fields
.field private a:B

.field private b:J

.field private c:J

.field private d:D

.field private e:D


# direct methods
.method private constructor <init>(BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a:B

    iput-wide p2, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->b:J

    return-void
.end method

.method synthetic constructor <init>(BJLorg/lasque/tusdk/core/secret/StatisticsManger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;-><init>(BJ)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;D)D
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->d:D

    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->c:J

    return-wide p1
.end method

.method private a()[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-byte v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a:B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->b:J

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/ByteUtils;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->c:J

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/ByteUtils;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->d:D

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/ByteUtils;->getBytes(D)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->e:D

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/ByteUtils;->getBytes(D)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;)[B
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->a()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;D)D
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/secret/StatisticsManger$StatisticData;->e:D

    return-wide p1
.end method
