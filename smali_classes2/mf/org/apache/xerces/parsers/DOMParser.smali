.class public Lmf/org/apache/xerces/parsers/DOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParser.java"


# static fields
.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_ENTITY_RESOLVER2:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fUseEntityResolver2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;

    move-result-object v0
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    return p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "feature-not-recognized"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "feature-not-supported"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    const-string p1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    if-nez v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "CannotQueryDeferredNode"

    invoke-static {v1, v2, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "property-not-recognized"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "property-not-supported"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->printStackTrace()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of p1, v0, Lorg/xml/sax/SAXException;

    if-nez p1, :cond_1

    instance-of p1, v0, Ljava/io/IOException;

    if-eqz p1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/io/CharConversionException;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    instance-of p1, v0, Lorg/xml/sax/SAXException;

    if-nez p1, :cond_5

    instance-of p1, v0, Ljava/io/IOException;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_5
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_6
    :goto_0
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    if-nez v0, :cond_7

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    goto :goto_1

    :cond_7
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object v0, v2

    :goto_1
    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of p1, v0, Lorg/xml/sax/SAXException;

    if-nez p1, :cond_1

    instance-of p1, v0, Ljava/io/IOException;

    if-eqz p1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/io/CharConversionException;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    instance-of p1, v0, Lorg/xml/sax/SAXException;

    if-nez p1, :cond_5

    instance-of p1, v0, Ljava/io/IOException;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_5
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_6
    :goto_0
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    if-nez v0, :cond_7

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    goto :goto_1

    :cond_7
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object v0, v2

    :goto_1
    throw v0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v2, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-eqz v1, :cond_2

    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v2, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v2, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eq p2, p1, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "feature-not-recognized"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "feature-not-supported"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "property-not-recognized"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "property-not-supported"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
