.class final Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;
.super Ljava/lang/Object;
.source "DOMResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;


# static fields
.field private static final kidOK:[I


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDocument:Lmf/org/w3c/dom/Document;

.field private fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private fFragmentRoot:Lmf/org/w3c/dom/Node;

.field private fIgnoreChars:Z

.field private fNextSibling:Lmf/org/w3c/dom/Node;

.field private fStorePSVI:Z

.field private fTarget:Lmf/org/w3c/dom/Node;

.field private final fTargetChildren:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1ba

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method

.method private append(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cdata(Lmf/org/w3c/dom/CDATASection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    :cond_0
    return-void
.end method

.method public characters(Lmf/org/w3c/dom/Text;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

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

.method public comment(Lmf/org/w3c/dom/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

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

.method public doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    :goto_1
    if-lt v4, v8, :cond_1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    goto :goto_2

    :cond_1
    invoke-interface {v6, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Notation;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Notation;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {v7, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v5}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/Entity;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v6}, Lmf/org/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-interface {v6}, Lmf/org/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {v6}, Lmf/org/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {v6}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    if-lt v1, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, p1, :cond_2

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    invoke-interface {v0, v2, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p1, :cond_2

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p2, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    return-void

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void
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

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

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

.method public processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v1, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of p1, p1, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    return-void

    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

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

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lmf/org/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    :goto_0
    if-lt v1, p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v0, v3}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    :goto_1
    if-lt v1, p3, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    if-nez p1, :cond_2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v3, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0, p1, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0, p1, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_6
    :goto_3
    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
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
