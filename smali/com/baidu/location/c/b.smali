.class public final Lcom/baidu/location/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/b$a;,
        Lcom/baidu/location/c/b$b;
    }
.end annotation


# static fields
.field private static final ff:I = 0x2710

.field private static fh:Lcom/baidu/location/c/b; = null

.field private static final fj:Ljava/lang/String;

.field private static final fk:I = 0x6

.field private static final fp:Ljava/lang/String; = "bdcltb09"

.field private static final fu:Ljava/lang/String; = "wof"

.field private static final fw:I = 0x7d0


# instance fields
.field private fg:Landroid/os/Handler;

.field private fi:D

.field private fl:D

.field private fm:D

.field private fn:Ljava/lang/String;

.field private fo:Z

.field private volatile fq:Z

.field private fr:D

.field private fs:D

.field private ft:Ljava/lang/String;

.field private fv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/baidu/tempdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c/b;->fj:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/b;->fn:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->fo:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->fv:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/c/b;->fi:D

    iput-wide v2, p0, Lcom/baidu/location/c/b;->fs:D

    iput-wide v2, p0, Lcom/baidu/location/c/b;->fr:D

    iput-wide v2, p0, Lcom/baidu/location/c/b;->fm:D

    iput-wide v2, p0, Lcom/baidu/location/c/b;->fl:D

    iput-boolean v1, p0, Lcom/baidu/location/c/b;->fq:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/baidu/tempdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ls.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/c/b;->fg:Landroid/os/Handler;

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/c/b;->fj:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private aY()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "wof"

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "bdcltb09"

    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v2, v2, v6

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v8

    :goto_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    new-instance v5, Lcom/baidu/location/c/b$a;

    invoke-direct {v5, p0, v0}, Lcom/baidu/location/c/b$a;-><init>(Lcom/baidu/location/c/b;Lcom/baidu/location/c/f;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v5, v0}, Lcom/baidu/location/c/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static aZ()Lcom/baidu/location/c/b;
    .locals 1

    sget-object v0, Lcom/baidu/location/c/b;->fh:Lcom/baidu/location/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/b;

    invoke-direct {v0}, Lcom/baidu/location/c/b;-><init>()V

    sput-object v0, Lcom/baidu/location/c/b;->fh:Lcom/baidu/location/c/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/c/b;->fh:Lcom/baidu/location/c/b;

    return-object v0
.end method

