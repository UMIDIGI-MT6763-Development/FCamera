.class Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONException;

.field final synthetic b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->a:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;->d:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;->b:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1$2;->a:Lorg/json/JSONException;

    const/4 v4, 0x0

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
