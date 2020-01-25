.class final Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;
.super Ljava/lang/Object;
.source "DOMResultAugmentor.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fDocument:Lmf/org/w3c/dom/Document;

.field private fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private fIgnoreChars:Z

.field private fStorePSVI:Z


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    return-void
.end method

.method private processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast p2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public cdata(Lmf/org/w3c/dom/CDATASection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lmf/org/w3c/dom/Element;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Element;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public characters(Lmf/org/w3c/dom/Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

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

.method public doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_2

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
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

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v0, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :cond_1
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of p1, p1, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    return-void

    :cond_2
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p3

    invoke-interface {p3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v5

    const-string v6, "ATTRIBUTE_PSVI"

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5, v4, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    if-le p3, v0, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-nez v1, :cond_4

    :goto_2
    if-lt v0, p3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-lt v0, p3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string v5, "ATTRIBUTE_PSVI"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v4, :cond_6

    invoke-direct {p0, v1, v4}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/xs/AttributePSVI;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v4, v1, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_6
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
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
