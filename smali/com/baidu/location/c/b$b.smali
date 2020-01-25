.class Lcom/baidu/location/c/b$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/b;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b$b;-><init>(Lcom/baidu/location/c/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    invoke-static {p1, v1}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/c/b;Z)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    invoke-static {v2}, Lcom/baidu/location/c/b;->do(Lcom/baidu/location/c/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    invoke-static {p1, v1}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/c/b;Z)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v3, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v2

    check-cast v5, Lcom/baidu/location/h/h;

    invoke-static {v3, v4, v5, v0}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/c/b;Ljava/lang/String;Lcom/baidu/location/h/h;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v3, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Lcom/baidu/location/h/f;

    const/4 v5, 0x3

    aget-object p1, p1, v5

    check-cast p1, Lcom/baidu/location/BDLocation;

    invoke-static {v3, v4, p1, v0}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/c/b;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p1, p0, Lcom/baidu/location/c/b$b;->a:Lcom/baidu/location/c/b;

    invoke-static {p1, v1}, Lcom/baidu/location/c/b;->if(Lcom/baidu/location/c/b;Z)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/c/b$b;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
