.class public Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object p0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "EqRequiredInAttribute"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    if-ne v0, v6, :cond_2

    const-string v0, "AttributeNotUnique"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v5

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    if-nez v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v5}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v7, v8, :cond_6

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v7, v8, :cond_5

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v8, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v7, v8, :cond_7

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "CantBindXMLNS"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v11, v10, v1

    invoke-virtual {v7, v8, v9, v10, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "CantBindXMLNS"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v11, v10, v1

    invoke-virtual {v7, v8, v9, v10, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v5, v7, :cond_9

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v6, v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "CantBindXML"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v11, v10, v1

    invoke-virtual {v7, v8, v9, v10, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_9
    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v6, v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "CantBindXML"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v11, v10, v1

    invoke-virtual {v7, v8, v9, v10, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_a
    :goto_3
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v7, :cond_b

    move-object v7, v5

    goto :goto_4

    :cond_b
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v6, v8, :cond_c

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v8, :cond_c

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "EmptyPrefixedAttName"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v10, v3, v1

    invoke-virtual {v5, v8, v9, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    move-object v4, v6

    :cond_d
    invoke-interface {v1, v7, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method protected scanEndElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "ETagRequired"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ETagUnterminated"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    sub-int/2addr v4, v2

    aget v3, v3, v4

    if-ge v0, v3, :cond_2

    const-string v0, "ElementEntityMismatch"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    return v0
.end method

.method protected scanStartElement()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_GRAMMAR_NOT_FOUND"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v1, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "RootElementTypeMustMatchDoctypedecl"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v8, v7, v3

    aput-object v0, v7, v4

    invoke-virtual {v1, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v3

    goto :goto_1

    :cond_2
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ElementUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v4

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v6, "ElementXMLNSPrefix"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v6, "ElementPrefixUnbound"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v1, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    move v5, v3

    :goto_3
    const/4 v6, 0x3

    if-lt v5, v1, :cond_9

    if-le v1, v4, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v8, "AttributeNSNotUnique"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v6, v3

    iget-object v9, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v9, v6, v4

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v1, v6, v2

    invoke-virtual {v5, v7, v8, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v7, "AttributeNotUnique"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v1, v8, v4

    invoke-virtual {v5, v6, v7, v8, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v7, v5, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_4

    :cond_a
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v9, v8, :cond_b

    goto :goto_5

    :cond_b
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v7, v9, :cond_d

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v8, :cond_c

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v11, "AttributePrefixUnbound"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v6, v3

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v6, v4

    aput-object v7, v6, v2

    invoke-virtual {v9, v10, v11, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v6, v5, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_e
    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v2, v4

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-ge v2, v5, :cond_f

    const-string v2, "ElementEntityMismatch"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_12
    :goto_7
    return v0

    :cond_13
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez v1, :cond_15

    :cond_14
    const-string v1, "ElementUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto/16 :goto_0
.end method

.method protected scanStartElementAfterName()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_GRAMMAR_NOT_FOUND"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v1, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "RootElementTypeMustMatchDoctypedecl"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v8, v7, v3

    aput-object v0, v7, v4

    invoke-virtual {v1, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v5, 0x3e

    if-ne v1, v5, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v3

    goto :goto_1

    :cond_2
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ElementUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v4

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v6, "ElementXMLNSPrefix"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v6, "ElementPrefixUnbound"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v1, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    move v5, v3

    :goto_3
    const/4 v6, 0x3

    if-lt v5, v1, :cond_9

    if-le v1, v4, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v8, "AttributeNSNotUnique"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v6, v3

    iget-object v9, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v9, v6, v4

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v1, v6, v2

    invoke-virtual {v5, v7, v8, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v7, "AttributeNotUnique"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v1, v8, v4

    invoke-virtual {v5, v6, v7, v8, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v7, v5, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_4

    :cond_a
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v9, v8, :cond_b

    goto :goto_5

    :cond_b
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v7, v9, :cond_d

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v8, :cond_c

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v11, "AttributePrefixUnbound"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v6, v3

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v6, v4

    aput-object v7, v6, v2

    invoke-virtual {v9, v10, v11, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v6, v5, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_e
    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v2, v4

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-ge v2, v5, :cond_f

    const-string v2, "ElementEntityMismatch"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_12
    :goto_7
    return v0

    :cond_13
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    if-nez v1, :cond_15

    :cond_14
    const-string v1, "ElementUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0
.end method

.method protected scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-void
.end method
