.class public Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
.super Ljava/lang/Object;
.source "XSAnnotationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAnnotation;


# instance fields
.field private fData:Ljava/lang/String;

.field private fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method

.method private declared-synchronized writeToDOM(Lmf/org/w3c/dom/Node;S)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Lmf/org/w3c/dom/Document;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;

    move-result-object v1

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lmf/org/apache/xerces/parsers/DOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/parsers/DOMParser;->dropDocumentReferences()V

    invoke-interface {v2}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v1

    instance-of v2, p2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lmf/org/w3c/dom/Document;->adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p2, v1, v0}, Lmf/org/w3c/dom/Document;->importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1, v0}, Lmf/org/w3c/dom/Document;->importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeToSAX(Lorg/xml/sax/ContentHandler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAnnotationString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public writeAnnotation(Ljava/lang/Object;S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    check-cast p1, Lorg/xml/sax/ContentHandler;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->writeToSAX(Lorg/xml/sax/ContentHandler;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    check-cast p1, Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->writeToDOM(Lmf/org/w3c/dom/Node;S)V

    return v0
.end method
