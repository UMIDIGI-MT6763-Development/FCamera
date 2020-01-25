.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XNI2SAX"
.end annotation


# instance fields
.field private final fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/AttributesProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/AttributesProxy;-><init>(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p2, 0x0

    :goto_1
    if-lt p2, p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, p2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance p3, Lmf/org/apache/xerces/util/LocatorProxy;

    invoke-direct {p3, p1}, Lmf/org/apache/xerces/util/LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {p3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result p3

    if-lez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-interface {v3, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p3, ""

    :goto_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-interface {p2, p3, v0, p1, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fVersion:Ljava/lang/String;

    return-void
.end method