.method static synthetic do(Lcom/baidu/location/c/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic do(Lcom/baidu/location/c/b;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b;->try(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private do(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/b;->fn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/location/c/b;->if(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/c/b;->ft:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    move-object v1, p1

    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/baidu/location/c/b;->if(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/b;->aY()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/c/b;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/c/b;Ljava/lang/String;Lcom/baidu/location/h/h;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/b;->if(Ljava/lang/String;Lcom/baidu/location/h/h;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/c/b;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/c/b;->do(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private if(Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_a

    const-string v2, "wf"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x1c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v0, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v6, v5, Landroid/net/wifi/ScanResult;->level:I

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x6

    if-le v4, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/location/Jni;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select * from wof where id = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v9, 0x0

    const-wide v11, 0x407b01fb15b573ebL    # 432.1238

    const-wide v13, 0x405c4f089a027525L    # 113.2349

    const/4 v15, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    sub-double/2addr v9, v13

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    sub-double v16, v16, v11

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v27, v3

    move v3, v15

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v27, 0x0

    :goto_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    if-nez v3, :cond_6

    const-string v3, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v7

    add-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "bc"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cc"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "id"

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wof"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_6
    if-nez v8, :cond_7

    goto/16 :goto_0

    :cond_7
    new-array v3, v15, [F

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v24

    move-wide/from16 v18, v16

    move-wide/from16 v20, v9

    move-object/from16 v26, v3

    invoke-static/range {v18 .. v26}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v7, 0x0

    aget v3, v3, v7

    const v18, 0x44bb8000    # 1500.0f

    cmpl-float v3, v3, v18

    if-lez v3, :cond_9

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0xa

    if-le v8, v3, :cond_8

    move/from16 v3, v27

    mul-int/lit8 v3, v3, 0x3

    if-le v8, v3, :cond_8

    const-string v3, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    add-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    add-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "bc"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cc"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_8
    const-string v3, "cc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_9
    move/from16 v3, v27

    int-to-double v7, v3

    mul-double/2addr v9, v7

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v18

    add-double v9, v9, v18

    add-int/lit8 v3, v3, 0x1

    int-to-double v11, v3

    div-double/2addr v9, v11

    mul-double v16, v16, v7

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    add-double v16, v16, v7

    div-double v16, v16, v11

    const-string v7, "mktime"

    add-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "time"

    const-wide v8, 0x407b01fb15b573ebL    # 432.1238

    add-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "bc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    const-string v3, "wof"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id = \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-void
.end method

.method private if(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c/b;->fn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/b;->fo:Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from bdcltb09 where id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object p1, p0, Lcom/baidu/location/c/b;->fn:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x40934dbaacd9e83eL    # 1235.4323

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/baidu/location/c/b;->fs:D

    const/4 p2, 0x2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x40b0e60000000000L    # 4326.0

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/baidu/location/c/b;->fi:D

    const/4 p2, 0x3

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x40a27ea4b5dcc63fL    # 2367.3217

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/baidu/location/c/b;->fr:D

    iput-boolean p1, p0, Lcom/baidu/location/c/b;->fo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_3

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    throw p1

    :catch_1
    if-eqz v0, :cond_3

    goto :goto_0

    :catch_2
    :cond_3
    :goto_1
    return-void
.end method

.method private if(Ljava/lang/String;Lcom/baidu/location/h/h;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    invoke-virtual {p2}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/m;->bf()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x1c

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p2}, Lcom/baidu/location/h/h;->dA()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xa1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne p1, v3, :cond_3

    const-string p1, "content"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "clf"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v0, "clf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "point"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v0, "radius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    move v0, p1

    move-wide v10, v4

    move v4, v3

    move-wide v2, v10

    goto :goto_0

    :cond_1
    const-string p1, "\\|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    move v0, p1

    move v4, v3

    move-wide v2, v5

    :goto_0
    move-wide v5, v8

    goto :goto_1

    :cond_2
    move-wide v2, v5

    goto :goto_1

    :cond_3
    const/16 v2, 0xa7

    if-ne p1, v2, :cond_2

    const-string p1, "bdcltb09"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz v4, :cond_4

    return-void

    :cond_4
    const-wide v8, 0x40934dbaacd9e83eL    # 1235.4323

    add-double/2addr v2, v8

    const-wide v8, 0x40a27ea4b5dcc63fL    # 2367.3217

    add-double/2addr v5, v8

    const p1, 0x45873000    # 4326.0f

    add-float/2addr v0, p1

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "time"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "tag"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "type"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "ac"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    const-string v0, "bdcltb09"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p1, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bdcltb09"

    invoke-virtual {p3, p2, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private if(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/location/c/b;->fv:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_12

    if-nez p1, :cond_1

    goto/16 :goto_b

    :cond_1
    const/16 v3, 0x8

    new-array v4, v3, [D

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    const/16 v9, 0xa

    if-le v7, v9, :cond_2

    goto :goto_1

    :cond_2
    if-lez v7, :cond_3

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/location/Jni;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select * from wof where id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ");"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v7, 0x0

    move v0, v2

    move v5, v0

    move v10, v5

    move-wide v11, v7

    move-wide v8, v11

    move v7, v10

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_f

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    const-wide v17, 0x405c4f089a027525L    # 113.2349

    sub-double v15, v15, v17

    const/4 v13, 0x2

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    const-wide v19, 0x407b01fb15b573ebL    # 432.1238

    sub-double v17, v17, v19

    const/4 v13, 0x4

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v13, 0x5

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-le v13, v3, :cond_5

    if-le v13, v2, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v28, v4

    goto :goto_4

    :cond_5
    iget-boolean v2, v1, Lcom/baidu/location/c/b;->fo:Z

    if-eqz v2, :cond_7

    new-array v2, v14, [F

    move-object/from16 v28, v4

    iget-wide v3, v1, Lcom/baidu/location/c/b;->fr:D

    iget-wide v13, v1, Lcom/baidu/location/c/b;->fs:D

    move-wide/from16 v19, v17

    move-wide/from16 v21, v15

    move-wide/from16 v23, v3

    move-wide/from16 v25, v13

    move-object/from16 v27, v2

    invoke-static/range {v19 .. v27}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    iget-wide v13, v1, Lcom/baidu/location/c/b;->fi:D

    const-wide v19, 0x409f400000000000L    # 2000.0

    add-double v13, v13, v19

    cmpl-double v2, v2, v13

    if-lez v2, :cond_6

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_6
    add-double/2addr v11, v15

    add-double v8, v8, v17

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v28, v4

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    new-array v4, v3, [F

    int-to-double v13, v10

    div-double v23, v8, v13

    div-double v25, v11, v13

    move-wide/from16 v19, v17

    move-wide/from16 v21, v15

    move-object/from16 v27, v4

    invoke-static/range {v19 .. v27}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v4, v4, v3

    cmpl-float v2, v4, v2

    if-lez v2, :cond_8

    goto :goto_3

    :goto_4
    move-object/from16 v4, v28

    const/4 v2, 0x0

    const/16 v3, 0x8

    goto/16 :goto_2

    :cond_8
    move v3, v0

    const/16 v0, 0x8

    const/4 v2, 0x4

    :goto_5
    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    if-nez v5, :cond_a

    add-int/lit8 v2, v7, 0x1

    aput-wide v15, v28, v7

    add-int/lit8 v3, v2, 0x1

    aput-wide v17, v28, v2

    move v7, v3

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v14, 0x0

    move v3, v0

    const/16 v0, 0x8

    goto :goto_8

    :cond_a
    move v3, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v7, :cond_c

    const/4 v4, 0x1

    new-array v13, v4, [F

    add-int/lit8 v4, v0, 0x1

    aget-wide v23, v28, v4

    aget-wide v25, v28, v0

    move-wide/from16 v19, v17

    move-wide/from16 v21, v15

    move-object/from16 v27, v13

    invoke-static/range {v19 .. v27}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v14, 0x0

    aget v13, v13, v14

    cmpg-float v13, v13, v2

    if-gez v13, :cond_b

    aget-wide v19, v28, v0

    add-double v11, v11, v19

    aget-wide v3, v28, v4

    add-double/2addr v8, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    :cond_b
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    if-eqz v3, :cond_d

    add-double/2addr v11, v15

    add-double v8, v8, v17

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x8

    :goto_7
    const/4 v2, 0x4

    goto :goto_8

    :cond_d
    const/16 v0, 0x8

    if-ge v7, v0, :cond_f

    add-int/lit8 v2, v7, 0x1

    aput-wide v15, v28, v7

    add-int/lit8 v4, v2, 0x1

    aput-wide v17, v28, v2

    move v7, v4

    goto :goto_7

    :goto_8
    if-le v10, v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v14

    move-object/from16 v4, v28

    move/from16 v29, v3

    move v3, v0

    move/from16 v0, v29

    goto/16 :goto_2

    :cond_f
    :goto_9
    if-lez v10, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/location/c/b;->fv:Z

    int-to-double v2, v10

    div-double/2addr v11, v2

    iput-wide v11, v1, Lcom/baidu/location/c/b;->fm:D

    div-double/2addr v8, v2

    iput-wide v8, v1, Lcom/baidu/location/c/b;->fl:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    if-eqz v6, :cond_12

    :goto_a
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_b

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_11

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_11
    throw v0

    :catch_1
    if-eqz v6, :cond_12

    goto :goto_a

    :catch_2
    :cond_12
    :goto_b
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/b;->fq:Z

    return p1
.end method

.method private try(Z)Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lcom/baidu/location/c/b;->fv:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/baidu/location/c/b;->fm:D

    iget-wide v5, p0, Lcom/baidu/location/c/b;->fl:D

    const-wide v7, 0x406ecccccccccccdL    # 246.4

    move v0, v4

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/c/b;->fo:Z

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/baidu/location/c/b;->fs:D

    iget-wide v5, p0, Lcom/baidu/location/c/b;->fr:D

    iget-wide v7, p0, Lcom/baidu/location/c/b;->fi:D

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/m;->bf()Z

    move-result v0

    move v9, v0

    move v0, v4

    goto :goto_1

    :cond_1
    move-wide v5, v1

    move-wide v7, v5

    move v0, v3

    :goto_0
    move v9, v0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/k;->ad()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v9, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/k;->ad()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v12, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/k;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"67\"}}"

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/k;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"63\"}}"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method


# virtual methods
.method public a0()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/c/b;->fg:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/c/f;

    invoke-direct {v1, p0}, Lcom/baidu/location/c/f;-><init>(Lcom/baidu/location/c/b;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public byte(Z)Lcom/baidu/location/BDLocation;
    .locals 11

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/h/h;->dA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v1

    iget-object v2, v1, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/location/c/b;->if(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v4, 0x42

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x400

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "&ofl=%f|%f|%f"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/location/h/f;->dl()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&wf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/baidu/location/h/f;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p1, "&uptype=oldoff"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/baidu/location/b/o;->fe:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/baidu/location/b/o;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public if(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;
    .locals 5

    const-string v0, "{\"result\":\"null\"}"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/c/g;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/location/c/g;-><init>(Lcom/baidu/location/c/b;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x7d0

    const/4 p2, 0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object p3

    const-string v2, "old offlineLocation Timeout Exception!"

    invoke-virtual {p3, v2}, Lcom/baidu/location/b/o;->j(Ljava/lang/String;)V

    :catch_1
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    new-instance p1, Lcom/baidu/location/BDLocation;

    invoke-direct {p1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object p1

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1
.end method

.method public if(Ljava/lang/String;Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;)V
    .locals 5

    invoke-virtual {p2}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/m;->bf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_3

    const-string v3, "wf"

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p3, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    if-nez v4, :cond_4

    move v3, v2

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/location/c/b;->fq:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iput-boolean v2, p0, Lcom/baidu/location/c/b;->fq:Z

    new-instance v0, Lcom/baidu/location/c/b$b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/baidu/location/c/b$b;-><init>(Lcom/baidu/location/c/b;Lcom/baidu/location/c/f;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-virtual {v0, v3}, Lcom/baidu/location/c/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
