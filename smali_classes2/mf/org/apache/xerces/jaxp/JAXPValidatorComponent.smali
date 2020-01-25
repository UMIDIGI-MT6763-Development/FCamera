.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.super Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;
.source "JAXPValidatorComponent.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
    }
.end annotation


# static fields
.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;


# instance fields
.field private fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field private fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

.field private final typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

.field private final validator:Lmf/javax/xml/validation/ValidatorHandler;

.field private final xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/validation/ValidatorHandler;)V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {p1}, Lmf/javax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Lmf/javax/xml/validation/TypeInfoProvider;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-virtual {p1, v0}, Lmf/javax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->setSide(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {p1, v0}, Lmf/javax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    new-instance p1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;

    invoke-direct {p1, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {v0, p1}, Lmf/javax/xml/validation/ValidatorHandler;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object p0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-object p0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-object p0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateAttributes(Lorg/xml/sax/Attributes;)V
    .locals 10

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v4, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    new-instance v7, Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v4, v8, v3, v9}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 3

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-void
.end method
