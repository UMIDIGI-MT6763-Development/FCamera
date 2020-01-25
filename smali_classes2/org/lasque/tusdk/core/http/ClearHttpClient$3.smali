.class Lorg/lasque/tusdk/core/http/ClearHttpClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/ClearHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lorg/lasque/tusdk/core/http/ClearHttpClient;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/ClearHttpClient;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->c:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->a:Ljava/util/List;

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->c:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->a:Ljava/util/List;

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;->b:Z

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/ClearHttpClient;Ljava/util/List;Z)V

    return-void
.end method
