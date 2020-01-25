.class final Lcom/baidu/location/c/a$b;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/c/a;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/location/c/a;

.field private g:Z

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method constructor <init>(Lcom/baidu/location/c/a;Lcom/baidu/location/c/a;Z)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/c/a$b;->g:Z

    iput p1, p0, Lcom/baidu/location/c/a$b;->h:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/location/c/a$b;->i:J

    iput-wide v0, p0, Lcom/baidu/location/c/a$b;->j:J

    iput-wide v0, p0, Lcom/baidu/location/c/a$b;->k:J

    iput-wide v0, p0, Lcom/baidu/location/c/a$b;->l:J

    iput-object p2, p0, Lcom/baidu/location/c/a$b;->f:Lcom/baidu/location/c/a;

    if-eqz p3, :cond_0

    const-string p1, "load"

    goto :goto_0

    :cond_0
    const-string p1, "update"

    :goto_0
    iput-object p1, p0, Lcom/baidu/location/c/a$b;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/c/a$b;->c7:Ljava/util/List;

    sget-object p1, Lcom/baidu/location/c/d;->ak:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/c/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a$b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/a$b;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/a$b;)Lcom/baidu/location/c/a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/a$b;->f:Lcom/baidu/location/c/a;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/c/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p3, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    const-string p3, "http://%s/%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/c/a$b;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/c/a$b;->ao()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/a$b;->g:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/a$b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/c/a$b;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/a$b;->i:J

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/a$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->b()V

    return-void
.end method

.method private c()Z
    .locals 7

    iget v0, p0, Lcom/baidu/location/c/a$b;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/baidu/location/c/a$b;->i:J

    const-wide/32 v5, 0x2932e00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iput v2, p0, Lcom/baidu/location/c/a$b;->h:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/location/c/a$b;->i:J

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private d()V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->i()Z

    move-result v0

    const-wide/32 v1, 0x5265c00

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcom/baidu/location/c/a$b;->j:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    add-long/2addr v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-wide v5, p0, Lcom/baidu/location/c/a$b;->k:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    add-long/2addr v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->l()Lcom/baidu/location/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/baidu/location/c/a$b;->ao()V

    :cond_6
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cuid"

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ver"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "prod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v3}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM %s WHERE frequency>%d ORDER BY frequency DESC LIMIT %d;"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "CL"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v6, v10

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v6, v12

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    const-string v11, "cell"

    invoke-virtual {v1, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_1
    iget-object v6, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v6}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v11, "SELECT * FROM %s WHERE frequency>%d ORDER BY frequency DESC LIMIT %d;"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v13, "AP"

    aput-object v13, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v12

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_3

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_2
    const-string v7, "ap"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v6, "type"

    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cuid"

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v7

    iget-object v7, v7, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ver"

    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "prod"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v4, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    const-string v4, "model"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_6
    if-eqz v3, :cond_a

    :goto_3
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_7

    :catchall_0
    move-exception v1

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-object v5, v0

    goto :goto_6

    :catch_2
    move-object v3, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v0

    :goto_4
    if-eqz v0, :cond_7

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_7
    if-eqz v3, :cond_8

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_8
    throw v1

    :catch_5
    move-object v2, v0

    move-object v3, v2

    :goto_5
    move-object v5, v3

    :catch_6
    :goto_6
    if-eqz v5, :cond_9

    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_9
    if-eqz v3, :cond_a

    goto :goto_3

    :catch_8
    :cond_a
    :goto_7
    if-eqz v2, :cond_c

    const-string v1, "model"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-wide v3, p0, Lcom/baidu/location/c/a$b;->l:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_c

    :cond_b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/c/a$b;->l:J

    :cond_c
    if-eqz v2, :cond_d

    const-string v1, "model"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "type"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ver"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cuid"

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "prod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/a$b;->k:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->l()Lcom/baidu/location/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/k;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "type"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ver"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cuid"

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "prod"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rgc"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/c/a$b;->k:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v0

    :catch_1
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private i()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT COUNT(*) FROM AP;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v3}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT COUNT(*) FROM CL"

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    if-eqz v0, :cond_6

    :goto_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_4
    throw v1

    :catch_3
    move-object v2, v0

    :catch_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_5
    if-eqz v0, :cond_6

    goto :goto_0

    :catch_6
    :cond_6
    :goto_2
    return v1
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/c/a$b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->d(Lcom/baidu/location/c/a;)Lcom/baidu/location/c/a$b;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/location/c/a$b;->d()V

    :cond_0
    return-void
.end method

.method public au()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/a$b;->g:Z

    iget-object v0, p0, Lcom/baidu/location/c/a$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/a$b;->c5:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/c/a$b;->c7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/a$b;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "qt"

    iget-object v3, p0, Lcom/baidu/location/c/a$b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/c/a$b;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "req"

    iget-object v3, p0, Lcom/baidu/location/c/a$b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/a$b;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/baidu/location/c/e;

    invoke-direct {p1, p0}, Lcom/baidu/location/c/e;-><init>(Lcom/baidu/location/c/a$b;)V

    invoke-virtual {p1}, Lcom/baidu/location/c/e;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/c/a$b;->g:Z

    invoke-direct {p0}, Lcom/baidu/location/c/a$b;->b()V

    :goto_0
    return-void
.end method
