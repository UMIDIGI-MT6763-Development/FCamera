.class public Lcom/freeme/camera/common/relation/RelationParser;
.super Ljava/lang/Object;
.source "RelationParser.java"


# static fields
.field private static final ATTRIBUTE_BODY_KEYS:Ljava/lang/String; = "bodyKeys"

.field private static final ATTRIBUTE_ENTRY_VALUES:Ljava/lang/String; = "entryValues"

.field private static final ATTRIBUTE_HEADER_KEY:Ljava/lang/String; = "headerKey"

.field private static final ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "RelationParser"

.field private static final TAG_BODY:Ljava/lang/String; = "Body"

.field private static final TAG_HEADER:Ljava/lang/String; = "Header"

.field private static final TAG_RELATION:Ljava/lang/String; = "Relation"

.field private static final TAG_RELATION_GROUP:Ljava/lang/String; = "RelationGroup"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 13

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7f663153

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v9, v10, :cond_3

    const v10, -0x1d31a1e4

    if-eq v9, v10, :cond_2

    const v6, 0x1fadc2

    if-eq v9, v6, :cond_1

    const v6, 0x496219c3

    if-eq v9, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "RelationGroup"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_1
    const-string v6, "Body"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v11

    goto :goto_2

    :cond_2
    const-string v9, "Relation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_3
    const-string v6, "Header"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v12

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v8

    :goto_2
    packed-switch v6, :pswitch_data_0

    new-instance v0, Landroid/view/InflateException;

    goto :goto_4

    :pswitch_0
    if-ne v3, v12, :cond_5

    const-string v3, "key"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "value"

    invoke-interface {v0, v2, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "entryValues"

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    goto :goto_3

    :pswitch_1
    if-ne v3, v12, :cond_5

    const-string v3, "key"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "value"

    invoke-interface {v0, v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/freeme/camera/common/relation/Relation$Builder;

    invoke-direct {v6, v3, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_3

    :pswitch_2
    if-ne v3, v11, :cond_5

    invoke-virtual {v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_3

    :pswitch_3
    if-ne v3, v12, :cond_5

    const-string v3, "headerKey"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bodyKeys"

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v6}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    invoke-virtual {v6, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    move-object v4, v6

    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v4

    :catch_0
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v0, Landroid/view/InflateException;

    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parse(Landroid/content/Context;I)Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/RelationParser;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/RelationParser;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/relation/RelationParser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
