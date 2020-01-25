.class Lcom/baidu/location/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/c/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/d;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/i;->b:Lcom/baidu/location/c/d;

    iput-object p2, p0, Lcom/baidu/location/c/i;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/location/BDLocation;
    .locals 11

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/i;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_7

    invoke-static {}, Lcom/baidu/location/c/d;->else()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/baidu/location/c/d;->ab:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/c/i;->b:Lcom/baidu/location/c/d;

    invoke-static {v2}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/c/d;)Lcom/baidu/location/c/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/c/j;->o()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    move v1, v3

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    invoke-static {}, Lcom/baidu/location/c/d;->else()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v4, :cond_4

    :try_start_0
    invoke-static {}, Lcom/baidu/location/c/d;->else()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/location/c/d;->for(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/location/c/i;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/c/h;->a(Landroid/database/Cursor;)Lcom/baidu/location/BDLocation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    throw v0

    :catch_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/baidu/location/c/h$a;

    iget-object v3, p0, Lcom/baidu/location/c/i;->a:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/baidu/location/c/h$a;-><init>([Ljava/lang/String;)V

    :try_start_3
    iget-object v3, p0, Lcom/baidu/location/c/i;->b:Lcom/baidu/location/c/d;

    invoke-static {v3}, Lcom/baidu/location/c/d;->do(Lcom/baidu/location/c/d;)Lcom/baidu/location/c/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/h$a;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/c/h;->a(Landroid/database/Cursor;)Lcom/baidu/location/BDLocation;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_5
    throw v0

    :catch_3
    if-eqz v1, :cond_6

    goto :goto_2

    :catch_4
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x43

    if-eq v1, v2, :cond_7

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_7
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/BDLocation;

    move-result-object v0

    return-object v0
.end method
