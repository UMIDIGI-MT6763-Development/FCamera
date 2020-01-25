.class Lcom/baidu/location/c/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/a$b;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_16

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->c6:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->c6:Lorg/apache/http/HttpEntity;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "model"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "model"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    :try_start_2
    const-string v0, "rgc"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "rgc"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v6, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v6, v6, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v6}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v6, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v6, v6, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v6}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v6, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v6, v6, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v6}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Lcom/baidu/location/c/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/location/c/d;->l()Lcom/baidu/location/c/k;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/location/c/k;->a(Lorg/json/JSONObject;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;J)J

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "bdlist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "bdlist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {v6}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;)Lcom/baidu/location/c/a;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;[Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    const-string v0, "loadurl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {v0}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;)Lcom/baidu/location/c/a;

    move-result-object v0

    const-string v6, "loadurl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loadurl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "module"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadurl"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "req"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v7, v4}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v4, 0x28

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x2c

    if-eqz v5, :cond_12

    const-string v14, "cell"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v14, "cell"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v17, 0x1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    cmpl-double v6, v27, v8

    if-lez v6, :cond_a

    if-eqz v22, :cond_9

    const/16 v22, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v25, 0x3e8

    div-long v8, v27, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_a
    if-eqz v21, :cond_b

    const/16 v21, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v20, v20, 0x1

    :goto_9
    move/from16 v0, v19

    move/from16 v6, v20

    const/16 v8, 0x64

    if-lt v7, v8, :cond_c

    iget-object v8, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v8, v8, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v8}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    aput-object v12, v4, v11

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v7, v7, -0x64

    move/from16 v17, v7

    const/16 v4, 0x64

    const/16 v18, 0x1

    goto :goto_a

    :cond_c
    move/from16 v17, v7

    move v4, v8

    :goto_a
    if-lt v0, v4, :cond_d

    iget-object v4, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v4, v4, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v4}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v7, "INSERT OR REPLACE INTO CL (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v0, v0, -0x64

    move/from16 v19, v0

    const/16 v0, 0x64

    const/16 v22, 0x1

    goto :goto_b

    :cond_d
    move/from16 v19, v0

    move v0, v4

    :goto_b
    if-lt v6, v0, :cond_e

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v6, v6, -0x64

    move/from16 v20, v6

    const/16 v21, 0x1

    goto :goto_c

    :cond_e
    move/from16 v20, v6

    :goto_c
    const/16 v4, 0x28

    const-wide/16 v8, 0x0

    const/16 v11, 0x2c

    goto/16 :goto_5

    :cond_f
    if-lez v17, :cond_10

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    if-lez v19, :cond_11

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "INSERT OR REPLACE INTO CL (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    if-lez v20, :cond_12

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    if-eqz v5, :cond_1d

    const-string v0, "ap"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "ap"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v10, ","

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x3

    aget-object v10, v10, v17

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    if-eqz v8, :cond_13

    move-object/from16 v18, v0

    const/4 v8, 0x0

    goto :goto_e

    :cond_13
    move-object/from16 v18, v0

    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmpl-double v0, v19, v21

    if-lez v0, :cond_15

    if-eqz v13, :cond_14

    const/16 v0, 0x2c

    const/16 v10, 0x28

    const/4 v13, 0x0

    goto :goto_f

    :cond_14
    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v10, 0x28

    :goto_f
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v19, 0x3e8

    div-long v14, v14, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    const/16 v14, 0x64

    const/16 v15, 0x2c

    goto :goto_11

    :cond_15
    const/16 v0, 0x29

    const/16 v10, 0x28

    const-wide/16 v19, 0x3e8

    if-eqz v12, :cond_16

    const/4 v12, 0x0

    const/16 v15, 0x2c

    goto :goto_10

    :cond_16
    const/16 v15, 0x2c

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_10
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x64

    :goto_11
    if-lt v7, v14, :cond_17

    iget-object v8, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v8, v8, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v8}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v14, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v10, v15

    invoke-static {v14, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v7, v7, -0x64

    const/16 v0, 0x64

    const/4 v8, 0x1

    goto :goto_12

    :cond_17
    move v0, v14

    :goto_12
    if-lt v9, v0, :cond_18

    iget-object v10, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v10, v10, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v10}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v13, "INSERT OR REPLACE INTO AP (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v2

    const/4 v2, 0x0

    aput-object v14, v15, v2

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v9, v9, -0x64

    const/4 v13, 0x1

    goto :goto_13

    :cond_18
    move-object/from16 v24, v2

    :goto_13
    if-lez v11, :cond_19

    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v10, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, v18

    move-object/from16 v2, v24

    const/4 v10, 0x3

    goto/16 :goto_d

    :cond_1a
    if-lez v7, :cond_1b

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v8, v7

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1b
    if-lez v9, :cond_1c

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "INSERT OR REPLACE INTO AP (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v7, v6

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1c
    if-lez v11, :cond_1d

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY timestamp DESC, frequency DESC LIMIT %d);"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "AP"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "AP"

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const v3, 0x30d40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY timestamp DESC, frequency DESC LIMIT %d);"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v4, "CL"

    const/4 v8, 0x0

    aput-object v4, v6, v8

    const-string v4, "CL"

    const/4 v8, 0x1

    aput-object v4, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY frequency DESC LIMIT %d);"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "AP"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "AP"

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY frequency DESC LIMIT %d);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "CL"

    const/4 v8, 0x0

    aput-object v6, v4, v8

    const-string v6, "CL"

    const/4 v8, 0x1

    aput-object v6, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v5, :cond_1e

    const-string v0, "ap"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "cell"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {v0}, Lcom/baidu/location/c/a$b;->b(Lcom/baidu/location/c/a$b;)V

    :cond_1e
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1f
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_14

    :catch_3
    :try_start_4
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {v0}, Lcom/baidu/location/c/a$b;->b(Lcom/baidu/location/c/a$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_20
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_14
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v0, v0, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_21
    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/baidu/location/c/a$b;->c6:Lorg/apache/http/HttpEntity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;Z)Z

    return-void

    :goto_15
    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_22
    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    iget-object v2, v2, Lcom/baidu/location/c/a$b;->b:Lcom/baidu/location/c/a;

    invoke-static {v2}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_23
    iget-object v2, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/baidu/location/c/a$b;->c6:Lorg/apache/http/HttpEntity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;Z)Z

    throw v0

    :cond_24
    :goto_16
    const/4 v3, 0x0

    iget-object v0, v1, Lcom/baidu/location/c/e;->a:Lcom/baidu/location/c/a$b;

    invoke-static {v0, v3}, Lcom/baidu/location/c/a$b;->a(Lcom/baidu/location/c/a$b;Z)Z

    return-void
.end method
