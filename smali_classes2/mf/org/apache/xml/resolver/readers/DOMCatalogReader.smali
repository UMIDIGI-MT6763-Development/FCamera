.class public Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;
.super Ljava/lang/Object;
.source "DOMCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;


# instance fields
.field protected namespaceMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    invoke-static {}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v0, p2}, Lmf/javax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lmf/org/w3c/dom/Document;

    move-result-object p2
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    invoke-interface {p2}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object p2

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getLocalName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No Catalog parser for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No Catalog parser for {"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {p2}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/DOMCatalogParser;->parseCatalogEntry(Lmf/org/apache/xml/resolver/Catalog;Lmf/org/w3c/dom/Node;)V

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_1

    :catch_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Cannot cast XML Catalog Parser class"

    invoke-virtual {p1, v4, p2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_1
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Cannot access XML Catalog Parser class"

    invoke-virtual {p1, v4, p2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_2
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Cannot instantiate XML Catalog Parser class"

    invoke-virtual {p1, v4, p2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_3
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Cannot load XML Catalog Parser class"

    invoke-virtual {p1, v4, p2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_4
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_5
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V

    return-void
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/DOMCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
