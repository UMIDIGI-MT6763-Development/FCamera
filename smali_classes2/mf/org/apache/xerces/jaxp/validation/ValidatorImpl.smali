.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;
.super Lmf/javax/xml/validation/Validator;
.source "ValidatorImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# static fields
.field private static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final JAXP_SOURCE_RESULT_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

.field private fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 1

    invoke-direct {p0}, Lmf/javax/xml/validation/Validator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

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

    if-eqz p1, :cond_3

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

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

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

    const/4 v2, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "feature-not-recognized"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "feature-not-supported"

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-recognized"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "property-not-supported"

    invoke-static {v3, v0, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "ProperyNameNull"

    invoke-static {v1, v2, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

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

    if-eqz p1, :cond_3

    const-string v0, "http://javax.xml.transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

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

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "feature-read-only"

    invoke-static {v0, p1, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "feature-not-recognized"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "feature-not-supported"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x0

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

    if-eqz p1, :cond_2

    const-string v0, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "property-not-recognized"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "property-not-supported"

    invoke-static {v0, p2, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "property-read-only"

    invoke-static {v0, p1, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lmf/javax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmf/javax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-nez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmf/javax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    if-nez v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lmf/javax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    if-nez v0, :cond_6

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V

    :goto_0
    return-void

    :cond_7
    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "SourceParameterNull"

    invoke-static {p2, v1, v0}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SourceNotAccepted"

    invoke-static {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
