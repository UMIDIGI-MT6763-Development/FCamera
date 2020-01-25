.class Lcom/mediatek/plugin/builder/PluginDescriptorBuilder;
.super Lcom/mediatek/plugin/builder/Builder;
.source "PluginDescriptorBuilder.java"


# static fields
.field public static final REQUIRE_MAX_HOST_VERSION:Ljava/lang/String; = "require-max-host-version"

.field public static final REQUIRE_MIN_HOST_VERSION:Ljava/lang/String; = "require-min-host-version"

.field private static final SUPPORT_TAG:Ljava/lang/String; = "plugin"

.field public static final VALUE_CLASS:Ljava/lang/String; = "class"

.field public static final VALUE_ID:Ljava/lang/String; = "id"

.field public static final VALUE_NAME:Ljava/lang/String; = "name"

.field public static final VALUE_REQUEST_ID:Ljava/lang/String; = "require-plugin-id"

.field public static final VALUE_VERSION:Ljava/lang/String; = "version"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/builder/Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedTag()Ljava/lang/String;
    .locals 1

    const-string v0, "plugin"

    return-object v0
.end method

.method public parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;
    .locals 4

    new-instance v0, Lcom/mediatek/plugin/element/PluginDescriptor;

    invoke-direct {v0}, Lcom/mediatek/plugin/element/PluginDescriptor;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->name:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->version:I

    :cond_0
    const-string v1, "class"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "com.mediatek.plugin.Plugin"

    iput-object v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    :cond_1
    const-string v1, "require-plugin-id"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v3, "\\|"

    invoke-interface {p2, v1, v3}, Lcom/mediatek/plugin/res/IResource;->getString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->requiredPluginIds:[Ljava/lang/String;

    :cond_2
    const-string p2, "require-max-host-version"

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMaxHostVersion:I

    :cond_3
    const-string p2, "require-min-host-version"

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMinHostVersion:I

    :cond_4
    return-object v0
.end method
