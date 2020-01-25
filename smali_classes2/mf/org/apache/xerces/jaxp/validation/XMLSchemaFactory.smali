.class public final Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;
.super Lmf/javax/xml/validation/SchemaFactory;
.source "XMLSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;,
        Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;
    }
.end annotation


# static fields
.field private static final JAXP_SOURCE_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"

.field private static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

.field private fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

.field private fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fUseGrammarPoolOnly:Z

.field private final fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

.field private final fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lmf/javax/xml/validation/SchemaFactory;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    new-instance v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return-void
.end method

.method private propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V
    .locals 4

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v1}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

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

    if-eqz p1, :cond_6

    const-string v0, "http://javax.xml.transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return p1

    :cond_4
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

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

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "feature-not-recognized"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "feature-not-supported"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FeatureNameNull"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    return-object p1

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-recognized"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-supported"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "property-not-supported"

    invoke-static {v3, p1, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ProperyNameNull"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "SchemaLanguageLengthZero"

    invoke-static {v1, v2, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "SchemaLanguageNull"

    invoke-static {v1, v2, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSchema()Lmf/javax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object v0
.end method

.method public newSchema(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)Lmf/javax/xml/validation/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object v0
.end method

.method public newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    array-length v1, p1

    new-array v1, v1, [Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_4

    :try_start_0
    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->getGrammarCount()I

    move-result p1

    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-eqz v1, :cond_2

    if-le p1, v5, :cond_0

    new-instance p1, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p1, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_0
    if-ne p1, v5, :cond_1

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;

    aget-object p1, p1, v2

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/SimpleXMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;

    invoke-direct {p1}, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    :goto_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_3
    throw v0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_4
    aget-object v4, p1, v3

    instance-of v7, v4, Lmf/javax/xml/transform/stream/StreamSource;

    if-eqz v7, :cond_5

    check-cast v4, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v4}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v4

    new-instance v9, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v9, v5, v7, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    aput-object v9, v1, v3

    goto :goto_2

    :cond_5
    instance-of v7, v4, Lmf/javax/xml/transform/sax/SAXSource;

    if-eqz v7, :cond_7

    check-cast v4, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Lmf/org/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v6, v1, v3

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "SAXSourceNullInputSource"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    instance-of v7, v4, Lmf/javax/xml/transform/dom/DOMSource;

    if-eqz v7, :cond_8

    check-cast v4, Lmf/javax/xml/transform/dom/DOMSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4}, Lmf/javax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/apache/xerces/util/DOMInputSource;

    invoke-direct {v6, v5, v4}, Lmf/org/apache/xerces/util/DOMInputSource;-><init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v6, v1, v3

    goto :goto_2

    :cond_8
    instance-of v7, v4, Lmf/javax/xml/transform/stax/StAXSource;

    if-eqz v7, :cond_a

    check-cast v4, Lmf/javax/xml/transform/stax/StAXSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v4, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLEventReader;)V

    aput-object v4, v1, v3

    goto :goto_2

    :cond_9
    new-instance v5, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual {v4}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-direct {v5, v4}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLStreamReader;)V

    aput-object v5, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "SchemaSourceArrayMemberNull"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "SchemaFactorySourceUnrecognized"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, "http://javax.xml.transform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "feature-read-only"

    invoke-static {v0, p1, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string p2, "http://apache.org/xml/properties/security-manager"

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "feature-not-recognized"

    invoke-static {v0, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "feature-not-supported"

    invoke-static {v0, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const-string v1, "FeatureNameNull"

    invoke-static {p2, v1, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string p2, "http://apache.org/xml/properties/security-manager"

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "property-not-recognized"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "property-not-supported"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "property-not-supported"

    invoke-static {v0, p1, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "ProperyNameNull"

    invoke-static {p2, v1, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method
