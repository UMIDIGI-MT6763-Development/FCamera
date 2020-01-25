.class Lcom/mediatek/plugin/preload/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "PluginManager/XMLParser"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mResParser:Lcom/mediatek/plugin/res/IResource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/mediatek/plugin/res/IResource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/plugin/preload/XMLParser;->mResParser:Lcom/mediatek/plugin/res/IResource;

    iput-object p1, p0, Lcom/mediatek/plugin/preload/XMLParser;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/mediatek/plugin/preload/XMLParser;->mResParser:Lcom/mediatek/plugin/res/IResource;

    return-void
.end method


# virtual methods
.method public parserXML()Lcom/mediatek/plugin/element/Element;
    .locals 9

    iget-object v0, p0, Lcom/mediatek/plugin/preload/XMLParser;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ">>>>XMLParser-parserXML"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/plugin/element/Element;

    invoke-direct {v0}, Lcom/mediatek/plugin/element/Element;-><init>()V

    const-string v2, "Root"

    iput-object v2, v0, Lcom/mediatek/plugin/element/Element;->id:Ljava/lang/String;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    :try_start_0
    const-string v3, ">>>>XMLParser-parserXML-new XmlPullParserFactory"

    invoke-static {v3}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v4, ">>>>XMLParser-parserXML-new XmlPullParser"

    invoke-static {v4}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v4, ">>>>XMLParser-parserXML-setInput"

    invoke-static {v4}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/plugin/preload/XMLParser;->mInputStream:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, -0x1

    move-object v5, v1

    :goto_0
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    :try_start_1
    const-string v4, ">>>>XMLParser-parserXML-while"

    invoke-static {v4}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v4, ">>>>XMLParser-parserXML-while-getEventType"

    invoke-static {v4}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v6, "PluginManager/XMLParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<parserXML> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " || eventType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stack = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/plugin/element/Element;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Element;

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v5, v1, v4}, Lcom/mediatek/plugin/builder/Builder;->bind(Lcom/mediatek/plugin/element/Element;Lcom/mediatek/plugin/element/Element;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :pswitch_1
    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/plugin/builder/BuilderFactory;->getBuilder(Ljava/lang/String;)Lcom/mediatek/plugin/builder/Builder;

    move-result-object v4

    const-string v5, "PluginManager/XMLParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<parserXML> builder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/mediatek/plugin/preload/XMLParser;->mResParser:Lcom/mediatek/plugin/res/IResource;

    invoke-virtual {v4, v3, v5}, Lcom/mediatek/plugin/builder/Builder;->parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v5, v4

    goto :goto_1

    :cond_3
    move-object v5, v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v4, ">>>>XMLParser-parserXML-while-next"

    invoke-static {v4}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :goto_2
    :try_start_4
    const-string v2, "PluginManager/XMLParser"

    const-string v3, "<parserXML>"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    const-string v2, "PluginManager/XMLParser"

    const-string v3, "<parserXML>"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
