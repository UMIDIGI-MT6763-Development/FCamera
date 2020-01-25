.class public Lmf/org/apache/xerces/parsers/DOMParserImpl;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParserImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParser;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;,
        Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fNullFilterInUse:Z

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    invoke-static {v0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    if-eqz p2, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 12

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const-string v2, "canonical-form"

    const-string v3, "cdata-sections"

    const-string v4, "charset-overrides-xml-encoding"

    const-string v5, "infoset"

    const-string v6, "namespace-declarations"

    const-string v7, "split-cdata-sections"

    const-string v8, "supported-media-types-only"

    const-string v9, "certified"

    const-string v10, "well-formed"

    const-string v11, "ignore-unknown-character-denormalizations"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "namespace-declarations"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "well-formed"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "canonical-form"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "charset-overrides-xml-encoding"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "split-cdata-sections"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "supported-media-types-only"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "certified"

    invoke-interface {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "FEATURE_NOT_FOUND"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method private static newInvalidStateError()Lmf/org/w3c/dom/DOMException;
    .locals 3

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "INVALID_STATE_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "TYPE_MISMATCH_ERR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method private restoreHandlers()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>(Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "supported-media-types-only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "normalize-characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string p2, "cdata-sections"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "charset-overrides-xml-encoding"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "comments"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "datatype-normalization"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "disallow-doctype"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "entities"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "infoset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "namespaces"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "namespace-declarations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "validate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "validate-if-schema"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "element-content-whitespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "xml-declaration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    const-string p2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_0

    :cond_4
    const-string p2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "http://apache.org/xml/features/namespace-growth"

    goto :goto_0

    :cond_5
    const-string p2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_0

    :cond_6
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return p2

    :cond_9
    :goto_3
    xor-int/lit8 p1, p2, 0x1

    return p1

    :cond_a
    const-string v1, "error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    instance-of p1, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez p1, :cond_c

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    return v2

    :cond_c
    :goto_4
    return v0

    :cond_d
    const-string v1, "resource-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    instance-of p1, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez p1, :cond_f

    if-nez p2, :cond_e

    goto :goto_5

    :cond_e
    return v2

    :cond_f
    :goto_5
    return v0

    :cond_10
    const-string v1, "schema-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_11

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    if-nez p2, :cond_13

    :cond_12
    return v0

    :cond_13
    return v2

    :cond_14
    const-string v1, "schema-location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_16

    if-nez p2, :cond_15

    goto :goto_6

    :cond_15
    return v2

    :cond_16
    :goto_6
    return v0

    :cond_17
    const-string p2, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    return v0

    :cond_18
    :try_start_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    return v2
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    const-string v6, "UTF-16"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-16"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz p1, :cond_6

    new-instance p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string v0, "no-input-specified"

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    const-string v0, "no-input-specified"

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v0, 0x3

    iput-short v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_6
    new-instance p1, Lmf/org/w3c/dom/ls/LSException;

    const/16 v0, 0x51

    const-string v1, "no-input-specified"

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public getAsync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBusy()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    return v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSParserFilter;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :cond_3
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p1

    :cond_5
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p1

    :cond_7
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p1

    :cond_9
    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p1

    :cond_b
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p1

    :cond_d
    const-string v0, "disallow-doctype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p1

    :cond_f
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "namespace-declarations"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_8

    :cond_10
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_11

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object p1

    :cond_12
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object p1

    :cond_14
    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_f

    :cond_15
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "supported-media-types-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_d

    :cond_16
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz p1, :cond_19

    instance-of v0, p1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v0, :cond_19

    check-cast p1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object p1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_19
    return-object v1

    :cond_1a
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    return-object p1

    :cond_1c
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_b

    :cond_1f
    const-string v0, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "http://apache.org/xml/features/namespace-growth"

    goto :goto_b

    :cond_20
    const-string v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_b

    :cond_21
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_c
    return-object p1

    :catch_1
    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_23
    :goto_d
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_24
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_e
    return-object p1

    :cond_25
    :goto_f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "charset-overrides-xml-encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "supported-media-types-only"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "disallow-doctype"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0
.end method

.method public parse(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq p1, v0, :cond_3

    instance-of v0, p1, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_2
    const/16 v0, 0x51

    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/ls/LSException;

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    return-object p1

    :cond_4
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1
.end method

.method public parseURI(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    return-object v1

    :cond_1
    sget-object p1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v0, p1, :cond_3

    instance-of p1, v0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz p1, :cond_2

    new-instance p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_2
    const/16 p1, 0x51

    invoke-static {p1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/ls/LSException;

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    return-object p1

    :cond_4
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1
.end method

.method public parseWithContext(Lmf/org/w3c/dom/ls/LSInput;Lmf/org/w3c/dom/Node;S)Lmf/org/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 p2, 0x9

    const-string p3, "Not supported"

    invoke-direct {p1, p2, p3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "namespace-declarations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    :cond_1
    iput v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRejectedElementDepth:I

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fFilterReject:Z

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    return-void
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSParserFilter;)V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    sget-object p1, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    :cond_1
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :try_start_0
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_0
    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_2
    const-string v0, "disallow-doctype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_3
    const-string v0, "supported-media-types-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_5
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_28

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "namespace-declarations"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/include-comments"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_6
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_7
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "namespace-declarations"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_8
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_a
    if-eqz p2, :cond_28

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_b
    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-eqz p2, :cond_28

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-interface {p2, v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_c
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_d
    const-string v0, "psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v1, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_e
    const-string v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_0

    :cond_f
    const-string v0, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "http://apache.org/xml/features/namespace-growth"

    goto :goto_0

    :cond_10
    const-string v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_0

    :cond_11
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_12
    :goto_1
    if-eqz p2, :cond_13

    goto/16 :goto_8

    :cond_13
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p2

    throw p2

    :cond_14
    :goto_2
    if-nez p2, :cond_15

    goto/16 :goto_8

    :cond_15
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p2

    throw p2
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_16
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    instance-of v0, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_18

    if-nez p2, :cond_17

    goto :goto_3

    :cond_17
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_18
    :goto_3
    :try_start_1
    new-instance p1, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :cond_19
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    instance-of v0, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v0, :cond_1b

    if-nez p2, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_1b
    :goto_4
    :try_start_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v1, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :cond_1c
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1e

    if-nez p2, :cond_1d

    goto :goto_5

    :cond_1d
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_1e
    :goto_5
    if-nez p2, :cond_1f

    :try_start_3
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, p2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1f
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance p1, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string v1, " \n\t\r"

    invoke-direct {p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_20
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    :cond_22
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_24

    if-nez p2, :cond_23

    goto :goto_7

    :cond_23
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1

    :cond_24
    :goto_7
    if-nez p2, :cond_25

    :try_start_4
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, p2, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, p2, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, p2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_8

    :cond_25
    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, p2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, p2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_8

    :cond_26
    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, p2, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, p2, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :cond_27
    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {p1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_1
    :cond_28
    :goto_8
    return-void

    :cond_29
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    :try_start_6
    const-string p2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    const-string p2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    const-string p2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const-string v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_9

    :cond_2a
    const-string v0, "http://apache.org/xml/features/namespace-growth"

    goto :goto_9

    :cond_2b
    const-string v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    :cond_2c
    :goto_9
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p2

    throw p2
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object p1

    throw p1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceAware:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method
