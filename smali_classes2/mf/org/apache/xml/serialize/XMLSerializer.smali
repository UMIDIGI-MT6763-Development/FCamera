.class public Lmf/org/apache/xml/serialize/XMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "XMLSerializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

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
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "xml"

    invoke-virtual {p2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
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
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "xml"

    invoke-virtual {p2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method private extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const-string v2, ""

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_3

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-short p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    and-int/lit8 p3, p3, 0x40

    if-nez p3, :cond_2

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {p3}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {p3, p4}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :cond_1
    :goto_0
    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p3}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p3, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p4, "=\""

    invoke-virtual {p3, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p4, 0x22

    invoke-virtual {p3, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_2
    const-string p3, "xml:space"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "preserve"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result p1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void
.end method


# virtual methods
.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The replacement text of the entity node \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' contains an element node \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' with an undeclared prefix \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v2}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto :goto_6

    :cond_4
    invoke-interface {v2, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    if-eqz v4, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The replacement text of the entity node \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' contains an element node \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' with an attribute \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' an undeclared prefix \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    :goto_7
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    iget-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p2, "/>"

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p3, "]]>"

    invoke-virtual {p2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    iget-boolean p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez p2, :cond_3

    iget-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string p3, "</"

    invoke-virtual {p2, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object p1, p1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean p2, p1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_4
    return-void
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "apos"

    return-object p1

    :pswitch_1
    const-string p1, "amp"

    return-object p1

    :cond_0
    const-string p1, "gt"

    return-object p1

    :cond_1
    const-string p1, "lt"

    return-object p1

    :cond_2
    const-string p1, "quot"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_2

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x26

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v4, 0x22

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x20

    if-lt v3, v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, p2, v3, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

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

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, p2, v3, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

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

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    move p3, v1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

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

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_6

    add-int/lit8 p4, p3, 0x1

    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    move p3, v1

    goto :goto_2

    :cond_7
    if-eqz p5, :cond_8

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :goto_4
    move p2, p3

    move p3, p4

    goto :goto_2
.end method

.method protected printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&lt;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&amp;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "&gt;"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    return-void
.end method

.method public reset()Z
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_2
    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]>"

    invoke-virtual {v3, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v4, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_3
    iget-boolean v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_5
    :goto_0
    iget-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    goto :goto_1

    :cond_6
    move v6, v4

    move-object v3, v5

    :goto_1
    iget-boolean v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/16 v8, 0x3c

    const/4 v9, 0x1

    if-nez v7, :cond_9

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    move v7, v4

    :goto_2
    if-lt v7, v6, :cond_7

    move-object/from16 v11, p1

    goto/16 :goto_9

    :cond_7
    invoke-interface {v3, v7}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/w3c/dom/Attr;

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v11, ""

    :cond_8
    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v12

    invoke-direct {v0, v10, v11, v12, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    move v7, v4

    :goto_3
    const/4 v10, 0x2

    if-lt v7, v6, :cond_33

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_a

    iget-object v11, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v11, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    move-object v11, v5

    goto :goto_4

    :cond_a
    iget-object v12, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    :goto_4
    if-eqz v7, :cond_f

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    iget-object v11, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v8}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eq v11, v7, :cond_e

    iget-boolean v11, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v11, :cond_d

    invoke-direct {v0, v8, v7}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v11, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v8, v7}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v11, v8, v7}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v11, p1

    goto/16 :goto_7

    :cond_e
    move-object/from16 v11, p1

    goto :goto_7

    :cond_f
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_11

    const-string v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NullLocalElementName"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v7, v8, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, p1

    invoke-virtual {v0, v7, v10, v5, v11}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_7

    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "http://apache.org/xml/serializer"

    const-string v3, "SerializationStopped"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v11, p1

    goto :goto_7

    :cond_12
    move-object/from16 v11, p1

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    iget-boolean v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v7, :cond_13

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8, v12}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8, v12}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    :goto_7
    move v7, v4

    :goto_8
    if-lt v7, v6, :cond_1a

    :goto_9
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    invoke-virtual {v0, v5, v5, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v2

    iget-object v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v3, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_a
    if-nez v2, :cond_16

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_15
    invoke-virtual {v0, v5, v5, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_a

    :cond_17
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_18
    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "/>"

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v9, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v4, v2, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v4, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_19
    :goto_b
    return-void

    :cond_1a
    invoke-interface {v3, v7}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/w3c/dom/Attr;

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1b

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v5

    :cond_1b
    if-nez v12, :cond_1c

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1c
    if-eqz v14, :cond_2f

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1d

    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_c

    :cond_1d
    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_c
    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v14, :cond_26

    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_d

    :cond_1e
    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_1f
    :goto_d
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_e
    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v10, :cond_23

    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_22

    if-nez v5, :cond_21

    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v5, :cond_20

    invoke-direct {v0, v8, v10}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v5, v8, v10}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move v15, v4

    goto/16 :goto_14

    :cond_21
    move v15, v4

    goto/16 :goto_14

    :cond_22
    move v15, v4

    goto/16 :goto_14

    :cond_23
    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_25

    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v5, :cond_24

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v4

    goto/16 :goto_14

    :cond_24
    move v15, v4

    goto/16 :goto_14

    :cond_25
    move v15, v4

    goto/16 :goto_14

    :cond_26
    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v14}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v15, v4, :cond_27

    if-eq v14, v10, :cond_2c

    :cond_27
    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v10}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_28

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v13, v14, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_12

    :cond_28
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v15, v13, :cond_2a

    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v15}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_29

    goto :goto_f

    :cond_29
    move-object v13, v4

    goto :goto_11

    :cond_2a
    :goto_f
    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "NS"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    const/4 v4, 0x2

    :goto_10
    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v13, v15}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    :goto_11
    iget-boolean v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    if-eqz v4, :cond_2b

    invoke-direct {v0, v15, v10}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v15, v12}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v15, v10}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2c
    :goto_12
    if-nez v12, :cond_2d

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_2d
    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v4

    invoke-direct {v0, v13, v12, v4, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    const/4 v15, 0x0

    goto :goto_14

    :cond_2e
    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "NS"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v15

    move-object v15, v4

    move/from16 v4, v16

    goto :goto_10

    :cond_2f
    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_31

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalAttrName"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    invoke-static {v4, v5, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x2

    invoke-virtual {v0, v4, v10, v5, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v10}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_13

    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "http://apache.org/xml/serializer"

    const-string v3, "SerializationStopped"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    const/4 v15, 0x0

    :goto_13
    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v4

    invoke-direct {v0, v13, v12, v4, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto :goto_14

    :cond_32
    const/4 v15, 0x0

    invoke-interface {v8}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v4

    invoke-direct {v0, v13, v12, v4, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    :goto_14
    add-int/lit8 v7, v7, 0x1

    move v4, v15

    const/4 v5, 0x0

    const/4 v10, 0x2

    goto/16 :goto_8

    :cond_33
    move-object/from16 v11, p1

    move v15, v4

    invoke-interface {v3, v7}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_34
    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_36

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "CantBindXMLNS"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    invoke-virtual {v0, v5, v10, v12, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_17

    :cond_35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "http://apache.org/xml/serializer"

    const-string v3, "SerializationStopped"

    invoke-static {v2, v3, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    const/4 v12, 0x0

    goto :goto_17

    :cond_37
    const/4 v12, 0x0

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_38

    goto :goto_15

    :cond_38
    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v13, v10}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_16

    :cond_39
    :goto_15
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_16
    iget-object v13, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v10, v13, :cond_3a

    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v10, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3c

    iget-object v10, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v10, v4, v5}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_17

    :cond_3a
    iget-object v4, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5, v10, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_17

    :cond_3b
    const/4 v12, 0x0

    :cond_3c
    :goto_17
    add-int/lit8 v7, v7, 0x1

    move-object v5, v12

    move v4, v15

    goto/16 :goto_3
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance p1, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :cond_0
    return-void
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v0, "xml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "<?xml version=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v3, "1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, " encoding=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, " standalone=\"yes\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v3, "?>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "<!DOCTYPE "

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, " PUBLIC "

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    if-lt v1, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, " "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, " SYSTEM "

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "<!DOCTYPE "

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v0, "]>"

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_9
    :goto_4
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v2, :cond_6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p3

    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "]]>"

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_6
    :goto_2
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    invoke-direct {p0, p4}, Lmf/org/apache/xml/serialize/XMLSerializer;->extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object p4

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    if-eqz p2, :cond_16

    if-eqz p1, :cond_8

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ":"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_8
    move-object p3, p2

    :cond_9
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    const/16 v1, 0x22

    if-eqz p4, :cond_10

    :goto_4
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v3, v2, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, ""

    :cond_d
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const-string v5, "xml:space"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "preserve"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    :cond_f
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_10
    :goto_6
    iget-object p4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz p4, :cond_13

    iget-object p4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_8

    :cond_11
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "xmlns=\""

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_7

    :cond_12
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_7

    :cond_13
    :goto_8
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p4

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "^"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_15
    :goto_9
    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p4, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p4, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_16
    const-string p1, "http://apache.org/xml/serializer"

    const-string p2, "NoName"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_17
    const-string p1, "http://apache.org/xml/serializer"

    const-string p2, "NoWriterSupplied"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "]]>"

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    :goto_0
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-eqz p2, :cond_9

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v2

    if-lt v3, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v3}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_6
    const-string v5, "xml:space"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "preserve"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v0

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    invoke-virtual {p0, v1, v1, p1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_a
    const-string p1, "http://apache.org/xml/serializer"

    const-string p2, "NoWriterSupplied"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
