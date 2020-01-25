.class public Lorg/lasque/tusdk/core/network/TuSdkHttp;
.super Lorg/lasque/tusdk/core/http/ClearHttpClient;


# static fields
.field public static final Content_Disposition:Ljava/lang/String; = "Content-Disposition"


# instance fields
.field private a:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;-><init>(I)V

    new-instance p1, Lorg/lasque/tusdk/core/http/BlackholeHttpResponseHandler;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/http/BlackholeHttpResponseHandler;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttp;->a:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    return-void
.end method

.method public static attachmentFileName(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v2, "Content-Disposition"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;->equalsName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attachment; filename=(.*)$"

    invoke-static {p0, v1}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/lasque/tusdk/core/network/TuSdkHttp;->a:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/lasque/tusdk/core/network/TuSdkHttp;->a:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method
