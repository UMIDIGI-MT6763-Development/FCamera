.class Lcom/baidu/location/h/m;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:D

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/h/m;->c:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/baidu/location/h/m;->d:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/baidu/location/h/m;->e:Z

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/baidu/location/h/m;->f:D

    iput-wide p2, p0, Lcom/baidu/location/h/m;->g:D

    iput p1, p0, Lcom/baidu/location/h/m;->b:I

    iput-object p4, p0, Lcom/baidu/location/h/m;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/location/h/m;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    move v3, v0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/h/m;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/h/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/h/m;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ","

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    aget-object v2, v0, v1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    aget-object v2, v0, v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v2, v0, v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/h/m;->f:D

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/h/m;->g:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v3, p0, Lcom/baidu/location/h/m;->e:Z

    :cond_3
    iget-boolean v0, p0, Lcom/baidu/location/h/m;->e:Z

    iput-boolean v0, p0, Lcom/baidu/location/h/m;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/h/m;->c:Z

    return v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/h/m;->f:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/h/m;->g:D

    return-wide v0
.end method
