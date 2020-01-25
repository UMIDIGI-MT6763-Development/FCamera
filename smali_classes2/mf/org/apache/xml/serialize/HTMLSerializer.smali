.class public Lmf/org/apache/xml/serialize/HTMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "HTMLSerializer.java"


# static fields
.field public static final XHTMLNamespace:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private _xhtml:Z

.field private fUserXHTMLNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p2, v1, v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p2, v1, v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v1, v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method protected constructor <init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 0

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    iget-object p2, p1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    const-string p3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p3, p1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p2, p1, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    :goto_2
    iget-boolean p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    const/16 v0, 0x3e

    if-eqz p3, :cond_6

    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz p3, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p3, " />"

    invoke-virtual {p1, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>"

    invoke-virtual {p3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_5
    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "</"

    invoke-virtual {p3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object p1, p1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_6
    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p2}, Lmf/org/apache/xml/serialize/HTMLdtd;->isOnlyOpening(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    :cond_8
    iget-boolean p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz p3, :cond_9

    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p3, :cond_9

    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz p3, :cond_9

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p3}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_9
    iget-boolean p3, p1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p3, :cond_a

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>"

    invoke-virtual {p3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_a
    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "</"

    invoke-virtual {p3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object p1, p1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    if-eqz p2, :cond_c

    const-string p3, "A"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "TD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    const/4 p2, 0x1

    iput-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_d
    const/4 p2, 0x0

    iput-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_e
    return-void
.end method

.method protected escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->fromChar(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v2

    const/16 v3, 0x3e

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    :goto_0
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    move v6, v5

    :goto_2
    invoke-interface {v4}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-interface {v4, v6}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lmf/org/w3c/dom/Attr;

    invoke-interface {v7}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    const/16 v10, 0x22

    if-eqz v7, :cond_7

    if-nez v9, :cond_6

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\"\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_7
    if-nez v9, :cond_8

    const-string v9, ""

    :cond_8
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {v0, v8}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v9}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_a
    invoke-static {v0, v8}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_c
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_d
    :goto_4
    invoke-static {v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_e

    move v2, v6

    :cond_e
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isEmptyTag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, " />"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_5
    iput-boolean v6, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto :goto_9

    :cond_11
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v2}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    const-string v4, "A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "TD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v4, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_13
    const-string v3, "SCRIPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "STYLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v3, :cond_15

    iput-boolean v6, v2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    goto :goto_7

    :cond_15
    iput-boolean v6, v2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    :cond_16
    :goto_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_8
    if-nez p1, :cond_18

    invoke-virtual {p0, v1, v1, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_9
    return-void

    :cond_18
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_8
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "html"

    const-string v1, "ISO-8859-1"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public setXHTMLNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_0

    const-string p1, "-//W3C//DTD XHTML 1.0 Strict//EN"

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string p1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "-//W3C//DTD HTML 4.01//EN"

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string p1, "http://www.w3.org/TR/html4/strict.dtd"

    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const/16 v0, 0x3e

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz p1, :cond_6

    :cond_2
    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE html PUBLIC "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML PUBLIC "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "                      "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_2
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE html SYSTEM "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML SYSTEM "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_8
    :goto_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    :try_start_0
    iget-object v4, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v6

    const/16 v7, 0x3e

    if-eqz v6, :cond_2

    iget-boolean v6, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v6, :cond_5

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v6, p3

    :goto_1
    invoke-virtual {v1, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    iget-boolean v6, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v6, :cond_5

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v6, :cond_4

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_5
    :goto_2
    iget-boolean v4, v4, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move v9, v6

    :goto_3
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v10, p3

    move v11, v6

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    move-object v10, v2

    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-nez v9, :cond_a

    move-object v5, v10

    goto :goto_7

    :cond_a
    const-string v12, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v12, :cond_c

    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    move-object v5, v2

    :cond_c
    :goto_7
    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v12, :cond_d

    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_8
    iget-object v12, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    const/16 v12, 0x22

    if-eqz v3, :cond_16

    move v13, v6

    :goto_9
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v14

    if-lt v13, v14, :cond_e

    goto/16 :goto_c

    :cond_e
    iget-object v14, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v14}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v3, v13}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    iget-boolean v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v8, :cond_14

    if-eqz v9, :cond_f

    goto :goto_a

    :cond_f
    if-nez v15, :cond_10

    const-string v15, ""

    :cond_10
    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    invoke-static {v10, v14}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v14, "=\""

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_b

    :cond_12
    invoke-static {v10, v14}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v14, "=\""

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_b

    :cond_14
    :goto_a
    if-nez v15, :cond_15

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v14, "=\"\""

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v14, "=\""

    invoke-virtual {v8, v14}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    :cond_16
    :goto_c
    if-eqz v5, :cond_17

    invoke-static {v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v4, 0x1

    :cond_17
    if-eqz v11, :cond_1a

    iget-object v3, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_e

    :cond_18
    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_19

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v11, "xmlns=\""

    invoke-virtual {v8, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_d

    :cond_19
    iget-object v11, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v13, "xmlns:"

    invoke-virtual {v11, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v11, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v11, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v11, "=\""

    invoke-virtual {v8, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_d

    :cond_1a
    :goto_e
    invoke-virtual {v1, v0, v2, v10, v4}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    if-eqz v5, :cond_1c

    const-string v2, "A"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "TD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    iput-boolean v6, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v2, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1c
    if-eqz v5, :cond_1f

    const-string v2, "SCRIPT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "STYLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    :cond_1f
    :goto_f
    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "http://apache.org/xml/serializer"

    const-string v3, "NoWriterSupplied"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v2

    const/16 v3, 0x3e

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    :goto_0
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    move v4, v2

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    const/16 v8, 0x22

    if-eqz v7, :cond_7

    if-nez v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "=\"\""

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v5, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    const-string v6, ""

    :cond_8
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {p1, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v5, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_a
    invoke-static {p1, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v5, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_4
    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result p2

    const/4 v4, 0x1

    if-eqz p2, :cond_d

    move v0, v4

    :cond_d
    invoke-virtual {p0, v1, v1, p1, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "TD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iput-boolean v2, p2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_f
    const-string v0, "SCRIPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "STYLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    iget-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_11

    iput-boolean v4, p2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    goto :goto_5

    :cond_11
    iput-boolean v4, p2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    :cond_12
    :goto_5
    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "http://apache.org/xml/serializer"

    const-string v0, "NoWriterSupplied"

    invoke-static {p2, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
