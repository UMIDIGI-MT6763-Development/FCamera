.class Lcom/baidu/location/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field private l:D

.field private m:D

.field private n:F

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/g/a;->l:D

    iput-wide v0, p0, Lcom/baidu/location/g/a;->m:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/g/a;->n:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g/a;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g/a;->p:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/g/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/g/a;->l:D

    iput-wide v0, p0, Lcom/baidu/location/g/a;->m:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/g/a;->n:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g/a;->o:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/g/a;->p:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->b:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->d:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->e:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->f:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->g:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->h:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->i:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->j:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/g/a;->k:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    move v3, v0

    :goto_0
    if-eq p1, v1, :cond_f

    if-eqz p1, :cond_e

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LocationRS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ReverseGeoRS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_0
    move v3, v1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/g/a;->l:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    :goto_1
    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/location/g/a;->p:Z

    goto/16 :goto_2

    :cond_2
    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v4, :cond_3

    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/g/a;->m:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_3
    :try_start_4
    const-string v4, "hpe"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/baidu/location/g/a;->n:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_4
    :try_start_6
    const-string v4, "country"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v4, :cond_5

    :try_start_7
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->d:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->c:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :cond_5
    :try_start_9
    const-string v4, "province"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v4, :cond_6

    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->e:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :cond_6
    :try_start_b
    const-string v4, "region"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v4, :cond_7

    :try_start_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->f:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    :cond_7
    :try_start_d
    const-string v4, "street-number"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    if-eqz v4, :cond_8

    :try_start_e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->h:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_2

    :cond_8
    :try_start_f
    const-string v4, "city"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    if-eqz v4, :cond_9

    :try_start_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->b:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_2

    :cond_9
    :try_start_11
    const-string v4, "address-line"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    if-eqz v4, :cond_a

    :try_start_12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->g:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_2

    :cond_a
    :try_start_13
    const-string v4, "state"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    if-eqz v4, :cond_b

    :try_start_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->i:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_2

    :cond_b
    :try_start_15
    const-string v4, "metro1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    if-eqz v4, :cond_c

    :try_start_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->j:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_2

    :cond_c
    :try_start_17
    const-string v4, "metro2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    if-eqz v4, :cond_d

    :try_start_18
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/g/a;->k:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    goto :goto_2

    :cond_d
    :try_start_19
    const-string v4, "error"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_1

    :catch_2
    :cond_e
    :goto_2
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    goto/16 :goto_0

    :catch_3
    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/g/a;->c:Ljava/lang/String;

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g/a;->c:Ljava/lang/String;

    const-string v1, "Taiwan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g/a;->d:Ljava/lang/String;

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/g/a;->p:Z

    return v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/g/a;->l:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/g/a;->m:D

    return-wide v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/g/a;->n:F

    return v0
.end method
