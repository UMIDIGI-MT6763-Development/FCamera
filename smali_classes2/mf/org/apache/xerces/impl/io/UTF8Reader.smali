.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/16 v2, 0x800

    invoke-direct {p0, p1, v2, v0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    new-array p2, p2, [B

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method private expectedByte(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v6, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ExpectedByte"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method private invalidByte(III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance p3, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidByte"

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method private invalidSurrogate(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v6, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidHighSurrogate"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mark()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    const/4 v2, 0x0

    iget v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v3, v2

    and-int/lit16 v3, v2, 0xff

    move v2, v4

    :goto_0
    if-ne v3, v1, :cond_1

    return v1

    :cond_1
    const/16 v5, 0x80

    if-ge v3, v5, :cond_2

    int-to-char v0, v3

    goto/16 :goto_7

    :cond_2
    and-int/lit16 v6, v3, 0xe0

    const/16 v7, 0xc0

    const/4 v8, 0x2

    if-ne v6, v7, :cond_6

    and-int/lit8 v6, v3, 0x1e

    if-eqz v6, :cond_6

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_1
    if-ne v0, v1, :cond_4

    invoke-direct {p0, v8, v8}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_4
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_5

    invoke-direct {p0, v8, v8, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_5
    shl-int/lit8 v1, v3, 0x6

    and-int/lit16 v1, v1, 0x7c0

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    goto/16 :goto_7

    :cond_6
    and-int/lit16 v6, v3, 0xf0

    const/16 v7, 0xe0

    const/4 v9, 0x3

    if-ne v6, v7, :cond_f

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    move v2, v4

    :goto_2
    if-ne v0, v1, :cond_8

    invoke-direct {p0, v8, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_8
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v5, :cond_a

    const/16 v4, 0xed

    if-ne v3, v4, :cond_9

    const/16 v4, 0xa0

    if-ge v0, v4, :cond_a

    :cond_9
    and-int/lit8 v4, v3, 0xf

    if-nez v4, :cond_b

    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_b

    :cond_a
    invoke-direct {p0, v8, v9, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_b
    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_3

    :cond_c
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    :goto_3
    if-ne v2, v1, :cond_d

    invoke-direct {p0, v9, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_d
    and-int/lit16 v1, v2, 0xc0

    if-eq v1, v5, :cond_e

    invoke-direct {p0, v9, v9, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_e
    shl-int/lit8 v1, v3, 0xc

    const v3, 0xf000

    and-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xfc0

    or-int/2addr v0, v1

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v0, v1

    goto/16 :goto_7

    :cond_f
    and-int/lit16 v6, v3, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_1b

    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v0, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    move v2, v6

    :goto_4
    const/4 v6, 0x4

    if-ne v0, v1, :cond_11

    invoke-direct {p0, v8, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_11
    and-int/lit16 v7, v0, 0xc0

    if-ne v7, v5, :cond_12

    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_13

    and-int/lit8 v7, v3, 0x7

    if-nez v7, :cond_13

    :cond_12
    invoke-direct {p0, v8, v9, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_13
    iget v7, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v7, :cond_14

    iget-object v7, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_5

    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v10, v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v7, v2, 0xff

    move v2, v10

    :goto_5
    if-ne v7, v1, :cond_15

    invoke-direct {p0, v9, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_15
    and-int/lit16 v10, v7, 0xc0

    if-eq v10, v5, :cond_16

    invoke-direct {p0, v9, v9, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_16
    iget v10, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v2, v10, :cond_17

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_6

    :cond_17
    iget-object v10, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    :goto_6
    if-ne v2, v1, :cond_18

    invoke-direct {p0, v6, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_18
    and-int/lit16 v1, v2, 0xc0

    if-eq v1, v5, :cond_19

    invoke-direct {p0, v6, v6, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_19
    shl-int/lit8 v1, v3, 0x2

    and-int/lit8 v1, v1, 0x1c

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v9

    or-int/2addr v1, v3

    const/16 v3, 0x10

    if-le v1, v3, :cond_1a

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_1a
    sub-int/2addr v1, v4

    const v3, 0xd800

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x3c0

    or-int/2addr v1, v3

    shl-int/2addr v0, v8

    and-int/lit8 v0, v0, 0x3c

    or-int/2addr v0, v1

    shr-int/lit8 v1, v7, 0x4

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    const v1, 0xdc00

    shl-int/lit8 v3, v7, 0x6

    and-int/lit16 v3, v3, 0x3c0

    or-int/2addr v1, v3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto :goto_7

    :cond_1b
    invoke-direct {p0, v4, v4, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_7

    :cond_1c
    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    :goto_7
    return v0
.end method

.method public read([CII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v5, v2

    move/from16 v6, p3

    if-le v6, v5, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    iget v5, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    if-eq v5, v3, :cond_1

    add-int/lit8 v6, v1, 0x1

    int-to-char v5, v5

    aput-char v5, p1, v1

    iput v3, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iget-object v5, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    invoke-virtual {v5, v7, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v3, :cond_2

    return v3

    :cond_2
    sub-int v7, v6, v1

    add-int/2addr v5, v7

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    move/from16 v6, p3

    iput v4, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move v5, v6

    move v6, v1

    :goto_2
    move v7, v6

    move v6, v4

    :goto_3
    if-lt v6, v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v8, v8, v6

    if-ltz v8, :cond_5

    add-int/lit8 v9, v7, 0x1

    int-to-char v8, v8

    aput-char v8, p1, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_3

    :cond_5
    :goto_4
    move v8, v7

    move v7, v2

    :goto_5
    if-lt v6, v2, :cond_6

    return v7

    :cond_6
    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v10, v9, v6

    const/4 v11, 0x1

    if-ltz v10, :cond_7

    add-int/lit8 v9, v8, 0x1

    int-to-char v10, v10

    aput-char v10, p1, v8

    move v8, v9

    goto/16 :goto_c

    :cond_7
    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v12, v10, 0xe0

    const/16 v13, 0x80

    const/16 v14, 0xc0

    const/4 v15, 0x2

    if-ne v12, v14, :cond_d

    and-int/lit8 v12, v10, 0x1e

    if-eqz v12, :cond_d

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_8

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    goto :goto_6

    :cond_8
    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v3, :cond_a

    if-le v8, v1, :cond_9

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    iput v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_9
    invoke-direct {v0, v15, v15}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    :goto_6
    and-int/lit16 v12, v9, 0xc0

    if-eq v12, v13, :cond_c

    if-le v8, v1, :cond_b

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    iput v15, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_b
    invoke-direct {v0, v15, v15, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_c
    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v10, v10, 0x7c0

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    int-to-char v9, v9

    aput-char v9, p1, v8

    add-int/2addr v7, v3

    move v8, v10

    goto/16 :goto_c

    :cond_d
    and-int/lit16 v9, v10, 0xf0

    const/16 v12, 0xe0

    const/4 v14, 0x3

    if-ne v9, v12, :cond_1a

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_e

    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    goto :goto_7

    :cond_e
    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v3, :cond_10

    if-le v8, v1, :cond_f

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    iput v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_f
    invoke-direct {v0, v15, v14}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_10
    add-int/lit8 v7, v7, 0x1

    :goto_7
    and-int/lit16 v12, v9, 0xc0

    if-ne v12, v13, :cond_12

    const/16 v12, 0xed

    if-ne v10, v12, :cond_11

    const/16 v12, 0xa0

    if-ge v9, v12, :cond_12

    :cond_11
    and-int/lit8 v12, v10, 0xf

    if-nez v12, :cond_14

    and-int/lit8 v12, v9, 0x20

    if-nez v12, :cond_14

    :cond_12
    if-le v8, v1, :cond_13

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    iput v15, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_13
    invoke-direct {v0, v15, v14, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_14
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_15

    iget-object v12, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v12, v12, v6

    and-int/lit16 v12, v12, 0xff

    goto :goto_8

    :cond_15
    iget-object v12, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    if-ne v12, v3, :cond_17

    if-le v8, v1, :cond_16

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    iput v15, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_16
    invoke-direct {v0, v14, v14}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_17
    add-int/lit8 v7, v7, 0x1

    :goto_8
    and-int/lit16 v3, v12, 0xc0

    if-eq v3, v13, :cond_19

    if-le v8, v1, :cond_18

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    int-to-byte v3, v12

    aput-byte v3, v2, v15

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_18
    invoke-direct {v0, v14, v14, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_19
    shl-int/lit8 v3, v10, 0xc

    const v10, 0xf000

    and-int/2addr v3, v10

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0xfc0

    or-int/2addr v3, v9

    and-int/lit8 v9, v12, 0x3f

    or-int/2addr v3, v9

    add-int/lit8 v9, v8, 0x1

    int-to-char v3, v3

    aput-char v3, p1, v8

    add-int/lit8 v7, v7, -0x2

    move v8, v9

    goto/16 :goto_c

    :cond_1a
    and-int/lit16 v3, v10, 0xf8

    const/16 v9, 0xf0

    if-ne v3, v9, :cond_2d

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x4

    if-ge v6, v2, :cond_1b

    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    goto :goto_9

    :cond_1b
    iget-object v9, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_1d

    if-le v8, v1, :cond_1c

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    iput v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_1c
    invoke-direct {v0, v15, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    :goto_9
    and-int/lit16 v12, v9, 0xc0

    if-ne v12, v13, :cond_1e

    and-int/lit8 v12, v9, 0x30

    if-nez v12, :cond_20

    and-int/lit8 v12, v10, 0x7

    if-nez v12, :cond_20

    :cond_1e
    if-le v8, v1, :cond_1f

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    iput v15, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_1f
    invoke-direct {v0, v15, v3, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_20
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_21

    iget-object v12, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v12, v12, v6

    and-int/lit16 v12, v12, 0xff

    goto :goto_a

    :cond_21
    iget-object v12, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_23

    if-le v8, v1, :cond_22

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    iput v15, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_22
    invoke-direct {v0, v14, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_23
    add-int/lit8 v7, v7, 0x1

    :goto_a
    and-int/lit16 v13, v12, 0xc0

    const/16 v3, 0x80

    if-eq v13, v3, :cond_25

    if-le v8, v1, :cond_24

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    int-to-byte v3, v12

    aput-byte v3, v2, v15

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_24
    const/4 v3, 0x4

    invoke-direct {v0, v14, v3, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_25
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_26

    iget-object v3, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    goto :goto_b

    :cond_26
    iget-object v3, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_28

    if-le v8, v1, :cond_27

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    int-to-byte v3, v9

    aput-byte v3, v2, v11

    int-to-byte v3, v12

    aput-byte v3, v2, v15

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_27
    const/4 v13, 0x4

    invoke-direct {v0, v13, v13}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_28
    add-int/lit8 v7, v7, 0x1

    :goto_b
    and-int/lit16 v13, v3, 0xc0

    const/16 v14, 0x80

    if-eq v13, v14, :cond_2a

    if-le v8, v1, :cond_29

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v5, v10

    aput-byte v5, v2, v4

    int-to-byte v4, v9

    aput-byte v4, v2, v11

    int-to-byte v4, v12

    aput-byte v4, v2, v15

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/4 v13, 0x4

    iput v13, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_29
    const/4 v13, 0x4

    invoke-direct {v0, v13, v13, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_2a
    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x1c

    shr-int/lit8 v13, v9, 0x4

    const/4 v14, 0x3

    and-int/2addr v13, v14

    or-int/2addr v10, v13

    const/16 v13, 0x10

    if-le v10, v13, :cond_2b

    invoke-direct {v0, v10}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_2b
    add-int/lit8 v10, v10, -0x1

    and-int/lit8 v9, v9, 0xf

    and-int/lit8 v12, v12, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const v13, 0xd800

    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v10, v10, 0x3c0

    or-int/2addr v10, v13

    shl-int/2addr v9, v15

    or-int/2addr v9, v10

    shr-int/lit8 v10, v12, 0x4

    or-int/2addr v9, v10

    const v10, 0xdc00

    shl-int/lit8 v12, v12, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v10, v12

    or-int/2addr v3, v10

    add-int/lit8 v10, v8, 0x1

    int-to-char v9, v9

    aput-char v9, p1, v8

    add-int/lit8 v7, v7, -0x2

    if-gt v7, v5, :cond_2c

    add-int/lit8 v8, v10, 0x1

    int-to-char v3, v3

    aput-char v3, p1, v10

    goto :goto_c

    :cond_2c
    iput v3, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v7, v7, -0x1

    move v8, v10

    goto :goto_c

    :cond_2d
    if-le v8, v1, :cond_2e

    iget-object v2, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    int-to-byte v3, v10

    aput-byte v3, v2, v4

    iput v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int/2addr v8, v1

    return v8

    :cond_2e
    invoke-direct {v0, v11, v11, v10}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :goto_c
    add-int/2addr v6, v11

    const/4 v3, -0x1

    goto/16 :goto_5
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    new-array v0, v0, [C

    move-wide v1, p1

    :cond_0
    array-length v3, v0

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    array-length v3, v0

    goto :goto_0

    :cond_1
    long-to-int v3, v1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v3

    if-lez v3, :cond_2

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    :cond_2
    sub-long/2addr p1, v1

    return-wide p1
.end method
