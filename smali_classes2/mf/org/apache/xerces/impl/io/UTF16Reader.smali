.class public final Lmf/org/apache/xerces/impl/io/UTF16Reader;
.super Ljava/io/Reader;
.source "UTF16Reader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field protected final fIsBigEndian:Z

.field private final fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6

    new-array v2, p2, [B

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6

    new-instance v4, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/16 v2, 0x1000

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6

    const/16 v2, 0x1000

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method private expectedTwoBytes()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v6, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "2"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    const-string v3, "2"

    aput-object v3, v5, v0

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ExpectedByte"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method private processBE([CII)V
    .locals 5

    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, v2, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move p2, v4

    goto :goto_0
.end method

.method private processLE([CII)V
    .locals 5

    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, v2, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move p2, v4

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/IOException;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mark()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-16"

    aput-object v4, v2, v3

    const-string v3, "OperationNotSupported"

    invoke-interface {v0, v1, v3, v2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-eqz v1, :cond_2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0

    :cond_2
    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p3, p3, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    array-length v1, v0

    if-le p3, v1, :cond_0

    array-length p3, v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v0

    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    move p3, v2

    :cond_3
    shr-int/lit8 p3, p3, 0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processBE([CII)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processLE([CII)V

    :goto_0
    return p3
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    shl-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v2, 0x1

    and-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    :cond_0
    add-long/2addr p1, v2

    :cond_1
    shr-long/2addr p1, v1

    return-wide p1
.end method
