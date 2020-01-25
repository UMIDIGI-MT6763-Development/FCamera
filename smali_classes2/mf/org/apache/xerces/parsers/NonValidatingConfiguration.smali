.class public Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "NonValidatingConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field private static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fConfigUpdated:Z

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field private fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field private fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    const-string p3, "http://apache.org/xml/features/internal/parser-settings"

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    filled-new-array {p3, v0, v1}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://xml.org/sax/features/namespaces"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v4, "http://apache.org/xml/properties/internal/document-scanner"

    const-string v5, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v6, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v7, "http://apache.org/xml/properties/internal/namespace-binder"

    const-string v8, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v9, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v10, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v11, "http://apache.org/xml/properties/locale"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    instance-of p3, p2, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz p3, :cond_1

    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string p3, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_4
    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    sub-int/2addr v0, v1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    const-string v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x23

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const-string v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    const-string v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_5

    const-string v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-ne v0, v1, :cond_6

    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_8

    const-string v0, "validation/validate-datatypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v3, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v0, "internal/dtd-scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string v0, "schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configurePipeline()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fProperties:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    :cond_3
    return-void
.end method

.method protected createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    return-object v0
.end method

.method protected createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    return-object v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    return p1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->cleanup()V

    throw p1

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v0, "FWK005 parse may not be called while parsing."

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z

    move-result p1
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return p1

    :catch_4
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_5
    move-exception p1

    throw p1

    :catch_6
    move-exception p1

    throw p1

    :catch_7
    move-exception p1

    throw p1
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->configurePipeline()V

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->fConfigUpdated:Z

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/NonValidatingConfiguration;->setLocale(Ljava/util/Locale;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
