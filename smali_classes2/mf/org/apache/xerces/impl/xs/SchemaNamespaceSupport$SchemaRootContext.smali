.class final Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;
.super Ljava/lang/Object;
.source "SchemaNamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SchemaRootContext"
.end annotation


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field fDOMContextBuilt:Z

.field fNamespace:[Ljava/lang/String;

.field fNamespaceSize:I

.field private final fSchemaRoot:Lmf/org/w3c/dom/Element;

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fDOMContextBuilt:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p1, v0, v1

    iget p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p2, v0, p1

    return-void
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 4

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    iput-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method fillNamespaceContext()V
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_7

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v6, v4}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v7, 0x0

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-direct {p0, v4, v7}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-direct {p0, v4, v7}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object p1, v1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
