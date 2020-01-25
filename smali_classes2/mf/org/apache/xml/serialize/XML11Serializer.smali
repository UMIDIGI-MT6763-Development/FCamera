.class public Lmf/org/apache/xml/serialize/XML11Serializer;
.super Lmf/org/apache/xml/serialize/XMLSerializer;
.source "XML11Serializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 p1, 0x1

    iput p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string p2, "1.1"

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 p2, 0x1

    iput p2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string p2, "1.1"

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "1.1"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    const/4 v8, 0x1

    iget-boolean v9, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    add-int/2addr p3, p2

    :goto_1
    if-lt p2, p3, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_2
    return-void

    :cond_4
    aget-char v1, p1, p2

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_5

    add-int/lit8 v4, p2, 0x2

    if-ge v4, p3, :cond_5

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    if-ne v5, v2, :cond_5

    aget-char v2, p1, v4

    const/16 v5, 0x3e

    if-ne v2, v5, :cond_5

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {p2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move p2, v4

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_6

    aget-char v2, p1, p2

    invoke-virtual {p0, v1, v2, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' is an invalid XML character"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "]]>&#x"

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/2addr p2, v3

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected final printCDATAText(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    add-int/lit8 v5, v1, 0x2

    if-ge v5, v0, :cond_4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_4

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_3

    iget-short v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-short v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const-string v1, "http://apache.org/xml/serializer"

    const-string v3, "EndingCDATA"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1, v3, v2, v6}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    const-string v1, "http://apache.org/xml/serializer"

    const-string v3, "SplittingCDATA"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1, v4, v2, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move v1, v5

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "The character \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]>&#x"

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, ";<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    add-int/2addr v1, v4

    goto/16 :goto_0
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto/16 :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' is an invalid XML character"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    const/16 v4, 0x85

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2028

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x26

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v4, 0x22

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x20

    if-lt v3, v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, p2, v3, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' is an invalid XML character"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    :goto_2
    if-lt v1, v0, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, p2, v3, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_4

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' is an invalid XML character"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_4
    add-int/2addr v1, v2

    goto :goto_2
.end method

.method protected printText([CIIZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p4, :cond_4

    :goto_0
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x1

    aget-char p2, p1, p2

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    move p2, p4

    move p3, v1

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' is an invalid XML character"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    move p3, v1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_1
    move p2, p3

    move p3, p4

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_5

    :goto_3
    return-void

    :cond_5
    add-int/lit8 p3, p2, 0x1

    aget-char p2, p1, p2

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_6

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    move p2, p4

    move p3, v1

    goto :goto_2

    :cond_6
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' is an invalid XML character"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    move p3, v1

    goto :goto_2

    :cond_7
    if-eqz p5, :cond_8

    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_4
    move p2, p3

    move p3, p4

    goto :goto_2
.end method

.method protected final printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x85

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2028

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&lt;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&amp;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&gt;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    :goto_1
    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected final surrogates(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "The character \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' is an invalid XML character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    int-to-char p2, p2

    invoke-static {p1, p2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The character \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' is an invalid XML character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    iget-boolean p2, p2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p3, "]]>&#x"

    invoke-virtual {p2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, ";<![CDATA["

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The character \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' is an invalid XML character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
