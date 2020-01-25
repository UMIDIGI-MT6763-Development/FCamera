.class public abstract Lmf/org/apache/xerces/parsers/AbstractSAXParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "AbstractSAXParser.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;,
        Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final DECLARATION_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final DOM_NODE:Ljava/lang/String; = "http://xml.org/sax/properties/dom-node"

.field protected static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private final fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

.field private fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field protected fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fDTDHandler:Lorg/xml/sax/DTDHandler;

.field protected fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field protected fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

.field protected fDocumentHandler:Lorg/xml/sax/DocumentHandler;

.field protected fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLexicalHandlerParameterEntities:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field protected fParseInProgress:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fResolveDTDURIs:Z

.field protected fStandalone:Z

.field protected fUseEntityResolver2:Z

.field protected fVersion:Ljava/lang/String;

.field protected fXMLNSURIs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://xml.org/sax/features/string-interning"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    const-string v2, "http://xml.org/sax/properties/dom-node"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    new-instance v1, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-direct {v1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    :try_start_0
    const-string v1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {p1, v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p7, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p7, :cond_7

    new-instance p7, Ljava/lang/StringBuffer;

    invoke-direct {p7, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 p8, 0x3c

    invoke-virtual {p7, p8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p7

    iget-object p8, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p8, p7}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    if-eqz p8, :cond_0

    return-void

    :cond_0
    iget-object p8, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p8, p7, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p7, "NOTATION"

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_2

    const-string p7, "ENUMERATION"

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p3

    goto :goto_3

    :cond_2
    :goto_0
    new-instance p7, Ljava/lang/StringBuffer;

    invoke-direct {p7}, Ljava/lang/StringBuffer;-><init>()V

    const-string p8, "NOTATION"

    invoke-virtual {p3, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_3

    invoke-virtual {p7, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " ("

    invoke-virtual {p7, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 p3, 0x28

    invoke-virtual {p7, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    const/4 p3, 0x0

    :goto_2
    array-length p8, p4

    if-lt p3, p8, :cond_5

    const/16 p3, 0x29

    invoke-virtual {p7, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v3, p3

    :goto_3
    if-nez p6, :cond_4

    const/4 p3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_4
    move-object v5, p3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    aget-object p8, p4, p3

    invoke-virtual {p7, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p8, p4

    add-int/lit8 p8, p8, -0x1

    if-ge p3, p8, :cond_6

    const/16 p8, 0x7c

    invoke-virtual {p7, p8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, v2}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    :cond_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v1, 0x0

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p4, 0x1

    iput-boolean p4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    :try_start_0
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p4, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p1, :cond_1

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {p3, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {p1}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_3

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, p2, v0, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->endNamespaceMapping()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string v0, "[dtd]"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected final endNamespaceMapping()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p3, p2}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p1

    const-string v0, "ATTRIBUTE_PSVI"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/AttributePSVI;

    return-object p1
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p1

    const-string p2, "ATTRIBUTE_PSVI"

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/AttributePSVI;

    return-object p1
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method protected getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    if-eqz v0, :cond_0

    const-string v1, "ELEMENT_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "http://xml.org/sax/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1c

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    const-string v3, "namespace-prefixes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    return p1

    :cond_0
    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const-string v4, "string-interning"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    const-string v4, "is-standalone"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    return p1

    :cond_2
    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    const-string v4, "xml-1.1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    instance-of p1, p1, Lmf/org/apache/xerces/parsers/XML11Configurable;

    return p1

    :cond_3
    const/16 v4, 0x22

    if-ne v2, v4, :cond_4

    const-string v4, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    return p1

    :cond_4
    if-ne v2, v3, :cond_5

    const-string v3, "resolve-dtd-uris"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    return p1

    :cond_5
    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    const-string v3, "xmlns-uris"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    return p1

    :cond_6
    const/16 v3, 0x1e

    if-ne v2, v3, :cond_7

    const-string v3, "unicode-normalization-checking"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v0

    :cond_7
    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    const-string v3, "use-entity-resolver2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    return p1

    :cond_8
    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    const-string v3, "use-attributes2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const-string v2, "use-locator2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    return v1

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "feature-not-recognized"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "feature-not-supported"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v1, "document-xml-version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    return-object p1

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const-string v1, "lexical-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    const-string v1, "declaration-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    const-string v0, "dom-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "dom-node-read-not-supported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-recognized"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-supported"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, v2}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p3

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p3, p2}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
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
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
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
    new-instance v1, Lorg/xml/sax/ext/Locator2Impl;

    invoke-direct {v1}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

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

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
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
    new-instance v1, Lorg/xml/sax/ext/Locator2Impl;

    invoke-direct {v1}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

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

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    const-string v1, "1.0"

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lmf/org/apache/xerces/util/SymbolHash;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method protected setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "http://xml.org/sax/properties/declaration-handler"

    aput-object v3, v1, v2

    const-string v2, "property-not-parsing-supported"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

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
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "http://xml.org/sax/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1c

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v4, "namespaces"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    return-void

    :cond_0
    const/16 v4, 0x12

    if-ne v2, v4, :cond_1

    const-string v4, "namespace-prefixes"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    return-void

    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_3

    const-string v5, "string-interning"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "false-not-supported"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/16 v5, 0x22

    if-ne v2, v5, :cond_4

    const-string v5, "lexical-handler/parameter-entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    return-void

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v4, "resolve-dtd-uris"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    return-void

    :cond_5
    const/16 v4, 0x1e

    if-ne v2, v4, :cond_7

    const-string v4, "unicode-normalization-checking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p2, :cond_6

    return-void

    :cond_6
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "true-not-supported"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    if-ne v2, v3, :cond_8

    const-string v3, "xmlns-uris"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    return-void

    :cond_8
    const/16 v3, 0x14

    if-ne v2, v3, :cond_a

    const-string v3, "use-entity-resolver2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eq p2, p1, :cond_9

    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_9
    return-void

    :cond_a
    const/16 v3, 0xd

    if-ne v2, v3, :cond_b

    const-string v3, "is-standalone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_b
    const/16 v3, 0xf

    if-ne v2, v3, :cond_c

    const-string v3, "use-attributes2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    const-string v3, "use-locator2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const/4 v3, 0x7

    if-ne v2, v3, :cond_f

    const-string v2, "xml-1.1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "feature-read-only"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_10

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "feature-not-recognized"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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

.method protected setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    aput-object v3, v1, v2

    const-string v2, "property-not-parsing-supported"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    const/16 v3, 0xf

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    const-string v3, "lexical-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    :try_start_1
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_0
    :try_start_2
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "incompatible-class"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const-string p1, "org.xml.sax.ext.LexicalHandler"

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    const-string v3, "declaration-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_1

    :try_start_3
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_1
    :try_start_4
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "incompatible-class"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const-string p1, "org.xml.sax.ext.DeclHandler"

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    const-string v3, "dom-node"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/16 v3, 0x14

    if-ne v2, v3, :cond_4

    const-string v2, "document-xml-version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "property-read-only"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "property-not-recognized"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    new-instance p3, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {p3, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {p2}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    :cond_1
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance p3, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    invoke-direct {p3, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {p2, p3}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->startNamespaceMapping()V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v2, ""

    iput-object v2, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v2, ""

    iput-object v2, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    const-string v2, ""

    iput-object v2, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    iput-object p3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz p3, :cond_9

    iget-object p3, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string p3, ""

    :goto_3
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string v0, ""

    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lmf/org/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {p2, p3, v0, p1, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string p1, "[dtd]"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p3, "ENTITY_SKIPPED"

    invoke-interface {p4, p3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected final startNamespaceMapping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-interface {v4, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p3, "ENTITY_SKIPPED"

    invoke-interface {p4, p3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p2, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object p4, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p4, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p4

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p4, p2, p3}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    const-string p1, "yes"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    return-void
.end method
