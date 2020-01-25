.class public Lcom/mediatek/plugin/preload/SchemaValidate;
.super Ljava/lang/Object;
.source "SchemaValidate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/SchemaValidate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateXMLFile(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 2

    const-string v0, ">>>>SchemaValidate-validateXMLFile"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    :try_start_0
    const-string v0, ">>>>SchemaValidate-validateXMLFile-new-StreamSource-xsd"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string p1, ">>>>SchemaValidate-validateXMLFile-new-StreamSource-xml"

    invoke-static {p1}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {p1, p2}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string p2, ">>>>SchemaValidate-validateXMLFile-new-XMLSchemaFactory"

    invoke-static {p2}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance p2, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;

    invoke-direct {p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;-><init>()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v1, ">>>>SchemaValidate-validateXMLFile-newSchema"

    invoke-static {v1}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object p2

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v0, ">>>>SchemaValidate-validateXMLFile-new-newValidator"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmf/javax/xml/validation/Schema;->newValidator()Lmf/javax/xml/validation/Validator;

    move-result-object p2

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v0, ">>>>SchemaValidate-validateXMLFile-validate"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lmf/javax/xml/validation/Validator;->validate(Lmf/javax/xml/transform/Source;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "PluginManager/SchemaValidate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<validateXMLFile> IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "PluginManager/SchemaValidate"

    const-string v0, "<validateXMLFile> SAXException: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return p1
.end method
