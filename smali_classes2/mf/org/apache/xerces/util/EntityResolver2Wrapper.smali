.class public Lmf/org/apache/xerces/util/EntityResolver2Wrapper;
.super Ljava/lang/Object;
.source "EntityResolver2Wrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/ExternalSubsetResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    return-void
.end method

.method private createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 5

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v4, v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    return-object v0
.end method

.method public getExternalSubset(Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v2, v0, p1}, Lorg/xml/sax/ext/EntityResolver2;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    instance-of v4, p1, Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;

    if-eqz v4, :cond_0

    const-string p1, "[dtd]"

    goto :goto_0

    :cond_0
    instance-of v4, p1, Lmf/org/apache/xerces/impl/XMLEntityDescription;

    if-eqz v4, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/XMLEntityDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/XMLEntityDescription;->getEntityName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v4, p1, v0, v3, v2}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v3}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_5
    return-object v1
.end method

.method public setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    return-void
.end method
