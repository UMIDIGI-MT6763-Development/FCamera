.class public Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.super Ljava/lang/Object;
.source "SAXCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field private abandonHope:Z

.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private loader:Ljava/lang/ClassLoader;

.field protected namespaceMap:Ljava/util/Hashtable;

.field protected parserClass:Ljava/lang/String;

.field protected parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

.field private saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->characters([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

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

.method public getParserClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-object v0
.end method

.method public getParserFactory()Lmf/javax/xml/parsers/SAXParserFactory;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->ignorableWhitespace([CII)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Cannot read SAX catalog without a parser"

    invoke-virtual {p1, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    move-result-object v0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    invoke-virtual {p1}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object p1

    new-instance v1, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;

    invoke-direct {v1}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;-><init>()V

    invoke-virtual {v1, p0}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, v1}, Lmf/javax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_1
    invoke-static {p1, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xml/sax/Parser;

    invoke-interface {p1, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_5
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x7

    if-eq v2, v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_7

    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p2, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p2, p1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_2
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_3
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1

    :catch_4
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {p1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw p1
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p2

    iget-object p2, p2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 p2, 0x1

    const-string v1, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

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

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setParserClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public setParserFactory(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No Catalog parser for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "No Catalog parser for {"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :goto_1
    invoke-static {v0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v0, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p1

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :goto_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_7

    const-string v0, ""

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "xmlns"

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "xmlns:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez v0, :cond_4

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No Catalog parser for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No Catalog parser for {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :goto_3
    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v1, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object p2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :goto_4
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
