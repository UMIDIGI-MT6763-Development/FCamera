.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;
.super Ljava/lang/Object;
.source "XMLSchemaLoader.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fExternalNoNSSchema:Ljava/lang/String;

.field private fExternalSchemas:Ljava/lang/String;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIsCheckedFully:Z

.field private fJAXPCache:Ljava/util/WeakHashMap;

.field private fJAXPProcessed:Z

.field private fJAXPSource:Ljava/lang/Object;

.field private final fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field private fSettingsChanged:Z

.field private fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field private fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const-string v2, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v7, "http://apache.org/xml/features/validate-annotations"

    const-string v8, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v9, "http://apache.org/xml/features/namespace-growth"

    const-string v10, "http://apache.org/xml/features/internal/tolerate-duplicates"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v6, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v7, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v8, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v10, "http://apache.org/xml/properties/security-manager"

    const-string v11, "http://apache.org/xml/properties/locale"

    const-string v12, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v2, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    const-string p1, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string p3, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string p2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, p2, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    if-nez p4, :cond_4

    new-instance p4, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    :cond_4
    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez p5, :cond_5

    new-instance p5, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {p5, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    :cond_5
    iput-object p5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    new-instance p1, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    if-nez p6, :cond_6

    new-instance p6, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {p6, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    :cond_6
    iput-object p6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "flag1"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    return-void
.end method

.method private initGrammarBucket()V
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_3

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object v5, v0, v3

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    const-string v6, "GrammarConflict"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2, p0, v1, v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    invoke-static {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "SchemaLocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {p3, v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v2, v3, p0, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :try_start_1
    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p0, p1, v1, v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    sget-object p0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez p0, :cond_1

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private processJAXPSchemaSource(Ljava/util/Hashtable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v4, v1, Ljava/io/InputStream;

    if-nez v4, :cond_1

    instance-of v1, v1, Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v3

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/InputStream;

    if-nez v1, :cond_4

    instance-of v0, v0, Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_6
    return-void

    :cond_7
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_9

    const-class v4, Ljava/lang/String;

    if-eq v1, v4, :cond_9

    const-class v4, Ljava/io/File;

    if-eq v1, v4, :cond_9

    const-class v4, Ljava/io/InputStream;

    if-eq v1, v4, :cond_9

    const-class v4, Lorg/xml/sax/InputSource;

    if-eq v1, v4, :cond_9

    const-class v4, Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    const-class v4, Lorg/xml/sax/InputSource;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "jaxp12-schema-source-type.2"

    invoke-interface {p1, v4, v1, v5}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_9
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_1
    array-length v6, v1

    if-lt v5, v6, :cond_a

    return-void

    :cond_a
    aget-object v6, v1, v5

    instance-of v6, v6, Ljava/io/InputStream;

    if-nez v6, :cond_b

    aget-object v6, v1, v5

    instance-of v6, v6, Lorg/xml/sax/InputSource;

    if-eqz v6, :cond_c

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v6, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_2

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    aget-object v6, v1, v5

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v8, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8, v7}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8, v7}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v9, v0, [Ljava/lang/String;

    aput-object v7, v9, v3

    iput-object v9, v8, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v7, v6, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_e
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, v1, v5

    instance-of v7, v7, Ljava/io/InputStream;

    if-nez v7, :cond_f

    aget-object v7, v1, v5

    instance-of v7, v7, Lorg/xml/sax/InputSource;

    if-eqz v7, :cond_10

    :cond_f
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v8, v1, v5

    invoke-virtual {v7, v8, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_2

    :cond_11
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "jaxp12-schema-source-ns"

    invoke-interface {p1, v1, v3, v2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public static resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fromInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getFirstLocation()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    aget-object p1, v1, v0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0

    return-object p0
.end method

.method private static saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v6

    :cond_1
    new-instance p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez v3, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    invoke-virtual {p1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {v1, p2, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 10

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v3, p1, v3, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v5, "schema_reference.4"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v0, v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v0, v3

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v3, p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/xml/sax/InputSource;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    check-cast v8, Ljava/io/InputStream;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v0

    goto :goto_1

    :catch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v5, "schema_reference.4"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-virtual {v0, v4, v5, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v8, v3

    :goto_1
    new-instance p1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, "null"

    :goto_2
    aput-object p1, v5, v1

    const-string p1, "jaxp12-schema-source-type.1"

    invoke-interface {v0, v4, p1, v5}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    instance-of p2, p2, Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const-string p2, "validate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string p2, "error-handler"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "resource-resolver"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
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

    goto :goto_0

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

    if-eqz v0, :cond_2

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
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v1, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v2, v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    invoke-virtual {p0, v0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_0
    return-object p1
.end method

.method public loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v0

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p1, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processJAXPSchemaSource(Ljava/util/Hashtable;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    return-object p1
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v1, v0, p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v0

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p1, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v3
.end method

.method reportDOMFatalError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p1, 0x3

    iput-short p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object p1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->reset()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    if-nez v2, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V

    :try_start_1
    const-string v3, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    const-string v3, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    :goto_1
    :try_start_2
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    :goto_2
    :try_start_3
    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_3
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    :try_start_4
    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    instance-of v3, v2, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    if-eqz v3, :cond_3

    check-cast v2, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    :cond_3
    :try_start_5
    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    :goto_4
    :try_start_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const-string v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void

    :cond_4
    :goto_6
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->reset()V

    :cond_5
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

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

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v0, p2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_2

    :try_start_1
    new-instance p1, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v0, p2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_3
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    :try_start_2
    new-instance p1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v0, p2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_5
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v0, p2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    :cond_4
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/xml-schema-1"

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_6
    :goto_0
    return-void
.end method
