.class public Lmf/org/apache/xml/resolver/tools/CatalogResolver;
.super Ljava/lang/Object;
.source "CatalogResolver.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lmf/javax/xml/transform/URIResolver;


# instance fields
.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field public namespaceAware:Z

.field public validating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method private initializeCatalogs(Z)V
    .locals 0

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method private makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object p1
.end method

.method private setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-virtual {p1, v0}, Lmf/javax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "Catalog resolution attempted with null catalog; ignored"

    invoke-virtual {p1, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v0, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "I/O exception trying to resolve"

    invoke-virtual {v0, v2, v3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Malformed URL exception trying to resolve"

    invoke-virtual {v0, v2, v3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, p2

    goto :goto_1

    :catch_2
    iget-object p2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p2, p2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "I/O exception trying to resolve"

    invoke-virtual {p2, v2, v3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    iget-object p2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p2, p2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Malformed URL exception trying to resolve"

    invoke-virtual {p2, v2, v3, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget-object p2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p2, p2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v2, "Resolved public"

    invoke-virtual {p2, v0, v2, p1, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v2, "Resolved system"

    invoke-virtual {p1, v0, v2, p2, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_4

    if-nez p2, :cond_1

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v1, Lmf/javax/xml/transform/TransformerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(base "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_2
    iget-object p2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p2, p2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v1, 0x2

    const-string v2, "Resolved URI"

    invoke-virtual {p2, v1, v2, p1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-direct {p1}, Lmf/javax/xml/transform/sax/SAXSource;-><init>()V

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lmf/javax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V

    return-object p1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create InputSource ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v0
.end method
