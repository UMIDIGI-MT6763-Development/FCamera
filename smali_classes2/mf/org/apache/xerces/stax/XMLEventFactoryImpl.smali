.class public final Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;
.super Lmf/javax/xml/stream/XMLEventFactory;
.source "XMLEventFactoryImpl.java"


# instance fields
.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/javax/xml/stream/XMLEventFactory;-><init>()V

    return-void
.end method

.method private createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;
    .locals 7

    new-instance v6, Lmf/org/apache/xerces/stax/events/StartElementImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/stax/events/StartElementImpl;-><init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;Lmf/javax/xml/stream/Location;)V

    return-object v6
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Lmf/javax/xml/namespace/QName;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Lmf/javax/xml/namespace/QName;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public createAttribute(Lmf/javax/xml/namespace/QName;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
    .locals 7

    new-instance v6, Lmf/org/apache/xerces/stax/events/AttributeImpl;

    const-string v3, "CDATA"

    iget-object v5, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/stax/events/AttributeImpl;-><init>(Lmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V

    return-object v6
.end method

.method public createCData(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/stax/events/CharactersImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    const/16 v2, 0xc

    invoke-direct {v0, p1, v2, v1}, Lmf/org/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/stax/events/CharactersImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2, v1}, Lmf/org/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lmf/javax/xml/stream/events/Comment;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/CommentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/stax/events/CommentImpl;-><init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Lmf/javax/xml/stream/events/DTD;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/DTDImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/stax/events/DTDImpl;-><init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEndDocument()Lmf/javax/xml/stream/events/EndDocument;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/EndDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/stax/events/EndDocumentImpl;-><init>(Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/EndElement;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;

    move-result-object p1

    return-object p1
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;

    move-result-object p1

    return-object p1
.end method

.method public createEndElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/EndElementImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/stax/events/EndElementImpl;-><init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;)Lmf/javax/xml/stream/events/EntityReference;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/stax/events/CharactersImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    const/4 v2, 0x6

    invoke-direct {v0, p1, v2, v1}, Lmf/org/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;

    move-result-object p1

    return-object p1
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/stax/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/ProcessingInstruction;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createCharacters(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;

    move-result-object p1

    return-object p1
.end method

.method public createStartDocument()Lmf/javax/xml/stream/events/StartDocument;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;

    move-result-object v0

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;

    move-result-object p1

    return-object p1
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;
    .locals 8

    new-instance v7, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v7
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lmf/javax/xml/stream/events/StartDocument;
    .locals 8

    new-instance v7, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const/4 v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    move-object v0, v7

    move-object v1, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Lmf/javax/xml/stream/Location;)V

    return-object v7
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartElement;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4, p5}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;
    .locals 1

    new-instance v0, Lmf/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, p5, p6}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public setLocation(Lmf/javax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Lmf/javax/xml/stream/Location;

    return-void
.end method