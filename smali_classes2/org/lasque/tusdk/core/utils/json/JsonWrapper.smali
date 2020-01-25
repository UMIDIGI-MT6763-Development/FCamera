.class public Lorg/lasque/tusdk/core/utils/json/JsonWrapper;
.super Ljava/lang/Object;


# instance fields
.field protected mJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v1, :cond_1

    const/4 p2, 0x0

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p2, v0, p2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public static deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p2, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonSubWithType(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonArrayWithType(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeArray(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p0, p2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonArrayWithType(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->mJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->mJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->mJson:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getJsonArrayWithType(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->setJson(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getJsonSubWithType(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->mJson:Lorg/json/JSONObject;

    invoke-direct {p0, v1, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->setJson(Lorg/json/JSONObject;)V

    return-object p2
.end method

.method public getJsonWithType(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Lorg/json/JSONObject;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    return-object p1
.end method

.method public getJsonWithType(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Lorg/json/JSONObject;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    return-object p1
.end method

.method public getJsonWithType(Lorg/json/JSONObject;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->setJson(Lorg/json/JSONObject;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v0
.end method
