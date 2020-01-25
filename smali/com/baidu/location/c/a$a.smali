.class Lcom/baidu/location/c/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/c/a;

.field private c:Ljava/lang/Long;

.field private d:Lcom/baidu/location/BDLocation;

.field private e:Lcom/baidu/location/BDLocation;

.field private f:Lcom/baidu/location/BDLocation;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/a;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/location/c/a$a;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/baidu/location/c/a$a;->d:Lcom/baidu/location/BDLocation;

    iput-object p5, p0, Lcom/baidu/location/c/a$a;->e:Lcom/baidu/location/BDLocation;

    iput-object p6, p0, Lcom/baidu/location/c/a$a;->f:Lcom/baidu/location/BDLocation;

    iput-object p7, p0, Lcom/baidu/location/c/a$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/location/c/a$a;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/a;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/baidu/location/c/c;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/baidu/location/c/a$a;-><init>(Lcom/baidu/location/c/a;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    iget-object v1, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/c/a$a;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/baidu/location/c/a$a;->d:Lcom/baidu/location/BDLocation;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    invoke-static {v0, v1}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    iget-object v2, p0, Lcom/baidu/location/c/a$a;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0, v2}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Ljava/util/LinkedHashMap;)V

    iget-object v3, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    iget-object v4, p0, Lcom/baidu/location/c/a$a;->f:Lcom/baidu/location/BDLocation;

    iget-object v5, p0, Lcom/baidu/location/c/a$a;->d:Lcom/baidu/location/BDLocation;

    iget-object v6, p0, Lcom/baidu/location/c/a$a;->e:Lcom/baidu/location/BDLocation;

    iget-object v7, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/location/c/a$a;->c:Ljava/lang/Long;

    invoke-static/range {v3 .. v8}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->b:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->j()Lcom/baidu/location/c/q;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/c/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/location/c/q;->a(Ljava/lang/String;)V

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/c/a$a;->h:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->c:Ljava/lang/Long;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->d:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->e:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/c/a$a;->f:Lcom/baidu/location/BDLocation;

    return-void
.end method
