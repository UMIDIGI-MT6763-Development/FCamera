.class public Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
.super Lmf/org/apache/xerces/parsers/SAXParser;
.source "SAXParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/SAXParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXPSAXParser"
.end annotation


# instance fields
.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    return-void
.end method

.method private resetSchemaValidator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$6(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setSchemaValidatorFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
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

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "feature-not-recognized"

    invoke-static {v2, p2, v1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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

.method private setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

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


# virtual methods
.method public declared-synchronized getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :try_start_1
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-super {p0, v0}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return p1

    :catch_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method getFeature0(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_0

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$3(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method getProperty0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method declared-synchronized restoreInitState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-super {p0, v2, v1}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v2, v1}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_0
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    const-string p1, "http://apache.org/xml/properties/security-manager"

    if-eqz p2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception p1

    if-nez p2, :cond_2

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    throw p1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorFeature(Ljava/lang/String;Z)V

    :cond_6
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_7
    :try_start_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method setFeature0(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_9

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->isValidating()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    const-string p2, "http://www.w3.org/2001/XMLSchema"

    invoke-static {p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    const-string p1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string p2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-super {p0, v0}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string p2, "http://www.w3.org/2001/XMLSchema"

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {p2, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    const-string p1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "schema-not-supported"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "schema-already-specified"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-super {p0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "jaxp-order-not-supported"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v3, v1

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v1, v3, v2

    invoke-static {p2, v0, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "schema-already-specified"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_c
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method setProperty0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
