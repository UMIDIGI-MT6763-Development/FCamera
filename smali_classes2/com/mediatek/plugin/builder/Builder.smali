.class public abstract Lcom/mediatek/plugin/builder/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/mediatek/plugin/element/Element;Lcom/mediatek/plugin/element/Element;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/mediatek/plugin/element/Element;->addChild(Lcom/mediatek/plugin/element/Element;)V

    invoke-virtual {p2, p1}, Lcom/mediatek/plugin/element/Element;->setParent(Lcom/mediatek/plugin/element/Element;)V

    return-void
.end method

.method public abstract getSupportedTag()Ljava/lang/String;
.end method

.method public abstract parser(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/plugin/res/IResource;)Lcom/mediatek/plugin/element/Element;
.end method
