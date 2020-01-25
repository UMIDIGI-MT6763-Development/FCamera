.class public abstract Lmf/javax/xml/validation/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# static fields
.field private static ss:Lmf/javax/xml/validation/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/javax/xml/validation/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/validation/SecuritySupport;-><init>()V

    sput-object v0, Lmf/javax/xml/validation/SchemaFactory;->ss:Lmf/javax/xml/validation/SecuritySupport;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 3

    sget-object v0, Lmf/javax/xml/validation/SchemaFactory;->ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v0}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lmf/javax/xml/validation/SchemaFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    new-instance v1, Lmf/javax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v1, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No SchemaFactory that implements the schema language specified by: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could be loaded"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/validation/SchemaFactory;
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lmf/javax/xml/validation/SchemaFactory;->ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {p2}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    new-instance v0, Lmf/javax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v0, p2}, Lmf/javax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lmf/javax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not implement the schema language specified by: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be loaded to implement the schema language specified by: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the name parameter is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the name parameter is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
.end method

.method public abstract isSchemaLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract newSchema()Lmf/javax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public newSchema(Ljava/io/File;)Lmf/javax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object p1

    return-object p1
.end method

.method public newSchema(Ljava/net/URL;)Lmf/javax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object p1

    return-object p1
.end method

.method public newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lmf/javax/xml/transform/Source;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lmf/javax/xml/validation/SchemaFactory;->newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object p1

    return-object p1
.end method

.method public abstract newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the name parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "the name parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
.end method
