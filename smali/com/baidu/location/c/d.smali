.class public final Lcom/baidu/location/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/d$b;,
        Lcom/baidu/location/c/d$c;,
        Lcom/baidu/location/c/d$a;
    }
.end annotation


# static fields
.field static final ab:Ljava/lang/String; = "com.baidu.lbs.offlinelocationprovider"

.field private static final ad:Ljava/lang/String; = "http://180.149.144.31:8091/offline_loc"

.field private static final ae:Ljava/lang/String; = "com.baidu.lbs.offlinelocationprovider"

.field private static final ag:Ljava/lang/String; = "ofld"

.field public static final ai:Ljava/lang/String; = "1"

.field static final ak:Ljava/lang/String; = "http://loc.map.baidu.com/offline_loc"

.field private static final am:Ljava/lang/String; = "http://loc.map.baidu.com/offline_loc"

.field private static an:Landroid/content/Context; = null

.field public static final ao:Ljava/lang/String; = "oflv2"

.field public static final ap:Ljava/lang/String; = "oflv1"

.field private static aq:Lcom/baidu/location/c/d; = null

.field private static final ar:Ljava/lang/String; = "content://%s/"

.field private static final as:Ljava/lang/String; = "com.baidu.lbs.offlinelocationprovider.debug"

.field private static final at:I = 0x7d0


# instance fields
.field private final ac:Lcom/baidu/location/c/j;

.field private final af:Ljava/io/File;

.field private final ah:Lcom/baidu/location/c/k;

.field private final aj:Lcom/baidu/location/c/q;

.field private final al:Lcom/baidu/location/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ofld"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/baidu/location/c/d;->af:Ljava/io/File;

    new-instance v0, Lcom/baidu/location/c/a;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/a;-><init>(Lcom/baidu/location/c/d;)V

    iput-object v0, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    new-instance v0, Lcom/baidu/location/c/q;

    iget-object v1, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/c/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/baidu/location/c/d;->aj:Lcom/baidu/location/c/q;

    new-instance v0, Lcom/baidu/location/c/j;

    iget-object v1, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c/j;-><init>(Lcom/baidu/location/c/d;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    new-instance v0, Lcom/baidu/location/c/k;

    iget-object v1, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v2}, Lcom/baidu/location/c/j;->n()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/location/c/k;-><init>(Lcom/baidu/location/c/d;Landroid/database/sqlite/SQLiteDatabase;I)V

    iput-object v0, p0, Lcom/baidu/location/c/d;->ah:Lcom/baidu/location/c/k;

    return-void
.end method

.method private do([Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .locals 6

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/c/i;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/c/i;-><init>(Lcom/baidu/location/c/d;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/BDLocation;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v1

    const-string v2, "offlineLocation Timeout Exception!"

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/o;->j(Ljava/lang/String;)V

    :catch_1
    invoke-virtual {p1, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    return-object v3

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1
.end method

.method static synthetic do(Lcom/baidu/location/c/d;)Lcom/baidu/location/c/a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    return-object p0
.end method

.method static synthetic else()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic for(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/c/d;->int(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/c/d;)Lcom/baidu/location/c/j;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    return-object p0
.end method

.method public static if(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p0

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/baidu/location/b/c;->do(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final int(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const-string v0, "content://%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private int()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->g()V

    return-void
.end method

.method public static try()Lcom/baidu/location/c/d;
    .locals 2

    sget-object v0, Lcom/baidu/location/c/d;->aq:Lcom/baidu/location/c/d;

    if-nez v0, :cond_2

    const-class v0, Lcom/baidu/location/c/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/c/d;->aq:Lcom/baidu/location/c/d;

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/c/d;->if(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Lcom/baidu/location/c/d;

    invoke-direct {v1}, Lcom/baidu/location/c/d;-><init>()V

    sput-object v1, Lcom/baidu/location/c/d;->aq:Lcom/baidu/location/c/d;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    sget-object v0, Lcom/baidu/location/c/d;->aq:Lcom/baidu/location/c/d;

    invoke-direct {v0}, Lcom/baidu/location/c/d;->int()V

    sget-object v0, Lcom/baidu/location/c/d;->aq:Lcom/baidu/location/c/d;

    return-object v0
.end method

.method private void()Z
    .locals 6

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/baidu/location/c/d;->ab:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v2}, Lcom/baidu/location/c/j;->o()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    move v1, v3

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    sget-object v4, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    return v3
.end method


# virtual methods
.method public byte()D
    .locals 4

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/c/d$a;->a:Lcom/baidu/location/c/d$a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v1, Lcom/baidu/location/c/d$a;->b:Lcom/baidu/location/c/d$a;

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    sget-object v1, Lcom/baidu/location/c/d$a;->e:Lcom/baidu/location/c/d$a;

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v1, Lcom/baidu/location/c/d$a;->d:Lcom/baidu/location/c/d$a;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Lcom/baidu/location/c/d$a;->c:Lcom/baidu/location/c/d$a;

    :cond_5
    :goto_2
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/baidu/location/c/d$a;->a:Lcom/baidu/location/c/d$a;

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->b()D

    move-result-wide v2

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/baidu/location/c/d$a;->b:Lcom/baidu/location/c/d$a;

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->c()D

    move-result-wide v2

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/baidu/location/c/d$a;->c:Lcom/baidu/location/c/d$a;

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->d()D

    move-result-wide v2

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/baidu/location/c/d$a;->d:Lcom/baidu/location/c/d$a;

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->e()D

    move-result-wide v2

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/baidu/location/c/d$a;->e:Lcom/baidu/location/c/d$a;

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->f()D

    move-result-wide v2

    :cond_a
    :goto_3
    return-wide v2
.end method

.method public case()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->j()Z

    move-result v0

    return v0
.end method

.method public char()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/location/c/d;->an:Landroid/content/Context;

    return-object v0
.end method

.method d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->af:Ljava/io/File;

    return-object v0
.end method

.method public do(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0, p1}, Lcom/baidu/location/c/j;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->i()Z

    move-result v0

    return v0
.end method

.method public for([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lcom/baidu/location/c/h$a;

    invoke-direct {v0, p1}, Lcom/baidu/location/c/h$a;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    invoke-virtual {p1, v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/h$a;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->k()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->m()Z

    move-result v0

    return v0
.end method

.method public if(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0, p1}, Lcom/baidu/location/c/j;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;
    .locals 8

    sget-object v0, Lcom/baidu/location/c/d$c;->do:Lcom/baidu/location/c/d$c;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    iget-object p4, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {p4}, Lcom/baidu/location/c/j;->a()I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/c;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mixMode=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, p4

    move-object v5, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/baidu/location/b/c;->O()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v7, v1

    :goto_0
    sget-object p4, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    if-ne p5, p4, :cond_1

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lcom/baidu/location/c/h;->a(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    if-lez p3, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/location/c/d;->do([Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    :cond_2
    return-object p2
.end method

.method j()Lcom/baidu/location/c/q;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->aj:Lcom/baidu/location/c/q;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->aj:Lcom/baidu/location/c/q;

    invoke-virtual {v0}, Lcom/baidu/location/c/q;->a()V

    return-void
.end method

.method l()Lcom/baidu/location/c/k;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ah:Lcom/baidu/location/c/k;

    return-object v0
.end method

.method public long()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->h()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->l()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/d;->void()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/d;->al:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->b()V

    :cond_0
    return-void
.end method

.method new()Lcom/baidu/location/c/j;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/d;->ac:Lcom/baidu/location/c/j;

    return-object v0
.end method
