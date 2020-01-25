.class final Lmf/org/apache/xml/serialize/SerializerFactoryImpl;
.super Lmf/org/apache/xml/serialize/SerializerFactory;
.source "SerializerFactoryImpl.java"


# instance fields
.field private _method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "http://apache.org/xml/serializer"

    const-string v1, "MethodNotSupported"

    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {v0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmf/org/apache/xml/serialize/HTMLSerializer;

    invoke-direct {v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v1, "xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmf/org/apache/xml/serialize/XHTMLSerializer;

    invoke-direct {v0, p1}, Lmf/org/apache/xml/serialize/XHTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v0

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lmf/org/apache/xml/serialize/TextSerializer;

    invoke-direct {p1}, Lmf/org/apache/xml/serialize/TextSerializer;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "http://apache.org/xml/serializer"

    const-string v1, "MethodNotSupported"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getSupportedMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 0

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-object p2
.end method

.method public makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v0
.end method
