.class public Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XPointerParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"

.field protected static final XPOINTER_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xpointer-handler"


# instance fields
.field private fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance p1, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const-string p2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string p3, "http://apache.org/xml/features/xinclude/fixup-language"

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string p1, "http://apache.org/xml/properties/internal/xinclude-handler"

    const-string p2, "http://apache.org/xml/properties/internal/xpointer-handler"

    const-string p3, "http://apache.org/xml/properties/internal/namespace-context"

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http://apache.org/xml/properties/internal/xpointer-handler"

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http://apache.org/xml/properties/internal/namespace-context"

    new-instance p2, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {p2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    return-void
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
