.class Lcom/mediatek/plugin/builder/ExtensionPointBuilder;
.super Lcom/mediatek/plugin/builder/Builder;
.source "ExtensionPointBuilder.java"


# static fields
.field private static final SUPPORT_TAG:Ljava/lang/String; = "extension-point"

.field private static final TAG:Ljava/lang/String; = "PluginManager/ExtensionPointBuilder"

.field private static final VALUE_CLASS:Ljava/lang/String; = "class"

.field private static final VALUE_ID:Ljava/lang/String; = "id"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/builder/Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedTag()Ljava/lang/String;
    .locals 1

    const-string v0, "extension-point"

    return-object v0
.end method

.method public parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;
    .locals 2

    const-string p2, "PluginManager/ExtensionPointBuilder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<parser> START_TAG  >>>>>>>> name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-direct {p2}, Lcom/mediatek/plugin/element/ExtensionPoint;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mediatek/plugin/element/ExtensionPoint;->id:Ljava/lang/String;

    const-string v0, "class"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    return-object p2
.end method
