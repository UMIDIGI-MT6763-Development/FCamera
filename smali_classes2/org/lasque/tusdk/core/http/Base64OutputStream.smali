.class public Lorg/lasque/tusdk/core/http/Base64OutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/Base64OutputStream$Base64DataException;
    }
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

.field private final c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    iput p2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->c:I

    if-eqz p3, :cond_0

    new-instance p3, Lorg/lasque/tusdk/core/utils/Base64Coder$Encoder;

    invoke-direct {p3, p2, p1}, Lorg/lasque/tusdk/core/utils/Base64Coder$Encoder;-><init>(I[B)V

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/lasque/tusdk/core/utils/Base64Coder$Decoder;

    invoke-direct {p3, p2, p1}, Lorg/lasque/tusdk/core/utils/Base64Coder$Decoder;-><init>(I[B)V

    :goto_0
    iput-object p3, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    return-void
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a([BIIZ)V

    iput v2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    :cond_0
    return-void
.end method

.method private a([BIIZ)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    iget-object v1, v0, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->output:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    invoke-virtual {v2, p3}, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a([BI)[B

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->output:[B

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->process([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    iget-object p2, p2, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->output:[B

    const/4 p3, 0x0

    iget-object p4, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->b:Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;

    iget p4, p4, Lorg/lasque/tusdk/core/utils/Base64Coder$Coder;->op:I

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/lasque/tusdk/core/http/Base64OutputStream$Base64DataException;

    const-string p2, "bad base-64"

    invoke-direct {p1, p2}, Lorg/lasque/tusdk/core/http/Base64OutputStream$Base64DataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([BI)[B
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-array p1, p2, [B

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a()V

    sget-object v0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->c:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    throw v0
.end method

.method public write(I)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    array-length v2, v1

    if-lt v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a([BIIZ)V

    iput v2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->d:[B

    iget v1, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/lasque/tusdk/core/http/Base64OutputStream;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([BII)V
    .locals 1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->a([BIIZ)V

    return-void
.end method
