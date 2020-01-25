.class public Lmf/org/apache/xml/serialize/TextSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "TextSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "text"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v0, p2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lmf/org/apache/xml/serialize/TextSerializer;->printText(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public characters([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xml/serialize/TextSerializer;->printText([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public comment([CII)V
    .locals 0

    return-void
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    :cond_0
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_1
    return-object v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/TextSerializer;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public endElementIO(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_0
    return-void
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v2}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 p1, 0x0

    iput-boolean p1, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_4
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    :cond_1
    :goto_1
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "text"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    iget-boolean p2, p2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
