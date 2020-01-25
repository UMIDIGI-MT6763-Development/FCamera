.class public Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.source "XML11DTDScannerImpl.java"


# instance fields
.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    new-instance p1, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    const-string v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isInvalidLiteral(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 3

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v1, p1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isValidNCName(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result p1

    return p1
.end method

.method protected isValidNameChar(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result p1

    return p1
.end method

.method protected isValidNameStartChar(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result p1

    return p1
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result p1

    return p1
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v3, 0x20

    aput-char v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 3

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v1, p2

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char p2, p2, v1

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v2, 0x20

    aput-char v2, p2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_0

    const/16 v3, 0x22

    if-eq v0, v3, :cond_0

    const-string p1, "QuoteRequiredInPublicID"

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    const/4 v3, 0x1

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_7

    const/16 v8, 0xa

    if-eq v6, v8, :cond_7

    const/16 v8, 0xd

    if-eq v6, v8, :cond_7

    const/16 v8, 0x85

    if-eq v6, v8, :cond_7

    const/16 v8, 0x2028

    if-ne v6, v8, :cond_2

    goto :goto_1

    :cond_2
    if-ne v6, v0, :cond_4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    sub-int/2addr v1, v3

    iput v1, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    return v5

    :cond_4
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v4, v2

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    if-ne v6, v5, :cond_6

    const-string p1, "PublicIDUnterminated"

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_6
    const-string v5, "InvalidCharInPublicID"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v2

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v4, v3

    goto :goto_0
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
