.class public Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;
.super Ljava/lang/Object;
.source "XMLGrammarPreparser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    }
.end annotation


# static fields
.field private static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field private static final KNOWN_LOADERS:Ljava/util/Hashtable;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fLoaders:Ljava/util/Hashtable;

.field protected fLocale:Ljava/util/Locale;

.field private fModCount:I

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "mf.org.apache.xerces.impl.xs.XMLSchemaLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/TR/REC-xml"

    const-string v2, "mf.org.apache.xerces.impl.dtd.XMLDTDLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v4, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance p1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->setLocale(Ljava/util/Locale;)V

    new-instance p1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-void
.end method

.method private clearModCounts()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    const/4 v2, 0x0

    iput v2, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object p1, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object v0
.end method

.method public getLoader(Ljava/lang/String;)Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object p1, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public preparseGrammar(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v0, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    iget v1, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    iget v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-eq v1, v2, :cond_1

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput v1, p1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    :cond_1
    invoke-interface {v0, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerPreparser(Ljava/lang/String;Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_1

    sget-object p2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v3, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v3, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    :cond_0
    return v1

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    invoke-direct {v2, p2}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eq v0, p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    :cond_1
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v1, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    :try_start_0
    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eq v0, p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v1, v1, Lmf/org/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;

    :try_start_0
    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
