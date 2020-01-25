.class Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_2
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->e:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget v2, v2, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->b:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->b:Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;->c:Ljava/util/List;

    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2$1;->a:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
