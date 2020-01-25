.class public Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "AbstractDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;
    }
.end annotation


# static fields
.field protected static final CORE_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.CoreDocumentImpl"

.field protected static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field protected static final CREATE_ENTITY_REF_NODES:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field protected static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final DEBUG_BASEURI:Z = false

.field private static final DEBUG_EVENTS:Z = false

.field protected static final DEFAULT_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.DocumentImpl"

.field protected static final DEFER_NODE_EXPANSION:Ljava/lang/String; = "http://apache.org/xml/features/dom/defer-node-expansion"

.field protected static final DOCUMENT_CLASS_NAME:Ljava/lang/String; = "http://apache.org/xml/properties/dom/document-class-name"

.field protected static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field protected static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PSVI_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.PSVIDocumentImpl"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;


# instance fields
.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fBaseURIStack:Ljava/util/Stack;

.field protected fCreateCDATANodes:Z

.field protected fCreateEntityRefNodes:Z

.field protected fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

.field protected fCurrentCDATASectionIndex:I

.field protected fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fCurrentNodeIndex:I

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

.field protected fDeferNodeExpansion:Z

.field protected fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

.field protected fDeferredEntityDecl:I

.field protected fDocument:Lmf/org/w3c/dom/Document;

.field protected fDocumentClassName:Ljava/lang/String;

.field protected fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field protected fDocumentIndex:I

.field protected fDocumentType:Lmf/org/w3c/dom/DocumentType;

.field protected fDocumentTypeIndex:I

.field protected fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fFilterReject:Z

.field protected fFirstChunk:Z

.field protected fInCDATASection:Z

.field protected fInDTD:Z

.field protected fInDTDExternalSubset:Z

.field protected fInEntityRef:Z

.field protected fIncludeComments:Z

.field protected fIncludeIgnorableWhitespace:Z

.field protected fInternalSubset:Ljava/lang/StringBuffer;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceAware:Z

.field protected fRejectedElementDepth:I

.field protected fRoot:Lmf/org/w3c/dom/Node;

.field protected fSkippedElemStack:Ljava/util/Stack;

.field protected fStorePSVI:Z

