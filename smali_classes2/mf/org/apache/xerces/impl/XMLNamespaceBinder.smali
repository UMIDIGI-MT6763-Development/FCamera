.class public Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
.super Ljava/lang/Object;
.source "XMLNamespaceBinder.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fOnlyPassPrefixMappingEvents:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://xml.org/sax/features/namespaces"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    invoke-virtual {p0, p1, p3, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOnlyPassPrefixMappingEvents()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
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
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementXMLNSPrefix"

    new-array v10, v8, [Ljava/lang/Object;

    iget-object v11, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-virtual {v4, v5, v9, v10, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    move v5, v7

    :goto_0
    if-lt v5, v4, :cond_10

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_2
    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v10, "ElementPrefixUnbound"

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v12, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v12, v11, v7

    iget-object v12, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v5, v9, v10, v11, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    move v5, v7

    :goto_2
    const/4 v9, 0x3

    if-lt v5, v4, :cond_b

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v10

    move v4, v7

    :goto_3
    add-int/lit8 v5, v10, -0x1

    if-lt v4, v5, :cond_6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_5

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v5, :cond_5

    if-eqz p4, :cond_4

    invoke-interface {v4, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    :cond_4
    invoke-interface {v4, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    sget-object v11, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v5, v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    :goto_5
    if-lt v12, v10, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v2, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v14

    if-ne v11, v13, :cond_9

    if-ne v5, v14, :cond_9

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v15, "AttributeNSNotUnique"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v6, v7

    aput-object v11, v6, v8

    const/4 v9, 0x2

    aput-object v5, v6, v9

    invoke-virtual {v13, v14, v15, v6, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto :goto_3

    :cond_b
    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v5, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_7

    :cond_c
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v10, :cond_d

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v5, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_8

    :cond_d
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v6, v10, :cond_f

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v10, :cond_e

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "AttributePrefixUnbound"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v13, v7

    aput-object v9, v13, v8

    const/4 v9, 0x2

    aput-object v6, v13, v9

    invoke-virtual {v10, v11, v12, v13, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_e
    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2, v5, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    :cond_f
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_10
    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v9, v10, :cond_12

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v9, v10, :cond_11

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v10, :cond_11

    goto :goto_9

    :cond_11
    const/4 v12, 0x2

    goto/16 :goto_d

    :cond_12
    :goto_9
    iget-object v10, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v11, :cond_13

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v9, :cond_13

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXMLNS"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    const/4 v14, 0x2

    invoke-virtual {v9, v11, v12, v13, v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_13
    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v10, v9, :cond_14

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXMLNS"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    const/4 v14, 0x2

    invoke-virtual {v9, v11, v12, v13, v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_14
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v6, v9, :cond_15

    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v10, v9, :cond_16

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXML"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    const/4 v14, 0x2

    invoke-virtual {v9, v11, v12, v13, v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    :cond_15
    const/4 v14, 0x2

    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v10, v9, :cond_16

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v12, "CantBindXML"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v7

    invoke-virtual {v9, v11, v12, v13, v14}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_16
    :goto_a
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v6, v9, :cond_17

    move-object v9, v6

    goto :goto_b

    :cond_17
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_b
    invoke-virtual {v0, v10, v6}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v10, "EmptyPrefixedAttName"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    const/4 v12, 0x2

    invoke-virtual {v6, v9, v10, v11, v12}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_d

    :cond_18
    const/4 v12, 0x2

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_19

    goto :goto_c

    :cond_19
    const/4 v10, 0x0

    :goto_c
    invoke-interface {v6, v9, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move v6, v12

    goto/16 :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setOnlyPassPrefixMappingEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v0, "internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
