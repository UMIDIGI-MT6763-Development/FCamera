.class final Lcom/baidu/location/c/j$a;
.super Lcom/baidu/location/b/m;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/c/j;

.field private c:I

.field private d:J

.field private e:J

.field private f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/j;)V
    .locals 4

    iput-object p1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/c/j$a;->c:I

    iput-boolean p1, p0, Lcom/baidu/location/c/j$a;->f:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/location/c/j$a;->d:J

    iput-wide v0, p0, Lcom/baidu/location/c/j$a;->e:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/j$a;->c7:Ljava/util/List;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "&ver=%s&cuid=%s&prod=%s:%s&sdk=%.2f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "1"

    aput-object v3, v2, p1

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    sget-object p1, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object p1, v2, v3

    sget-object p1, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const p1, 0x40c428f6    # 6.13f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/c/j$a;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/j;Lcom/baidu/location/c/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/j$a;-><init>(Lcom/baidu/location/c/j;)V

    return-void
.end method

.method private a()V
    .locals 10

    iget-boolean v0, p0, Lcom/baidu/location/c/j$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v5}, Lcom/baidu/location/c/j;->u(Lcom/baidu/location/c/j;)Lcom/baidu/location/c/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/c/d;->d()Ljava/io/File;

    move-result-object v5

    const-string v6, "ofl.config"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/baidu/location/c/j$a;->e:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "ol"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;Z)Z

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "fl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;Z)Z

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "on"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;Z)Z

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "wn"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;Z)Z

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "oc"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;Z)Z

    const-string v6, "t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/location/c/j$a;->e:J

    const-string v6, "cplist"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "cplist"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;[Ljava/lang/String;)[Ljava/lang/String;

    :cond_1
    const-string v6, "rgcgp"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "rgcgp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;I)I

    :cond_2
    const-string v6, "rgcon"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "rgcon"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->f(Lcom/baidu/location/c/j;Z)Z

    :cond_3
    const-string v6, "addrup"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "addrup"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;I)I

    :cond_4
    const-string v6, "poiup"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "poiup"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;I)I

    :cond_5
    const-string v6, "oflp"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "oflp"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;D)D

    :cond_6
    const-string v7, "1"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;D)D

    :cond_7
    const-string v7, "2"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "2"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;D)D

    :cond_8
    const-string v7, "3"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "3"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;D)D

    :cond_9
    const-string v7, "4"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "4"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;D)D

    :cond_a
    const-string v6, "onlt"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "onlt"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;J)J

    :cond_b
    const-string v7, "1"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "1"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;J)J

    :cond_c
    const-string v7, "2"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "2"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;J)J

    :cond_d
    const-string v7, "3"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "3"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;J)J

    :cond_e
    const-string v7, "4"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v8, "4"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;J)J

    :cond_f
    const-string v6, "minapn"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v7, "minapn"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;I)I

    :cond_10
    iget-wide v5, p0, Lcom/baidu/location/c/j$a;->e:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    :cond_11
    iget-wide v4, p0, Lcom/baidu/location/c/j$a;->e:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_12

    iget-wide v4, p0, Lcom/baidu/location/c/j$a;->e:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_12

    move v0, v1

    :catch_0
    :cond_12
    iget-wide v4, p0, Lcom/baidu/location/c/j$a;->e:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_14

    :cond_13
    invoke-direct {p0}, Lcom/baidu/location/c/j$a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v0}, Lcom/baidu/location/c/j;->u(Lcom/baidu/location/c/j;)Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->char()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/b/k;->for(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/baidu/location/c/j$a;->f:Z

    invoke-virtual {p0}, Lcom/baidu/location/c/j$a;->ao()V

    :cond_14
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/j$a;->a()V

    return-void
.end method

.method private b()Z
    .locals 7

    iget v0, p0, Lcom/baidu/location/c/j$a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/baidu/location/c/j$a;->d:J

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iput v2, p0, Lcom/baidu/location/c/j$a;->c:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/location/c/j$a;->d:J

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public au()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/c/j$a;->c7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/j$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "qt"

    const-string v3, "conf"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/c/j$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "req"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/c/d;->ak:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/j$a;->c5:Ljava/lang/String;

    return-void
.end method

.method public int(Z)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/baidu/location/c/j$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_19

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/c/j$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "1"

    const-wide/16 v2, 0x0

    const-string v4, "ofl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ofl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    const-string v4, "ver"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "ver"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-wide/16 v4, 0x1

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v4, v0}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;Z)Z

    :cond_2
    const-wide/16 v4, 0x2

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v4, v0}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;Z)Z

    :cond_3
    const-wide/16 v4, 0x4

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v4, v0}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;Z)Z

    :cond_4
    const-wide/16 v4, 0x8

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v4, v0}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;Z)Z

    :cond_5
    const-wide/16 v4, 0x10

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v4, v0}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;Z)Z

    :cond_6
    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v2, v0}, Lcom/baidu/location/c/j;->f(Lcom/baidu/location/c/j;Z)Z

    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cplist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v4, "cplist"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;[Ljava/lang/String;)[Ljava/lang/String;

    const-string v3, "cplist"

    const-string v4, "cplist"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v3, "bklist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "bklist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-virtual {v4, v3}, Lcom/baidu/location/c/j;->a([Ljava/lang/String;)V

    :cond_9
    const-string v3, "para"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "para"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rgcgp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v4, "rgcgp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;I)I

    :cond_a
    const-string v3, "addrup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v4, "addrup"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;I)I

    :cond_b
    const-string v3, "poiup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v4, "poiup"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;I)I

    :cond_c
    const-string v3, "oflp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "oflp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;D)D

    :cond_d
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;D)D

    :cond_e
    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;D)D

    :cond_f
    const-string v4, "3"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;D)D

    :cond_10
    const-string v4, "4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;D)D

    :cond_11
    const-string v3, "onlt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "onlt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;J)J

    :cond_12
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;J)J

    :cond_13
    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;J)J

    :cond_14
    const-string v4, "3"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;J)J

    :cond_15
    const-string v4, "4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;J)J

    :cond_16
    const-string v3, "minapn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    const-string v4, "minapn"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;I)I

    :cond_17
    const-string v1, "ol"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "fl"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->b(Lcom/baidu/location/c/j;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "on"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->c(Lcom/baidu/location/c/j;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "wn"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->d(Lcom/baidu/location/c/j;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "oc"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->e(Lcom/baidu/location/c/j;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/c/j$a;->e:J

    const-string v1, "t"

    iget-wide v3, p0, Lcom/baidu/location/c/j$a;->e:J

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rgcon"

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->f(Lcom/baidu/location/c/j;)Z

    move-result v1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "rgcgp"

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->g(Lcom/baidu/location/c/j;)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "0"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->h(Lcom/baidu/location/c/j;)D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "1"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->i(Lcom/baidu/location/c/j;)D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "2"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->j(Lcom/baidu/location/c/j;)D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "3"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->k(Lcom/baidu/location/c/j;)D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "4"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->l(Lcom/baidu/location/c/j;)D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "oflp"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "0"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->m(Lcom/baidu/location/c/j;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "1"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->n(Lcom/baidu/location/c/j;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "2"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->o(Lcom/baidu/location/c/j;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "3"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->p(Lcom/baidu/location/c/j;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "4"

    iget-object v3, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v3}, Lcom/baidu/location/c/j;->q(Lcom/baidu/location/c/j;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "onlt"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "addrup"

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->r(Lcom/baidu/location/c/j;)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "poiup"

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->s(Lcom/baidu/location/c/j;)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "minapn"

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->t(Lcom/baidu/location/c/j;)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/location/c/j$a;->b:Lcom/baidu/location/c/j;

    invoke-static {v1}, Lcom/baidu/location/c/j;->u(Lcom/baidu/location/c/j;)Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->d()Ljava/io/File;

    move-result-object v1

    const-string v3, "ofl.config"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_18
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_19
    iget p1, p0, Lcom/baidu/location/c/j$a;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/location/c/j$a;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/j$a;->d:J

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/c/j$a;->f:Z

    return-void
.end method
