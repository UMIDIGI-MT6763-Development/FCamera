.class public Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/utils/json/DataBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Lorg/json/JSONObject;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->setJson(Lorg/json/JSONObject;)V

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/reflect/Field;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)V
    .locals 2

    const-class v0, Lorg/lasque/tusdk/core/utils/json/DataBase;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/json/DataBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->b(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->c(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->d(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/type/ClazzType;->getType(I)Lorg/lasque/tusdk/core/type/ClazzType;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->b(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Lorg/lasque/tusdk/core/type/ClazzType;Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONArray;)V
    .locals 9

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->genericCollectionType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "add"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-class v4, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v6

    :goto_0
    if-ge v5, v4, :cond_5

    invoke-static {p3, v5}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v7

    if-eqz v7, :cond_3

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v6

    invoke-static {v1, v2, v8}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v6

    :goto_1
    if-ge v4, v0, :cond_5

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1, p2, v2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 10

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->genericCollectionTypes(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "put"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_4

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v0, v2, v8}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1, p2, v2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/type/ClazzType;Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 5

    sget-object v0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/type/ClazzType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseCalendar(J)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseGregorianCalendar(J)Ljava/util/GregorianCalendar;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseDate(J)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p4, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p2, p4, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p2, p4, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    :pswitch_6
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, p4, p1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    :pswitch_7
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, p4, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    :pswitch_8
    invoke-interface {p3}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/type/ClazzType;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/type/ClazzType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-wide/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    goto :goto_0

    :pswitch_2
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/util/GregorianCalendar;

    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide p2

    goto :goto_0

    :pswitch_3
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    :goto_0
    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_1
    invoke-static {p4, p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_4
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_1

    :cond_0
    const-string p2, "0"

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->genericCollectionType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-class v1, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->buildJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private b(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 2

    const-class v0, Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p4}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJsonArrayForDB(Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONArray;)V

    return-void

    :cond_0
    invoke-static {p2, p4}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJsonObjectForDB(Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-class p4, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p3, p2}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p0, p4, p2}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    check-cast p3, Ljava/util/Map;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private c(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/type/ClazzType;->getType(I)Lorg/lasque/tusdk/core/type/ClazzType;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Lorg/lasque/tusdk/core/type/ClazzType;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    instance-of p1, p3, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p3, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    invoke-interface {p2}, Lorg/lasque/tusdk/core/utils/json/DataBase;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;->buildJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public bindJson(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/utils/json/DataBase;

    invoke-direct {p0, v2, v1, p1, p2}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public buildJson(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;)Lorg/json/JSONObject;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/utils/json/DataBase;

    invoke-direct {p0, v3, v2, p1, v0}, Lorg/lasque/tusdk/core/utils/json/DataBaseNexus;->c(Ljava/lang/reflect/Field;Lorg/lasque/tusdk/core/utils/json/DataBase;Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
