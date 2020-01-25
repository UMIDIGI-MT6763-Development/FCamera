.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "ResolvingXMLFilter.java"


# static fields
.field public static suppressExplanation:Z = false


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private oasisXMLCatalogPI:Z

.field private piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance p1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p1, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    new-instance p1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p1, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    iput-object p2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance p1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object p2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XMLReader probably encountered bad URI in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    return-void
.end method

.method private setupBaseURI(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "basename"

    invoke-static {v1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    :goto_1
    return-void
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "oasis-xml-catalog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    const-string v0, "catalog="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    invoke-direct {v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v2, p1

    :goto_0
    iget-boolean p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result p1

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "oasis-xml-catalog PI"

    invoke-virtual {p1, v3, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    :try_start_1
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p2, "oasis-xml-catalog"

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, p2, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-nez p1, :cond_2

    new-instance p1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-direct {p1, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception parsing oasis-xml-catalog: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PI oasis-xml-catalog unparseable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PI oasis-xml-catalog ignored: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

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

    invoke-virtual {v1, v2, p1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    return-object p2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
