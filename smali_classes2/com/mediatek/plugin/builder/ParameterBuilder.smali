.class Lcom/mediatek/plugin/builder/ParameterBuilder;
.super Lcom/mediatek/plugin/builder/Builder;
.source "ParameterBuilder.java"


# static fields
.field private static final SUPPORT_TAG:Ljava/lang/String; = "parameter"

.field private static final VALUE_ID:Ljava/lang/String; = "id"

.field private static final VALUE_V:Ljava/lang/String; = "value"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/builder/Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedTag()Ljava/lang/String;
    .locals 1

    const-string v0, "parameter"

    return-object v0
.end method

.method public parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;
    .locals 2

    new-instance p2, Lcom/mediatek/plugin/element/Parameter;

    invoke-direct {p2}, Lcom/mediatek/plugin/element/Parameter;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mediatek/plugin/element/Parameter;->id:Ljava/lang/String;

    const-string v0, "value"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    return-object p2
.end method
