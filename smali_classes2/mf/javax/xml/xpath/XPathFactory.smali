.class public abstract Lmf/javax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"

.field private static ss:Lmf/javax/xml/xpath/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/xpath/SecuritySupport;-><init>()V

    sput-object v0, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newInstance()Lmf/javax/xml/xpath/XPathFactory;
    .locals 4

    :try_start_0
    const-string v0, "http://java.sun.com/jaxp/xpath/dom"

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0
    :try_end_0
    .catch Lmf/javax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v0}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lmf/javax/xml/xpath/XPathFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    new-instance v1, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v1, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No XPathFactory implementation found for the object model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    sget-object p2, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {p2}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    new-instance v0, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v0, p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lmf/javax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance p2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t support given "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " object model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No XPathFactory implementation found for the object model: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract newXPath()Lmf/javax/xml/xpath/XPath;
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract setXPathFunctionResolver(Lmf/javax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Lmf/javax/xml/xpath/XPathVariableResolver;)V
.end method
