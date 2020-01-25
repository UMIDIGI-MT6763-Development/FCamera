.class public Lmf/org/apache/xml/resolver/readers/XCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "XCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# instance fields
.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

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

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

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

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const-string p3, "Base"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    sget p3, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    const-string v2, "HRef"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Base"

    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v1, v3, p4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p3, "Delegate"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string v2, "PublicID"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "HRef"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Delegate"

    const-string v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HRef"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v1, v3, v4, p4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p3, "Extend"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget p3, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string v2, "HRef"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Extend"

    const-string v4, "HRef"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v1, v3, p4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, "Map"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget p3, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string v2, "PublicID"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "HRef"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Map"

    const-string v4, "PublicID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HRef"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v1, v3, v4, p4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p3, "Remap"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p3, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string v2, "SystemID"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "HRef"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v3, "Remap"

    const-string v4, "SystemID"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HRef"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v1, v3, v4, p4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p3, "XCatalog"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p4, "Invalid catalog entry type"

    invoke-virtual {p3, v0, p4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p3, -0x1

    :goto_0
    if-ltz p3, :cond_7

    :try_start_0
    new-instance p4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {p4, p3, p1}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1, p4}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_6

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry type"

    invoke-virtual {p1, v0, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_7

    iget-object p1, p0, Lmf/org/apache/xml/resolver/readers/XCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry"

    invoke-virtual {p1, v0, p3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
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
