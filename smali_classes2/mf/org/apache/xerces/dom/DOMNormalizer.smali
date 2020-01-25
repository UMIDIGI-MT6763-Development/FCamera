.class public Lmf/org/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAllWhitespace:Z

.field protected final fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    new-instance v1, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v1, p0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    new-instance v2, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v2, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    new-instance v2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    const/16 v2, 0x10

    new-array v2, v2, [C

    invoke-direct {v0, v2, v1, v1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method public static final isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move/from16 v10, p6

    instance-of v0, v9, Lmf/org/apache/xerces/dom/AttrImpl;

    if-eqz v0, :cond_0

    move-object v0, v9

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p5

    invoke-static {p0, p1, v8, v0, v10}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    invoke-interface {v11}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v13, v0, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {v11, v13}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmf/org/w3c/dom/Entity;

    :cond_2
    if-nez v2, :cond_4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "UndeclaredEntRefInAttrValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "UndeclaredEntRefInAttrValue"

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v8, v0, v10}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public static final isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 19

    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x3e

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/16 v6, 0x5d

    const/4 v7, 0x1

    if-eqz p4, :cond_8

    move v8, v5

    :goto_0
    if-lt v8, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v1, :cond_3

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v8, v9}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v10

    goto :goto_0

    :cond_2
    move v9, v10

    :cond_3
    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "InvalidCharInCDSect"

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v8, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v5

    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    const-string v18, "wf-invalid-character"

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v18}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v8, v9

    goto :goto_0

    :cond_4
    if-ne v8, v6, :cond_7

    if-ge v9, v1, :cond_7

    aget-char v8, v0, v9

    if-ne v8, v6, :cond_7

    move v8, v9

    :cond_5
    add-int/2addr v8, v7

    if-ge v8, v1, :cond_6

    aget-char v10, v0, v8

    if-eq v10, v6, :cond_5

    :cond_6
    if-ge v8, v1, :cond_7

    aget-char v8, v0, v8

    if-ne v8, v3, :cond_7

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "CDEndInContent"

    invoke-static {v8, v10, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    move v8, v5

    :goto_1
    if-lt v8, v1, :cond_9

    :goto_2
    return-void

    :cond_9
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_b

    if-ge v9, v1, :cond_b

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v0, v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v8, v9}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v9

    if-eqz v9, :cond_a

    move v8, v10

    goto :goto_1

    :cond_a
    move v9, v10

    :cond_b
    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "InvalidCharInCDSect"

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v8, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v5

    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    const-string v18, "wf-invalid-character"

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v18}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v8, v9

    goto :goto_1

    :cond_c
    if-ne v8, v6, :cond_f

    if-ge v9, v1, :cond_f

    aget-char v8, v0, v9

    if-ne v8, v6, :cond_f

    move v8, v9

    :cond_d
    add-int/2addr v8, v7

    if-ge v8, v1, :cond_e

    aget-char v10, v0, v8

    if-eq v10, v6, :cond_d

    :cond_e
    if-ge v8, v1, :cond_f

    aget-char v8, v0, v8

    if-ne v8, v3, :cond_f

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "CDEndInContent"

    invoke-static {v8, v10, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const-string v16, "wf-invalid-character"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_f
    move v8, v9

    goto :goto_1

    :cond_10
    :goto_3
    return-void
.end method

.method public static final isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 18

    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p4, :cond_6

    move v7, v5

    :goto_0
    if-lt v7, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v8, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-ge v8, v1, :cond_3

    add-int/lit8 v9, v8, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v7, v8}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "InvalidCharInComment"

    new-array v10, v6, [Ljava/lang/Object;

    add-int/lit8 v11, v7, -0x1

    aget-char v11, v0, v11

    invoke-static {v11, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    const-string v17, "wf-invalid-character"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v7, v4, :cond_5

    if-ge v8, v1, :cond_5

    aget-char v7, v0, v8

    if-ne v7, v4, :cond_5

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "DashDashInComment"

    invoke-static {v7, v9, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v5

    :goto_2
    if-lt v7, v1, :cond_7

    :goto_3
    return-void

    :cond_7
    add-int/lit8 v8, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_9

    if-ge v8, v1, :cond_9

    add-int/lit8 v9, v8, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v7, v8}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v9

    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_4

    :cond_9
    move v7, v8

    :goto_4
    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "InvalidCharInComment"

    new-array v10, v6, [Ljava/lang/Object;

    add-int/lit8 v11, v7, -0x1

    aget-char v11, v0, v11

    invoke-static {v11, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    const-string v17, "wf-invalid-character"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-ne v7, v4, :cond_b

    if-ge v8, v1, :cond_b

    aget-char v7, v0, v8

    if-ne v7, v4, :cond_b

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "DashDashInComment"

    invoke-static {v7, v9, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_b
    move v7, v8

    goto :goto_2

    :cond_c
    :goto_5
    return-void
.end method

.method public static final isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 16

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_5

    move v5, v3

    :goto_0
    if-lt v5, v1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v5, 0x1

    aget-char v5, v0, v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v6, -0x1

    aget-char v5, v0, v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ge v6, v1, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v5, v6}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    const-string v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "InvalidXMLCharInDOM"

    new-array v8, v4, [Ljava/lang/Object;

    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    invoke-static {v9, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    move v5, v3

    :goto_2
    if-lt v5, v1, :cond_6

    :goto_3
    return-void

    :cond_6
    add-int/lit8 v6, v5, 0x1

    aget-char v5, v0, v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v6, -0x1

    aget-char v5, v0, v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ge v6, v1, :cond_8

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v5, v6}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_2

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    const-string v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "InvalidXMLCharInDOM"

    new-array v8, v4, [Ljava/lang/Object;

    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    invoke-static {v9, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    :goto_5
    return-void
.end method

.method private processDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    move-object v5, p2

    move-object v7, v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, p2

    move-object v3, v0

    move-object v4, v1

    move-object v7, v4

    :goto_0
    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p2, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/RevalidationHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    sget-object p2, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "http://xml.org/sax/features/validation"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_5

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_5
    throw v0

    :catch_0
    move-object p2, v1

    :catch_1
    if-eqz p2, :cond_6

    :goto_2
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public static final reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    iput-object p3, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short p4, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iput-object p2, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p5, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object p2, p2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object p2, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    if-eq p4, p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method protected final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object p1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
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

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
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

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v1, :cond_0

    check-cast p2, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    instance-of p2, v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short p2, p2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    instance-of p2, p1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz p2, :cond_6

    check-cast p1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_6
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

.method protected final expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1, v0, p2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0
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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method protected final namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_8

    move v3, v10

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v9, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v6, v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_2

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v4, v5, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "CantBindXMLNS"

    invoke-static {v4, v5, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v13, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v15, 0x2

    const-string v16, "CantBindXMLNS"

    invoke-static/range {v11 .. v16}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v7, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_5

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v4, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    invoke-interface {v5, v6, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    if-eqz v3, :cond_b

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    :goto_6
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v2, :cond_e

    invoke-virtual {v0, v3, v2, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v2, :cond_c

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NullLocalElementName"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v14, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v16, 0x3

    const-string v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_8

    :cond_c
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NullLocalElementName"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v13, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v14, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v16, 0x2

    const-string v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_8

    :cond_d
    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    :goto_8
    if-eqz v9, :cond_20

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move v12, v10

    :goto_9
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_f

    goto/16 :goto_15

    :cond_f
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lmf/org/w3c/dom/Attr;

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v13, v2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->normalize()V

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    if-nez v2, :cond_10

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v15, v2

    goto :goto_a

    :cond_10
    move-object v15, v2

    :goto_a
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v8, 0x2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_12

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v16

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v7, v15

    move v11, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v2, :cond_11

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_b

    :cond_11
    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    :goto_b
    if-nez v2, :cond_13

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "wf-invalid-character-in-node-name"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "Attr"

    aput-object v5, v4, v10

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v22, 0x2

    const-string v23, "wf-invalid-character-in-node-name"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v23}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_c

    :cond_12
    move v11, v8

    :cond_13
    :goto_c
    if-eqz v14, :cond_1d

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_15
    :goto_d
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_e
    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v14, :cond_16

    sget-object v3, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v4, 0x1

    goto/16 :goto_14

    :cond_16
    move-object v3, v13

    check-cast v3, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v3, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v14}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v5, :cond_18

    if-eq v4, v3, :cond_17

    goto :goto_f

    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_14

    :cond_18
    :goto_f
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v4, v5, :cond_19

    goto :goto_13

    :cond_19
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v4, :cond_1b

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    goto :goto_10

    :cond_1a
    move-object v4, v2

    goto :goto_12

    :cond_1b
    :goto_10
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NS"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_11
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move-object v4, v2

    :goto_12
    invoke-virtual {v0, v4, v3, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_13
    invoke-interface {v13, v4}, Lmf/org/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_14

    :cond_1c
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NS"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v11, v5

    goto :goto_11

    :cond_1d
    move-object v2, v13

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v2, :cond_1e

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NullLocalAttrName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v10

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v22, 0x3

    const-string v23, "NullLocalAttrName"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v23}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_14

    :cond_1e
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NullLocalAttrName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v13}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v15, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v17, 0x2

    const-string v18, "NullLocalAttrName"

    invoke-static/range {v13 .. v18}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_14

    :cond_1f
    const/4 v4, 0x1

    :goto_14
    add-int/lit8 v12, v12, 0x1

    move v11, v4

    goto/16 :goto_9

    :cond_20
    :goto_15
    return-void
.end method

.method final normalizeAttributeValue(Ljava/lang/String;Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 9

    invoke-interface {p2}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    new-array v2, v0, [C

    iput-object v2, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    iput v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v1, v2

    :goto_0
    if-lt v2, v0, :cond_3

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v7, 0xd

    if-ne v3, v7, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v5, v1, v7

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    move v2, v1

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v3, v4, v7

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v4, 0x1

    iput v7, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v5, v1, v4

    move v1, v6

    :goto_2
    add-int/2addr v2, v6

    goto :goto_0
.end method

.method protected normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V
    .locals 9

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    sget-object v3, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v3, v0, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v4, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v4, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v3, v2

    goto :goto_2

    :cond_1
    const-string v3, "http://www.w3.org/TR/REC-xml"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    sget-object v4, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v4, v3, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v4, v5, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_4

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto :goto_3

    :cond_3
    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object v0, v2

    move-object v3, v0

    :cond_4
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v4, "error-handler"

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_6

    invoke-interface {v1, p0}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7, v7}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "yes"

    goto :goto_4

    :cond_5
    const-string v6, "no"

    :goto_4
    invoke-interface {v1, v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_6
    :try_start_0
    const-string v1, "http://www.w3.org/TR/REC-xml"

    if-ne v0, v1, :cond_8

    if-eqz v3, :cond_7

    aget-object p1, v3, p1

    goto :goto_5

    :cond_7
    move-object p1, v2

    :goto_5
    invoke-direct {p0, p2, p1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->processDTD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_a

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object p1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {p1, v0, p2, v1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    :cond_9
    return-void

    :cond_a
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move-object p1, v1

    goto :goto_6

    :catch_0
    move-exception p1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_c

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v1, v0, p2, v3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    :cond_c
    sget-object p2, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p1, p2, :cond_d

    return-void

    :cond_d
    throw p1
.end method

.method protected normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v1, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    :pswitch_1
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-eqz v2, :cond_26

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v6, :cond_26

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_26

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lmf/org/apache/xerces/dom/TextImpl;->insertData(ILjava/lang/String;)V

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v1

    :cond_0
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1

    check-cast v1, Lmf/org/w3c/dom/Comment;

    invoke-interface {v1}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v2, v3, v4, v1, v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v1, :cond_26

    sget-object v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :pswitch_2
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v2}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_3

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "wf-invalid-character-in-node-name"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Element"

    aput-object v6, v5, v8

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character-in-node-name"

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v2}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v6

    invoke-static {v3, v4, v5, v2, v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_4
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v2, :cond_26

    check-cast v1, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v1}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v2, v1, v3, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :pswitch_3
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4, v8, v7}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_6

    return-object v2

    :cond_6
    return-object v1

    :cond_7
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_26

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_26

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_b

    :pswitch_4
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_8

    move-object v3, v2

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v2

    :cond_8
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v2

    :cond_9
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v1, v2, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v2, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v2, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_a
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_d

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v10

    invoke-static {v4, v5, v6, v7, v10}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_b
    :goto_2
    const-string v4, "]]>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_c

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v1, v5, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v5, "cdata-sections-splitted"

    invoke-static {v1, v5, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v14, 0x1

    const-string v15, "cdata-sections-splitted"

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    :cond_d
    iget-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v1, v3, v4, v2, v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v6, :cond_e

    move-object v3, v1

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v1

    :cond_e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_b

    :cond_f
    const/4 v5, -0x1

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    goto :goto_3

    :cond_10
    move v2, v5

    :goto_3
    if-eq v2, v5, :cond_13

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v5, v3

    if-nez v5, :cond_11

    const/4 v5, 0x6

    if-eq v2, v5, :cond_26

    :cond_11
    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_12

    if-eq v2, v4, :cond_26

    :cond_12
    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v4, v5

    if-nez v4, :cond_13

    if-eq v2, v3, :cond_26

    :cond_13
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_14

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_14
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v1, v2, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v2, :cond_26

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    if-eqz v2, :cond_15

    iput-boolean v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    check-cast v1, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_b

    :cond_15
    check-cast v1, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_b

    :pswitch_6
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_17

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4

    :cond_16
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    :goto_4
    if-nez v2, :cond_17

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "wf-invalid-character-in-node-name"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Element"

    aput-object v6, v4, v8

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v14, 0x2

    const-string v15, "wf-invalid-character-in-node-name"

    invoke-static/range {v10 .. v15}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_17
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    :cond_18
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_5

    :cond_19
    move-object v3, v9

    :goto_5
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/2addr v4, v7

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_21

    if-eqz v3, :cond_21

    :goto_6
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v4

    if-lt v8, v4, :cond_1a

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    add-int/lit8 v8, v8, -0x1

    :cond_1c
    add-int/2addr v8, v7

    goto :goto_6

    :cond_1d
    if-eqz v3, :cond_21

    move v4, v8

    :goto_7
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v6

    if-lt v4, v6, :cond_1e

    goto/16 :goto_9

    :cond_1e
    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lmf/org/w3c/dom/Attr;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->normalize()V

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v6, v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_20

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v6, v6, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_20

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v12, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v16

    move-object v13, v3

    invoke-static/range {v10 .. v16}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-boolean v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v6, :cond_1f

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v11

    invoke-static {v6, v10, v11}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_8

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v10

    invoke-static {v6, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v6

    :goto_8
    if-nez v6, :cond_20

    const-string v6, "http://www.w3.org/dom/DOMTR"

    const-string v10, "wf-invalid-character-in-node-name"

    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "Attr"

    aput-object v12, v11, v8

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v6, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v14, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v15, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/16 v17, 0x2

    const-string v18, "wf-invalid-character-in-node-name"

    invoke-static/range {v13 .. v18}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_21
    :goto_9
    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, v3, v5, v2}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v1, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-interface {v3, v4, v5, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_22
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_a
    if-nez v3, :cond_24

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_23

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v1, v2, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v1, v2, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_23
    iget-object v1, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_b

    :cond_24
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_25

    goto :goto_a

    :cond_25
    move-object v3, v4

    goto :goto_a

    :cond_26
    :goto_b
    :pswitch_7
    return-object v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
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

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    :cond_1
    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/AttributePSVI;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, v5

    check-cast v6, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v6, v5

    check-cast v6, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    if-eqz v6, :cond_4

    move-object v6, p1

    check-cast v6, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6, v2, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_4
    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v4, :cond_5

    move-object v4, v2

    check-cast v4, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_5
    move-object v4, v2

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v5

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    if-nez v5, :cond_8

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v6

    const-string v7, "ATTRIBUTE_DECLARED"

    invoke-interface {v6, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ID"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5, v2, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_7
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
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

.method protected final updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V
    .locals 5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iput-object v0, p2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

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
