.class public Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "OASISXMLCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# static fields
.field public static final namespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:xml:catalog"

.field public static final tr9401NamespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"


# instance fields
.field protected baseURIStack:Ljava/util/Stack;

.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected namespaceStack:Ljava/util/Stack;

.field protected overrideStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 3

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: required attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " missing."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const-string v5, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {p3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "(reset) xml:base"

    invoke-virtual {v7, v3, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v6, v5, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    if-ne v6, v2, :cond_1

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry type"

    invoke-virtual {v5, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry (rbase)"

    invoke-virtual {v5, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    const-string v5, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    const-string p1, "catalog"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "group"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget p1, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "(reset) override"

    invoke-virtual {v5, v3, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v0, p1, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1, v0}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v2, :cond_4

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry type"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry (roverride)"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

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

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected inExtensionNamespace()Z
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const-string v4, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getCurrentBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz p1, :cond_16

    const-string v6, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-nez v0, :cond_16

    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "xml:base"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {p3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v9, "xml:base"

    invoke-virtual {v8, v5, v9, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v6, v7, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p3, v6}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    if-ne v6, v3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry type"

    invoke-virtual {p3, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v2, :cond_1

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry (base)"

    invoke-virtual {p3, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v6, "catalog"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "group"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_3
    const-string v6, "prefer"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v6, "prefer"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "public"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "yes"

    goto :goto_2

    :cond_4
    const-string v7, "system"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "no"

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v7, "Invalid prefer: must be \'system\' or \'public\'"

    invoke-virtual {v6, v4, v7, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v6}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget v7, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {p3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v8, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v9, "override"

    invoke-virtual {v8, v5, v9, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v6, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v6, v7, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p3, v6}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p3

    invoke-virtual {p3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v6

    if-ne v6, v3, :cond_6

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry type"

    invoke-virtual {p3, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v2, :cond_7

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v6, "Invalid catalog entry (override)"

    invoke-virtual {p3, v4, v6, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string v6, "delegatePublic"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "publicIdStartString"

    const-string v7, "catalog"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string v7, "publicIdStartString"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "catalog"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "delegatePublic"

    const-string v9, "publicIdStartString"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "catalog"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    const-string v6, "delegateSystem"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "systemIdStartString"

    const-string v7, "catalog"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    const-string v7, "systemIdStartString"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "catalog"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "delegateSystem"

    const-string v9, "systemIdStartString"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "catalog"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const-string v6, "delegateURI"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "uriStartString"

    const-string v7, "catalog"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    const-string v7, "uriStartString"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "catalog"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "delegateURI"

    const-string v9, "uriStartString"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "catalog"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    const-string v6, "rewriteSystem"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "systemIdStartString"

    const-string v7, "rewritePrefix"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    const-string v7, "systemIdStartString"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "rewritePrefix"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "rewriteSystem"

    const-string v9, "systemIdStartString"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rewritePrefix"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    const-string v6, "systemSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "systemIdSuffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    const-string v7, "systemIdSuffix"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "systemSuffix"

    const-string v9, "systemIdSuffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const-string v6, "rewriteURI"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "uriStartString"

    const-string v7, "rewritePrefix"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    const-string v7, "uriStartString"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "rewritePrefix"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "rewriteURI"

    const-string v9, "uriStartString"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rewritePrefix"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string v6, "uriSuffix"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "uriSuffix"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    const-string v7, "uriSuffix"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "uriSuffix"

    const-string v9, "uriSuffix"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v6, "nextCatalog"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "catalog"

    invoke-virtual {p0, p4, v6}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string v7, "catalog"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "nextCatalog"

    const-string v9, "catalog"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string v6, "public"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "publicId"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string v7, "publicId"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "public"

    const-string v9, "publicId"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const-string v6, "system"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "systemId"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string v7, "systemId"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "system"

    const-string v9, "systemId"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    const-string v6, "uri"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "name"

    const-string v7, "uri"

    invoke-virtual {p0, p4, v6, v7}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget v6, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    const-string v7, "name"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "uri"

    const-string v9, "name"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    const-string v6, "catalog"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "group"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v7, "Invalid catalog entry type"

    invoke-virtual {v6, v4, v7, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    move v6, v1

    :goto_5
    if-ltz v6, :cond_17

    :try_start_2
    new-instance v7, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v7, v6, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v7}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    if-ne v8, v3, :cond_15

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry type"

    invoke-virtual {v7, v4, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v7

    if-ne v7, v2, :cond_17

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry"

    invoke-virtual {v7, v4, v8, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    move v6, v1

    :cond_17
    :goto_6
    if-eqz p1, :cond_23

    const-string v7, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    if-nez v0, :cond_23

    const-string p1, "xml:base"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string p1, "xml:base"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v7, "xml:base"

    invoke-virtual {v6, v5, v7, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {p1, v0, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p3, p1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v3, :cond_18

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry type"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v2, :cond_19

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry (base)"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_7
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    goto :goto_8

    :cond_1a
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    :goto_8
    const-string p1, "doctype"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1b
    const-string p1, "document"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1c
    const-string p1, "dtddecl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    const-string p1, "publicId"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1d
    const-string p1, "entity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    const-string p1, "linktype"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    const-string p1, "notation"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    const-string p1, "sgmldecl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    const-string p1, "uri"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p4, "Invalid catalog entry type"

    invoke-virtual {p1, v4, p4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_9
    if-ltz v1, :cond_23

    :try_start_4
    new-instance p1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {p1, v1, p3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p3, p1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v3, :cond_22

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry type"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v2, :cond_23

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry"

    invoke-virtual {p1, v4, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_a
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
