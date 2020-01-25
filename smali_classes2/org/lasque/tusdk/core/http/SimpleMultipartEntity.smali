.class Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[C


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:[B

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/io/ByteArrayOutputStream;

.field private final i:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

.field private j:Z

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    const-string v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b:[B

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->c:[C

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->g:Ljava/util/List;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    sget-object v3, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->c:[C

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->e:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->f:[B

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->i:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    :cond_0
    return-object p1
.end method

.method private a(J)V
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->k:J

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->i:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    iget-wide v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->k:J

    iget-wide v2, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->l:J

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(J)V

    return-void
.end method

.method static synthetic a()[B
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b:[B

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;)[B
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->e:[B

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    return-object v0
.end method

.method private b(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->g:Ljava/util/List;

    new-instance v1, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;-><init>(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->g:Ljava/util/List;

    new-instance v7, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;-><init>(Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    sget-object p2, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b:[B

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    sget-object p2, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    iget-object p4, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    sget-object p2, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    sget-object p3, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    sget-object p2, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a:[B

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "addPart ByteArrayOutputStream exception"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p3, "UTF-8"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/plain; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public consumeContent()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    add-long/2addr v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->f:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->j:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->j:Z

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->k:J

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->l:J

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->f:[B

    array-length p1, p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/http/SimpleMultipartEntity;->a(J)V

    return-void
.end method