.field protected final fStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const-string v2, "http://apache.org/xml/features/include-comments"

    const-string v3, "http://apache.org/xml/features/create-cdata-nodes"

    const-string v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const-string v5, "http://apache.org/xml/features/dom/defer-node-expansion"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v1, "http://apache.org/xml/properties/dom/current-element-node"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    iput v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v1, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 p8, 0x0

    if-eqz p7, :cond_7

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_7

    const-string v0, "<!ATTLIST "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p7, "ENUMERATION"

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_2

    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {p7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p7, p8

    :goto_0
    array-length v1, p4

    if-lt p7, v1, :cond_0

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p7, 0x29

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-lez p7, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    aget-object v2, p4, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz p5, :cond_3

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p6, :cond_6

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p5, " \'"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p4, p8

    :goto_2
    iget p5, p6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 p7, 0x27

    if-lt p4, p5, :cond_4

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    iget-object p5, p6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v0, p6, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v0, p4

    aget-char p5, p5, v0

    if-ne p5, p7, :cond_5

    iget-object p5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p7, "&apos;"

    invoke-virtual {p5, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p5, ">\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 p5, 0x0

    if-eqz p4, :cond_d

    if-eqz p6, :cond_14

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lookupElementDefinition(Ljava/lang/String;)I

    move-result p4

    const/4 p7, -0x1

    if-ne p4, p7, :cond_8

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElementDefinition(Ljava/lang/String;)I

    move-result p4

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p1, p7, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_8
    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p1, :cond_b

    const-string p1, "xmlns:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "xmlns"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const-string p1, "xml:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p5, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_6

    :cond_a
    :goto_5
    sget-object p5, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    :cond_b
    :goto_6
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p5, p6, p8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    const-string p2, "ID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setIdAttribute(I)V

    :cond_c
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p4, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_a

    :cond_d
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p4, :cond_14

    if-eqz p6, :cond_14

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast p4, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {p4}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p4

    invoke-interface {p4, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object p4

    check-cast p4, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    if-nez p4, :cond_e

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    move-result-object p4

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p4}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_e
    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p1, :cond_12

    const-string p7, "xmlns:"

    invoke-virtual {p2, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_10

    const-string p7, "xmlns"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_f

    goto :goto_7

    :cond_f
    const-string p7, "xml:"

    invoke-virtual {p2, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_11

    sget-object p5, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_8

    :cond_10
    :goto_7
    sget-object p5, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    :cond_11
    :goto_8
    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p7, p5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/dom/AttrImpl;

    goto :goto_9

    :cond_12
    iget-object p5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/dom/AttrImpl;

    :goto_9
    invoke-virtual {p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-virtual {p2, p8}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    const-string p5, "ID"

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    if-eqz p1, :cond_13

    invoke-virtual {p4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_a

    :cond_13
    invoke-virtual {p4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_14
    :goto_a
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x0

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-nez p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez p2, :cond_b

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast p2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/TextImpl;->removeData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast p2, Lmf/org/w3c/dom/Text;

    invoke-interface {p2}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lmf/org/w3c/dom/Text;->setNodeValue(Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    :cond_5
    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez p2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v0, v1, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/4 p2, 0x1

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_7
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p2, :cond_9

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredCDATASection(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_1

    :cond_9
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez p2, :cond_b

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez p2, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_b
    :goto_1
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_1

    const-string v0, "<!--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v0, v1, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p2, "-->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void

    :cond_2
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_5

    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    return-void

    :cond_4
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredComment(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lmf/org/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lmf/org/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p1, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dropDocumentReferences()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    const-string v0, "<!ELEMENT "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    goto :goto_1

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInternalSubset(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x0

    if-nez p1, :cond_a

    if-eqz p2, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p2, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq p1, p2, :cond_8

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_7

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void

    :cond_7
    invoke-interface {p2, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void

    :cond_8
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_c

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, v1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setTypeInfo(ILjava/lang/Object;)V

    :cond_c
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {p1, v1, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/EntityImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    :cond_3
    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move p1, v0

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_6
    :goto_2
    move p1, v1

    :goto_3
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_13

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v6, :cond_8

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, v4, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    :goto_4
    if-lt v0, v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, v3, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_d

    :cond_b
    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_e

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p2

    :goto_6
    if-ne p2, v2, :cond_c

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p2

    goto :goto_6

    :cond_e
    :goto_7
    iget p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    if-eq p1, v2, :cond_10

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    if-ne p1, v2, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    move p2, v2

    :goto_8
    if-ne p1, v2, :cond_f

    goto :goto_9

    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v4, v5, v3, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p1

    move p2, v3

    goto :goto_8

    :cond_10
    :goto_9
    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_c

    :cond_11
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p2

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v3, v0

    move v0, p1

    :goto_a
    if-ne v0, v2, :cond_14

    if-eq p1, v2, :cond_12

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    goto :goto_b

    :cond_12
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    :goto_b
    iput p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_c
    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    :cond_13
    :goto_d
    return-void

    :cond_14
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5, p2, v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move v3, v0

    move v0, v4

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v1, :cond_2

    const-string v1, "<!ENTITY "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "PUBLIC \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\' \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "SYSTEM \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\'>\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p3

    invoke-interface {p3, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p3

    :goto_2
    if-ne p3, v1, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v4, p3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p3

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    return-object v0
.end method

.method protected getDocumentClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected final handleBaseURI(I)V
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const-string v3, "xml:base"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const/4 v6, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string v1, "pi-base-uri-not-preserved"

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-short v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object p1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected final handleBaseURI(Lmf/org/w3c/dom/Node;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Element;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "base"

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Element;

    const-string v1, "xml:base"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v1, :cond_2

    check-cast p1, Lmf/org/w3c/dom/Element;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "xml:base"

    invoke-interface {p1, v1, v2, v0}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p1, Lmf/org/w3c/dom/Element;

    const-string v1, "xml:base"

    invoke-interface {p1, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p1, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string v2, "pi-base-uri-not-preserved"

    iput-object v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object p1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    check-cast p2, Lmf/org/w3c/dom/Text;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    :cond_2
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 p4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_4

    const-string v2, "<!ENTITY "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "% "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, p4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    if-eqz v2, :cond_2

    move v5, p3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move p3, v4

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p3, ">\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object p3

    check-cast p3, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez p3, :cond_6

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object p3

    check-cast p3, Lmf/org/apache/xerces/dom/EntityImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    iget p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    if-eq p2, v0, :cond_9

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p2

    :goto_4
    if-ne p2, v0, :cond_7

    move p4, v1

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result p3

    const/4 v2, 0x6

    if-ne p3, v2, :cond_8

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    :goto_5
    if-nez p4, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_6

    :cond_8
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p2

    goto :goto_4

    :cond_9
    :goto_6
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_2

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, " SYSTEM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\'>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-virtual {v2, p3}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/NotationImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v1

    :goto_1
    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p3, v0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_1

    const-string v0, "<?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p3, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v0, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p2, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p1, p3, v0, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void

    :cond_2
    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p2, :cond_5

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez p3, :cond_5

    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    return-void

    :cond_4
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setDocumentClassName(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    const/4 v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    return-void
.end method

.method protected setCharacterData(Z)V
    .locals 3

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lez v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/TextImpl;->replaceData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Text;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Text;->setData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setDocumentClassName(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "mf.org.apache.xerces.dom.DocumentImpl"

    :cond_0
    const-string v0, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lmf/org/w3c/dom/Document;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "InvalidDocumentClassName"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v1, "MissingDocumentClassName"

    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string v0, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    :cond_3
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

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

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    :cond_1
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string p4, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {p3}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast p3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string v0, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    invoke-direct {p3}, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;-><init>()V

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast p3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    invoke-static {v1, p3, v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Document;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    const-string v2, "mf.org.apache.xerces.dom.CoreDocumentImpl"

    invoke-static {v2, p3, v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const-string v2, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-static {v2, p3, v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    :cond_2
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v0, [Ljava/lang/Object;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    aput-object p3, p2, p4

    const-string p3, "http://www.w3.org/dom/DOMTR"

    const-string p4, "CannotCreateDocumentClass"

    invoke-static {p3, p4, p2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    :cond_3
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_4
    new-instance p3, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    invoke-direct {p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocument()I

    move-result p3

    iput p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    iget p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_1
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/2addr p1, v3

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    move p1, v2

    move v5, p1

    :goto_0
    if-lt p1, v4, :cond_5

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    if-eqz p3, :cond_2

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p3, p1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    move-object p1, v0

    check-cast p1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez p2, :cond_3

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/ls/LSParserFilter;->startElement(Lmf/org/w3c/dom/Element;)S

    move-result p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw p1

    :pswitch_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_7

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, p1, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;

    move-result-object v6

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v8

    const-string v9, "ATTRIBUTE_PSVI"

    invoke-interface {v8, v9}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/xs/AttributePSVI;

    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    move-object v9, v6

    check-cast v9, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v9, v8}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_6
    invoke-interface {v6, v7}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v5, :cond_7

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_8

    :cond_7
    invoke-interface {v0, v6}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    move v5, v3

    goto :goto_2

    :cond_8
    invoke-interface {v0, v6}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v9, :cond_e

    move-object v9, v6

    check-cast v9, Lmf/org/apache/xerces/dom/AttrImpl;

    if-eqz v8, :cond_b

    iget-boolean v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v10, :cond_b

    invoke-interface {v8}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v10

    if-nez v10, :cond_a

    invoke-interface {v8}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    if-eqz v8, :cond_9

    move-object v10, v8

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v10

    invoke-virtual {v9, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    move v10, v2

    goto :goto_4

    :cond_a
    move-object v8, v10

    check-cast v8, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v8}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move v10, v8

    goto :goto_4

    :cond_b
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v10

    const-string v11, "ATTRIBUTE_DECLARED"

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ID"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_3

    :cond_c
    move-object v8, v1

    move v10, v2

    :goto_3
    invoke-virtual {v9, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :goto_4
    if-eqz v10, :cond_d

    move-object v8, v0

    check-cast v8, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v8, v6, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_d
    invoke-virtual {v9, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_5

    :cond_10
    move-object v0, v1

    :goto_5
    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_6
    if-gez p3, :cond_11

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    iput p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_7
    return-void

    :cond_11
    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v3, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v0, :cond_14

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_14

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    move v10, v1

    move-object v1, v0

    goto :goto_8

    :cond_12
    move-object v1, v0

    move v10, v2

    goto :goto_8

    :cond_13
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    move v10, v0

    goto :goto_8

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    const-string v4, "ATTRIBUTE_DECLARED"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v10, v1

    move-object v1, v0

    goto :goto_8

    :cond_15
    move v10, v2

    :goto_8
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v9

    move v5, p1

    move-object v11, v1

    invoke-virtual/range {v4 .. v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setBaseURI(Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/dom/EntityImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    :cond_2
    iput-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq p4, v1, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p4

    :goto_0
    if-ne p4, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1, p4, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v2, p4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p4

    goto :goto_0

    :cond_6
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {p1, p3, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    iput p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_2
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez p3, :cond_0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ENTITY_SKIPPED"

    invoke-interface {p4, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v0, :cond_2

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p3, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_2

    const-string v0, "<!ENTITY "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_0

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "PUBLIC \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_1

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "\' \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "SYSTEM \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, "\' NDATA "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v0, ">\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object p4

    invoke-interface {p4, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_3
    iget p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p4

    :goto_1
    if-ne p4, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget p3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v1, p4, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p4

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const-string p2, "yes"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const-string p2, "yes"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlStandalone(Z)V

    :cond_3
    :goto_0
    return-void
.end method
