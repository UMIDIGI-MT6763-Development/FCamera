.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
.super Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;
.source "XMLDTDLoader.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final LOADER_RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field public static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"


# instance fields
.field private fBalanceSyntaxTrees:Z

.field protected fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fLocale:Ljava/util/Locale;

.field private fStrictURI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v4, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v5, "http://apache.org/xml/features/validation/balance-syntax-trees"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v6, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v7, "http://apache.org/xml/properties/locale"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fBalanceSyntaxTrees:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez p3, :cond_0

    new-instance p3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    const-string p1, "http://apache.org/xml/properties/internal/error-handler"

    new-instance p2, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {p2}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    invoke-virtual {p3, p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    instance-of p2, p1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    if-eqz p2, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    goto :goto_0

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->createDTDScanner(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->reset()V

    return-void
.end method


# virtual methods
.method protected createDTDScanner(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fValidation:Z

    return p1

    :cond_0
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fWarnDuplicateAttdef:Z

    return p1

    :cond_1
    const-string v0, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fWarnOnUndeclaredElemdef:Z

    return p1

    :cond_2
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    return p1

    :cond_4
    const-string v0, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fBalanceSyntaxTrees:Z

    return p1

    :cond_5
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object p1

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-object p1

    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object p1

    :cond_3
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->getLocale()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object p1

    :cond_5
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    return-object p1

    :cond_6
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getScannerVersion()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->reset()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fBalanceSyntaxTrees:Z

    if-nez v1, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDTDExternalSubset(Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    throw p1

    :catch_0
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v2, "http://www.w3.org/TR/REC-xml"

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    aput-object v3, v0, v1

    invoke-interface {p1, v2, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-object p1
.end method

.method public loadGrammarWithContext(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->getScannerVersion()S

    move-result v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->reset()V

    const/4 p1, 0x1

    if-eqz p6, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p6, "]>"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p6, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p6

    move-object v3, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDocumentEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p6, p1, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDTDInternalSubset(ZZZ)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    new-instance p6, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    const/4 v4, 0x0

    move-object v0, p6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p2, p6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p2

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {p3, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDTDExternalSubset(Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    throw p1

    :catch_0
    :cond_2
    :goto_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    :cond_3
    return-void
.end method

.method protected reset()V
    .locals 2

    invoke-super {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fValidation:Z

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fWarnDuplicateAttdef:Z

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fWarnOnUndeclaredElemdef:Z

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    goto :goto_0

    :cond_4
    const-string v0, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fBalanceSyntaxTrees:Z

    :goto_0
    return-void

    :cond_5
    new-instance p2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    :cond_5
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_0
    return-void

    :cond_6
    new-instance p2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p2
.end method
