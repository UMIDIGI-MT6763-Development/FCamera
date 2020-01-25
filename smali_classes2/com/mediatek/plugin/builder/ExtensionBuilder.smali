.class Lcom/mediatek/plugin/builder/ExtensionBuilder;
.super Lcom/mediatek/plugin/builder/Builder;
.source "ExtensionBuilder.java"


# static fields
.field private static final SUPPORT_TAG:Ljava/lang/String; = "extension"

.field private static final TAG:Ljava/lang/String; = "PluginManager/ExtensionBuilder"

.field private static final VALUE_CLASS:Ljava/lang/String; = "class"

.field private static final VALUE_ICON:Ljava/lang/String; = "icon"

.field private static final VALUE_ID:Ljava/lang/String; = "id"

.field private static final VALUE_NAME:Ljava/lang/String; = "name"

.field private static final VALUE_PLUGIN_ID:Ljava/lang/String; = "plugin-id"

.field private static final VALUE_POINT_ID:Ljava/lang/String; = "point-id"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/builder/Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedTag()Ljava/lang/String;
    .locals 1

    const-string v0, "extension"

    return-object v0
.end method

.method public parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;
    .locals 3

    const-string v0, "PluginManager/ExtensionBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<parser> START_TAG  >>>>>>>> name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mediatek/plugin/element/Extension;

    invoke-direct {v0}, Lcom/mediatek/plugin/element/Extension;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/Extension;->id:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mediatek/plugin/res/IResource;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/Extension;->name:Ljava/lang/String;

    const-string v1, "plugin-id"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/Extension;->pluginId:Ljava/lang/String;

    const-string v1, "point-id"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/Extension;->extensionPointId:Ljava/lang/String;

    const-string v1, "icon"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Lcom/mediatek/plugin/res/IResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/mediatek/plugin/element/Extension;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const-string p2, "class"

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    const-string p2, "PluginManager/ExtensionBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<parser> START_TAG  <<<<<<<<<< name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
