.class final Lcom/baidu/location/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/j$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/baidu/location/c/d;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/baidu/location/c/j$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D

.field private t:I

.field private u:Z

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method constructor <init>(Lcom/baidu/location/c/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/j;->u:Z

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/baidu/location/c/j;->v:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/baidu/location/c/j;->w:J

    iput-wide v0, p0, Lcom/baidu/location/c/j;->x:J

    iput-wide v0, p0, Lcom/baidu/location/c/j;->y:J

    iput-wide v0, p0, Lcom/baidu/location/c/j;->z:J

    iput-object p1, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->e:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->f:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->g:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->h:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->i:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->k:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/location/c/j;->l:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/location/c/j;->m:I

    iput v0, p0, Lcom/baidu/location/c/j;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/j;->o:D

    iput-wide v0, p0, Lcom/baidu/location/c/j;->p:D

    iput-wide v0, p0, Lcom/baidu/location/c/j;->q:D

    iput-wide v0, p0, Lcom/baidu/location/c/j;->r:D

    iput-wide v0, p0, Lcom/baidu/location/c/j;->s:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/baidu/location/c/j;->t:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/c/j;->j:[Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance p1, Lcom/baidu/location/c/j$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/baidu/location/c/j$a;-><init>(Lcom/baidu/location/c/j;Lcom/baidu/location/c/j$1;)V

    iput-object p1, p0, Lcom/baidu/location/c/j;->d:Lcom/baidu/location/c/j$a;

    iget-object p1, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS BLACK (name VARCHAR(100) PRIMARY KEY);"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/c/j;->g()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/j;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->o:D

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/j;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/j;->l:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/location/c/j;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->z:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/baidu/location/c/j;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/j;->j:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/c/j;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->p:D

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/j;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/j;->n:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/c/j;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->y:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/c/j;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->q:D

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/c/j;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/j;->m:I

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/c/j;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->v:J

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/c/j;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->r:D

    return-wide p1
.end method

.method static synthetic d(Lcom/baidu/location/c/j;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/j;->t:I

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/c/j;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->w:J

    return-wide p1
.end method

.method static synthetic d(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/baidu/location/c/j;D)D
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->s:D

    return-wide p1
.end method

.method static synthetic e(Lcom/baidu/location/c/j;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/j;->x:J

    return-wide p1
.end method

.method static synthetic e(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->i:Z

    return p1
.end method

.method static synthetic f(Lcom/baidu/location/c/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/j;->k:Z

    return p0
.end method

.method static synthetic f(Lcom/baidu/location/c/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/j;->k:Z

    return p1
.end method

.method static synthetic g(Lcom/baidu/location/c/j;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/c/j;->l:I

    return p0
.end method

.method static synthetic h(Lcom/baidu/location/c/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->o:D

    return-wide v0
.end method

.method static synthetic i(Lcom/baidu/location/c/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->p:D

    return-wide v0
.end method

.method static synthetic j(Lcom/baidu/location/c/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->q:D

    return-wide v0
.end method

.method static synthetic k(Lcom/baidu/location/c/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->r:D

    return-wide v0
.end method

.method static synthetic l(Lcom/baidu/location/c/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->s:D

    return-wide v0
.end method

.method static synthetic m(Lcom/baidu/location/c/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->z:J

    return-wide v0
.end method

.method static synthetic n(Lcom/baidu/location/c/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->y:J

    return-wide v0
.end method

.method static synthetic o(Lcom/baidu/location/c/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->v:J

    return-wide v0
.end method

.method static synthetic p(Lcom/baidu/location/c/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->w:J

    return-wide v0
.end method

.method static synthetic q(Lcom/baidu/location/c/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->x:J

    return-wide v0
.end method

.method static synthetic r(Lcom/baidu/location/c/j;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/c/j;->n:I

    return p0
.end method

.method static synthetic s(Lcom/baidu/location/c/j;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/c/j;->m:I

    return p0
.end method

.method static synthetic t(Lcom/baidu/location/c/j;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/c/j;->t:I

    return p0
.end method

.method static synthetic u(Lcom/baidu/location/c/j;)Lcom/baidu/location/c/d;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/d;

    return-object p0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/j;->t:I

    return v0
.end method

.method a(Ljava/lang/String;)J
    .locals 2

    const-string v0, "2G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/location/c/j;->v:J

    goto :goto_0

    :cond_0
    const-string v0, "3G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/location/c/j;->w:J

    goto :goto_0

    :cond_1
    const-string v0, "4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->x:J

    goto :goto_0

    :cond_2
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/baidu/location/c/j;->y:J

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/baidu/location/c/j;->z:J

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1388

    :goto_0
    return-wide v0
.end method

.method a([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, "(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_2

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "INSERT OR IGNORE INTO BLACK VALUES %s;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->o:D

    return-wide v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SELECT * FROM BLACK WHERE NAME IN (\"%s\");"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    move v4, v2

    :cond_0
    if-eqz v0, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    throw p1

    :catch_1
    if-eqz v0, :cond_2

    goto :goto_0

    :catch_2
    :cond_2
    :goto_1
    return v4
.end method

.method c()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->p:D

    return-wide v0
.end method

.method d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->q:D

    return-wide v0
.end method

.method e()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->r:D

    return-wide v0
.end method

.method f()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/j;->s:D

    return-wide v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/j;->d:Lcom/baidu/location/c/j$a;

    invoke-static {v0}, Lcom/baidu/location/c/j$a;->a(Lcom/baidu/location/c/j$a;)V

    return-void
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->e:Z

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->g:Z

    return v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->h:Z

    return v0
.end method

.method k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->f:Z

    return v0
.end method

.method l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->k:Z

    return v0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/j;->u:Z

    return v0
.end method

.method n()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/j;->l:I

    return v0
.end method

.method o()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/j;->j:[Ljava/lang/String;

    return-object v0
.end method

.method p()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/j;->n:I

    return v0
.end method

.method q()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/j;->m:I

    return v0
.end method
