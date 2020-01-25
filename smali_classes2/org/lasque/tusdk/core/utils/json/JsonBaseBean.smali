.class public abstract Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildJson()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->a(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->buildJson(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->buildJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setJson(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->a(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->bindJson(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->trace(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
