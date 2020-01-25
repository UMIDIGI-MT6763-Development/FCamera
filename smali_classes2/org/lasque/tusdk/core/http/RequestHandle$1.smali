.class Lorg/lasque/tusdk/core/http/RequestHandle$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/http/ClearHttpRequest;

.field final synthetic b:Z

.field final synthetic c:Lorg/lasque/tusdk/core/http/RequestHandle;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/RequestHandle;Lorg/lasque/tusdk/core/http/ClearHttpRequest;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/RequestHandle$1;->c:Lorg/lasque/tusdk/core/http/RequestHandle;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/RequestHandle$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/http/RequestHandle$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/http/RequestHandle$1;->b:Z

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->cancel(Z)Z

    return-void
.end method
