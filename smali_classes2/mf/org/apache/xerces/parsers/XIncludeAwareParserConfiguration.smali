.class public Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XIncludeAwareParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field protected fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fXIncludeEnabled:Z

.field protected fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field protected fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const-string p2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string p3, "http://apache.org/xml/features/xinclude/fixup-language"

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string p1, "http://apache.org/xml/properties/internal/xinclude-handler"

    const-string p2, "http://apache.org/xml/properties/internal/namespace-context"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    new-instance p1, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string p2, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, p2, p1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const-string v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eq v0, v1, :cond_6

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const-string v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eq v0, v1, :cond_6

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
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

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    return p1

    :cond_0
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    return p1

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->getFeature0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
