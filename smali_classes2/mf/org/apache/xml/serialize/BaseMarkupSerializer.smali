.class public abstract Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;
.source "BaseMarkupSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lmf/org/apache/xml/serialize/DOMSerializer;
.implements Lmf/org/apache/xml/serialize/Serializer;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lmf/org/apache/xml/serialize/ElementState;

.field protected _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field protected _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lmf/org/apache/xml/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method protected constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/16 v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xml/serialize/ElementState;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    return-void

    :cond_0
    new-instance v2, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v2}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDOMSerializer()Lmf/org/apache/xml/serialize/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!ATTLIST "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, " \""

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected characters(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v2, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v3, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_1
    return-void
.end method

.method public characters([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

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

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    const/4 v8, 0x1

    iget-boolean v9, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    add-int/2addr p3, p2

    :goto_1
    if-lt p2, p3, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

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

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {p2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move p2, v4

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_6

    aget-char v2, p1, p2

    invoke-virtual {p0, v1, v2, v3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' is an invalid XML character"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/16 v2, 0x20

    if-lt v1, v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_a

    :cond_8
    const/16 v2, 0xa

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_a

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "]]>&#x"

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/2addr p2, v3

    goto/16 :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method final clearDocumentState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v4, "<!--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-->"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_5

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_5
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "]]>"

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    :cond_1
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    :cond_2
    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endCDATA()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endNonEscaping()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPreserving()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    .locals 6

    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    array-length v0, v2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xml/serialize/ElementState;

    move v2, v4

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v5, v3

    if-lt v2, v5, :cond_1

    array-length v2, v3

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    goto :goto_2

    :cond_0
    new-instance v3, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v3}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v2

    iput-object p1, v0, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object p2, v0, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    iput-boolean p4, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object p1, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    return-object v0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected fatalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract getEntityRef(I)Ljava/lang/String;
.end method

.method protected getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setThisIndent(I)V

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    aget-char v1, p1, p2

    invoke-virtual {p3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    move p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, " \""

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, "\">"

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected isDocumentState()Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected leaveElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 3

    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, "http://apache.org/xml/serializer"

    const-string v2, "Internal"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-short p2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    new-instance p1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    return-object p1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!NOTATION "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "<!NOTATION "

    invoke-virtual {p2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, " SYSTEM "

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/serializer"

    const-string v2, "NoWriterSupplied"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v0, Lmf/org/apache/xml/serialize/IndentPrinter;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v0, v4, v5}, Lmf/org/apache/xml/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v0, Lmf/org/apache/xml/serialize/Printer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v0, v4, v5}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    :goto_1
    iput v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v0, v0, v3

    iput-object v1, v0, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v4

    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iput-object v1, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    return-void
.end method

.method protected printCDATAText(Ljava/lang/String;)V
    .locals 8
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

    if-ne v2, v3, :cond_5

    add-int/lit8 v5, v1, 0x2

    if-ge v5, v0, :cond_5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_5

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_4

    iget-short v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "http://apache.org/xml/serializer"

    const-string v3, "EndingCDATA"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-short v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/16 v6, 0x52

    if-nez v2, :cond_2

    const-string v2, "cdata-section-not-splitted"

    iget-object v7, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1, v3, v2, v7}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {p1, v6, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const-string v2, "wf-invalid-character"

    invoke-virtual {p0, v1, p1, v2, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    new-instance p1, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {p1, v6, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, "http://apache.org/xml/serializer"

    const-string v3, "SplittingCDATA"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1, v4, v2, v3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_4
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move v1, v5

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "The character \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/16 v3, 0x20

    if-lt v2, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_a

    :cond_8
    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]>&#x"

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, ";<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_0
.end method

.method protected printDoctypeURL(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected printEscaped(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_3

    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    const v2, 0xd800

    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    and-int/lit16 p1, p1, 0x3ff

    const v1, 0xdc00

    add-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    return-void
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfc00

    and-int v3, v1, v2

    const v4, 0xd800

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/2addr v2, v5

    const v6, 0xdc00

    if-ne v2, v6, :cond_1

    const/high16 v0, 0x10000

    sub-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    sub-int/2addr v1, v6

    move v0, v3

    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final printHex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt v2, p2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt v2, p2, :cond_4

    :goto_4
    return-void

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v3, 0x20

    if-eq p2, v3, :cond_7

    const/16 v3, 0xc

    if-eq p2, v3, :cond_7

    const/16 v3, 0x9

    if-eq p2, v3, :cond_7

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/16 v1, 0xa

    if-eqz p4, :cond_3

    :goto_0
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_0

    goto :goto_4

    :cond_0
    aget-char p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_2

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_2
    move p3, p4

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 p4, p3, -0x1

    if-gtz p3, :cond_4

    :goto_4
    return-void

    :cond_4
    aget-char p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x20

    if-eq p3, v2, :cond_7

    const/16 v2, 0xc

    if-eq p3, v2, :cond_7

    const/16 v2, 0x9

    if-eq p3, v2, :cond_7

    if-eq p3, v1, :cond_7

    if-ne p3, v0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p5, :cond_6

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p3}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    :goto_6
    move p3, p4

    goto :goto_3
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v4, "<?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, "?>"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_5

    iput-boolean p2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_5
    :goto_2
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public reset()Z
    .locals 3

    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    return v2

    :cond_0
    const-string v0, "http://apache.org/xml/serializer"

    const-string v2, "ResetInMiddle"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public serialize(Lmf/org/w3c/dom/Document;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public serialize(Lmf/org/w3c/dom/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method protected abstract serializeElement(Lmf/org/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Document;

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "getPublicId"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    move-object v3, v2

    :goto_0
    :try_start_2
    const-string v4, "getSystemId"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V

    :cond_3
    :goto_2
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_4

    goto/16 :goto_d

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_4
    return-void

    :cond_5
    :goto_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_5

    :pswitch_6
    return-void

    :cond_6
    :goto_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_8

    goto/16 :goto_d

    :cond_8
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_6

    :cond_9
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_9

    :pswitch_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_8
    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_8

    :pswitch_9
    return-void

    :cond_b
    :goto_9
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_a
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    if-eqz v0, :cond_12

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_4

    goto :goto_a

    :pswitch_b
    return-void

    :cond_c
    :goto_a
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->startCDATA()V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    goto/16 :goto_d

    :cond_d
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_5

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    iget-boolean p1, p1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p1, :cond_f

    const/16 p1, 0xa

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_12

    :cond_f
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_d
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_6

    goto :goto_c

    :pswitch_e
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_b
    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_b

    :pswitch_f
    return-void

    :cond_11
    :goto_c
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    :cond_12
    :goto_d
    :pswitch_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method protected serializePreRoot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "output"

    aput-object v1, p1, v0

    const-string v0, "http://apache.org/xml/serializer"

    const-string v1, "ArgumentIsNull"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "writer"

    aput-object v1, p1, v0

    const-string v0, "http://apache.org/xml/serializer"

    const-string v1, "ArgumentIsNull"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "format"

    aput-object v1, p1, v0

    const-string v0, "http://apache.org/xml/serializer"

    const-string v1, "ArgumentIsNull"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startCDATA()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iput-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startNonEscaping()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPreserving()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected surrogates(IIZ)V
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

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    int-to-char p2, p2

    invoke-static {p1, p2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result p1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

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

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    iget-boolean p2, p2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p3, "]]>&#x"

    invoke-virtual {p2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, ";<![CDATA["

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

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

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    if-nez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "<!ENTITY "

    invoke-virtual {p2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, " SYSTEM "

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, " NDATA "

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
