.class final Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;
.super Ljava/lang/Object;
.source "StAXStreamResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;


# instance fields
.field private final fAttrName:Lmf/org/apache/xerces/xni/QName;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-void
.end method


# virtual methods
.method public cdata(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    return-void
.end method

.method public characters(Lmf/javax/xml/stream/events/Characters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    if-nez p2, :cond_1

    :try_start_0
    iget-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Lmf/javax/xml/stream/events/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "1.0"

    :goto_1
    invoke-interface {v1, p1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "1.0"

    :goto_1
    invoke-interface {v1, p1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {p3, v0, v1, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p3, p1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result p1

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, p1, :cond_7

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p1

    :goto_3
    if-lt v0, p1, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_5

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v2, ""

    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v1, v2, v3, v4}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v2, v3}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    const-string v3, ""

    :goto_6
    invoke-interface {v2, v3}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    const-string v3, ""

    :goto_7
    invoke-interface {v4, v2, v3}, Lmf/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
