.class Lcom/baidu/location/g/b$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Lcom/baidu/location/BDLocation;

.field c:Z

.field final synthetic d:Lcom/baidu/location/g/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/g/b;Lcom/baidu/location/BDLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/g/b$a;->c:Z

    iput-object p2, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g/b$a;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/g/b$a;->av()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/g/b$a;->as()V

    :goto_0
    return-void
.end method

.method public au()V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/location/g/b$a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "https://sapi.skyhookwireless.com/wps2/reverse-geo"

    iput-object v0, p0, Lcom/baidu/location/g/b$a;->c5:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ReverseGeoRQ xmlns=\"http://skyhookwireless.com/wps/2005\"\nversion=\"2.24\"\nstreet-address-lookup=\"full\">\n<authentication version=\"2.2\">\n<key key=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/Jni;->dG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "username=\"BAIDULOC\"/></authentication>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<point>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</point>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</ReverseGeoRQ>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g/b$a;->da:Ljava/lang/String;

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "country|country_code|province|city|city_code|street|street_number|district"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/k;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?&x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&r=100&prodname=searchbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g/b$a;->c5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/k;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?&x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&r=100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g/b$a;->c5:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public int(Z)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/baidu/location/g/b$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_e

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/g/b$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v3, "utf-8"

    invoke-static {p1, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v3, p0, Lcom/baidu/location/g/b$a;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/baidu/location/g/a;

    invoke-direct {v3, p1}, Lcom/baidu/location/g/a;-><init>(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/baidu/location/g/a;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/baidu/location/g/a;->e:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/location/g/a;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, v3, Lcom/baidu/location/g/a;->i:Ljava/lang/String;

    :cond_0
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v3, Lcom/baidu/location/g/a;->j:Ljava/lang/String;

    :cond_1
    iget-object v6, v3, Lcom/baidu/location/g/a;->f:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, v3, Lcom/baidu/location/g/a;->k:Ljava/lang/String;

    :cond_2
    const-string v7, "skyhook rgc metro2 = "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/baidu/location/g/a;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v3, Lcom/baidu/location/g/a;->g:Ljava/lang/String;

    iget-object v3, v3, Lcom/baidu/location/g/a;->h:Ljava/lang/String;

    new-instance v8, Lcom/baidu/location/Address$Builder;

    invoke-direct {v8}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v8, p1}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object p1

    :goto_0
    iget-object v3, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3, p1}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    goto/16 :goto_9

    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "addr"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "addr"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "country"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v3, "country"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    const-string v5, "country_code"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "country_code"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    const-string v6, "province"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "province"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_3
    const-string v7, "city"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "city"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    const-string v8, "city_code"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "city_code"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    move-object v8, v4

    :goto_5
    const-string v9, "district"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "district"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_6

    :cond_9
    move-object v9, v4

    :goto_6
    const-string v10, "street"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "street"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    move-object v10, v4

    :goto_7
    const-string v11, "streetNumber"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "street_number"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_8

    :cond_b
    move-object p1, v4

    :goto_8
    new-instance v4, Lcom/baidu/location/Address$Builder;

    invoke-direct {v4}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    :goto_9
    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->d()D

    move-result-wide v3

    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->c()D

    move-result-wide v5

    const-string p1, "gps2gcj"

    invoke-static {v3, v4, v5, v6, p1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object p1

    iget-object v3, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    const-string v4, "gcj02"

    invoke-virtual {v3, v4}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    aget-wide v4, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v1, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    :cond_d
    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->d()D

    move-result-wide v3

    iget-object p1, p0, Lcom/baidu/location/g/b$a;->d:Lcom/baidu/location/g/b;

    iget-object p1, p1, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    invoke-virtual {p1}, Lcom/baidu/location/g/a;->c()D

    move-result-wide v5

    const-string p1, "gps2gcj"

    invoke-static {v3, v4, v5, v6, p1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object p1

    iget-object v3, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    const-string v4, "gcj02"

    invoke-virtual {v3, v4}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    aget-wide v4, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v1, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    :cond_f
    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/g/b$a;->b:Lcom/baidu/location/BDLocation;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :catch_0
    :goto_a
    return-void
.end method
