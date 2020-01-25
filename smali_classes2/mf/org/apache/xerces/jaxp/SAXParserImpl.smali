.class public Lmf/org/apache/xerces/jaxp/SAXParserImpl;
.super Lmf/javax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/JAXPConstants;
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
    }
.end annotation


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Lmf/javax/xml/validation/Schema;

.field private schemaLanguage:Ljava/lang/String;

.field private final xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/javax/xml/parsers/SAXParser;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-direct {v1, p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v1, v2, v4}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v1, "http://apache.org/xml/properties/security-manager"

    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {p3, v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->setFeatures(Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;

    invoke-direct {p2}, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string p3, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->getSchema()Lmf/javax/xml/validation/Schema;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    instance-of p3, p2, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz p3, :cond_3

    new-instance p2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    new-instance p3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance p3, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {p3, v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {p1, p3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    new-instance p3, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    check-cast v0, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {p3, p1, v0, v1}, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_1

    :cond_3
    new-instance p3, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-virtual {p2}, Lmf/javax/xml/validation/Schema;->newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;

    move-result-object p2

    invoke-direct {p3, p2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    move-object p2, p3

    :goto_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object p3, p2

    check-cast p3, Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p1, p3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object p1, p2

    check-cast p1, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p1, p3}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    :goto_2
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    return-object p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object p0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    return-object p0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    return-object p0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    return-object p0
.end method

.method private setFeatures(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/PSVIProvider;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object p1

    return-object p1
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xs/PSVIProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object p1

    return-object p1
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/PSVIProvider;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isValidating()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isXIncludeAware()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->restoreInitState()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
