.class public abstract Lmf/javax/xml/stream/XMLOutputFactory;
.super Ljava/lang/Object;
.source "XMLOutputFactory.java"


# static fields
.field static final DEFAULIMPL:Ljava/lang/String; = "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

.field public static final IS_REPAIRING_NAMESPACES:Ljava/lang/String; = "javax.xml.stream.isRepairingNamespaces"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lmf/javax/xml/stream/XMLOutputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const-string v0, "javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLOutputFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/javax/xml/stream/XMLOutputFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {p0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLInputFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {p0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p1
.end method

.method public static newInstance()Lmf/javax/xml/stream/XMLOutputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const-string v0, "javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createXMLEventWriter(Ljava/io/OutputStream;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/Writer;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Lmf/javax/xml/transform/Result;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/Writer;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Lmf/javax/xml/transform/Result;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
