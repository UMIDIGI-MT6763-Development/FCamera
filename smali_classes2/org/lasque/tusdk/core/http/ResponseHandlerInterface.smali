.class public interface abstract Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getRequestHeaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestURL()Ljava/net/URL;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getUsePoolThread()Z
.end method

.method public abstract getUseSynchronousMode()Z
.end method

.method public abstract onPostProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
.end method

.method public abstract onPreProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
.end method

.method public abstract sendCancelMessage()V
.end method

.method public abstract sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendFinishMessage()V
.end method

.method public abstract sendProgressMessage(JJ)V
.end method

.method public abstract sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V
.end method

.method public abstract sendRetryMessage(I)V
.end method

.method public abstract sendStartMessage()V
.end method

.method public abstract sendSuccessMessage(ILjava/util/List;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract setRequestHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRequestURL(Ljava/net/URL;)V
.end method

.method public abstract setTag(Ljava/lang/Object;)V
.end method

.method public abstract setUsePoolThread(Z)V
.end method

.method public abstract setUseSynchronousMode(Z)V
.end method
