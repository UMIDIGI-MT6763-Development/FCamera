.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;
.super Ljava/lang/Object;
.source "ValidatorHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResolutionForwarder"
.end annotation


# static fields
.field private static final XML_TYPE:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"


# instance fields
.field protected fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method private resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p1
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p1

    return-object p1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    const-string v1, "http://www.w3.org/TR/REC-xml"

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-virtual {v3, p2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v3, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_3
    :goto_0
    invoke-virtual {v3, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    return-object v3

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-void
.end method
