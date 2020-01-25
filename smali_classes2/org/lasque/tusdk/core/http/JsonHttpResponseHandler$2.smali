.class Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;[BILjava/util/List;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->a:[B

    iput p3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iput-object p4, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    iput-object p5, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->a:[B

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    new-instance v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;-><init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    new-instance v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$2;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$2;-><init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
