.class public Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;
.super Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;
.source "XML11NSDTDValidator.java"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method


# virtual methods
.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void
.end method

.method protected final startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget-object v3, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v8, "ElementXMLNSPrefix"

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v3, v4, v8, v9, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v3

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_e

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_2
    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementPrefixUnbound"

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v11, v10, v6

    iget-object v11, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-virtual {v4, v8, v9, v10, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    move v4, v6

    :goto_2
    const/4 v8, 0x3

    if-lt v4, v3, :cond_9

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    move v3, v6

    :goto_3
    add-int/lit8 v4, v9, -0x1

    if-lt v3, v4, :cond_4

    return-void

    :cond_4
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v4, v10, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    :goto_4
    if-lt v11, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v2, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v13

    if-ne v10, v12, :cond_7

    if-ne v4, v13, :cond_7

    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v14, "AttributeNSNotUnique"

    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v15, v6

    aput-object v10, v15, v7

    aput-object v4, v15, v5

    invoke-virtual {v12, v13, v14, v15, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x3

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    goto :goto_3

    :cond_9
    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v4, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_6

    :cond_a
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v10, :cond_b

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v4, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_7

    :cond_b
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v8, v10, :cond_d

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v8}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v10, :cond_c

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "AttributePrefixUnbound"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v9, v13, v7

    aput-object v8, v13, v5

    invoke-virtual {v10, v11, v12, v13, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v4, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    :cond_d
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v9, v10, :cond_f

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v9, v10, :cond_16

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v10, :cond_16

    :cond_f
    iget-object v10, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v11, :cond_10

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v9, :cond_10

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXMLNS"

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v9, v11, v12, v13, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_10
    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v10, v9, :cond_11

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXMLNS"

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v9, v11, v12, v13, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_11
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v8, v9, :cond_12

    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v10, v9, :cond_13

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXML"

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v9, v11, v12, v13, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_8

    :cond_12
    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v10, v9, :cond_13

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXML"

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v9, v11, v12, v13, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_13
    :goto_8
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v9, :cond_14

    goto :goto_9

    :cond_14
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_9
    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_a

    :cond_15
    const/4 v10, 0x0

    :goto_a
    invoke-interface {v9, v8, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
