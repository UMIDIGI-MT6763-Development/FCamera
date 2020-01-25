.class public Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XML11DocumentScannerImpl.java"


# instance fields
.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

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

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result p1

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

.method protected scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x22

    const/16 v5, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    const-string v9, "OpenQuoteExpected"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object p5, v10, v7

    aput-object p3, v10, v8

    invoke-virtual {v0, v9, v10}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v9, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v9, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v10, v3, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v12

    if-ne v12, v11, :cond_3

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v1, "CloseQuoteExpected"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p5, v2, v7

    aput-object p3, v2, v8

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v8

    :cond_2
    move v12, v7

    :cond_3
    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v13, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V

    if-eq v10, v3, :cond_1d

    iput-boolean v8, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_4
    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    const/16 v12, 0x3c

    const/16 v13, 0x26

    if-ne v10, v13, :cond_14

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v10, v13}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    iget v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v10, :cond_5

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v13}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_5
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v14, 0x23

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v10

    if-eqz v10, :cond_7

    iget v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v10, :cond_6

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_6
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v10, v12}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v10

    goto/16 :goto_5

    :cond_7
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v14, "NameRequiredInReference"

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget v14, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v14, :cond_9

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v14, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_9
    :goto_0
    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v15, 0x3b

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "SemicolonRequiredInReference"

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v10, v15, v7

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    iget v14, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v14, :cond_b

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_b
    :goto_1
    sget-object v14, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v10, v14, :cond_c

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v13}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_c
    sget-object v13, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v10, v13, :cond_d

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_d
    sget-object v13, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v10, v13, :cond_e

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_e
    sget-object v12, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v10, v12, :cond_f

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v12, 0x3e

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_f
    sget-object v12, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v10, v12, :cond_10

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_10
    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "ReferenceToExternalEntity"

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v10, v13, v7

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_11
    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    if-eqz p4, :cond_12

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fValidation:Z

    if-eqz v12, :cond_13

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v14, "EntityNotDeclared"

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v10, v15, v7

    invoke-virtual {v12, v13, v14, v15, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    :cond_12
    const-string v12, "EntityNotDeclared"

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v10, v13, v7

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_2
    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v12, v10, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_14
    if-ne v10, v12, :cond_15

    const-string v12, "LessthanInAttValue"

    new-array v13, v6, [Ljava/lang/Object;

    aput-object p5, v13, v7

    aput-object p3, v13, v8

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v12, :cond_1b

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v10, v10

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    :cond_15
    const/16 v12, 0x25

    if-eq v10, v12, :cond_1a

    const/16 v12, 0x5d

    if-ne v10, v12, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v12, 0xa

    if-eq v10, v12, :cond_19

    const/16 v13, 0xd

    if-eq v10, v13, :cond_19

    const/16 v13, 0x85

    if-eq v10, v13, :cond_19

    const/16 v13, 0x2028

    if-ne v10, v13, :cond_17

    goto :goto_3

    :cond_17
    if-eq v10, v11, :cond_18

    invoke-static {v10}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_18

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v10, :cond_1b

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_5

    :cond_18
    if-eq v10, v11, :cond_1b

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isInvalidLiteral(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v12, "InvalidCharInAttValue"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object p5, v13, v7

    aput-object p3, v13, v8

    const/16 v14, 0x10

    invoke-static {v10, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v0, v12, v13}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v12, :cond_1b

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v10, v10

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_19
    :goto_3
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v10, :cond_1b

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_1a
    :goto_4
    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v10, v10

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v12, :cond_1b

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_1b
    :goto_5
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v10, v3, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v10

    iget v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v12, :cond_1c

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    if-ne v10, v3, :cond_4

    iget v12, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v9, v12, :cond_4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iput-boolean v7, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    :cond_1d
    iget-object v4, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v4

    if-eq v4, v3, :cond_1e

    const-string v3, "CloseQuoteExpected"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p5, v4, v7

    aput-object p3, v4, v8

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget-object v3, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, v1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v1

    return v1
.end method

.method protected scanContent()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v3, 0x85

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2028

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    move v1, v2

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v0, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget v3, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v3, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CDEndInContent"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v0, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    move v1, v2

    :cond_6
    return v1
.end method

.method protected scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_0

    const/16 v3, 0x22

    if-eq v0, v3, :cond_0

    const-string p1, "QuoteRequiredInPublicID"

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    const/4 v3, 0x1

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    sub-int/2addr v1, v3

    iput v1, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    return v5

    :cond_4
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v4, v2

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    if-ne v6, v5, :cond_6

    const-string p1, "PublicIDUnterminated"

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_6
    const-string v5, "InvalidCharInPublicID"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v2

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

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
