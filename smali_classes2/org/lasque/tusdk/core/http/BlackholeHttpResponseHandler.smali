.class public Lorg/lasque/tusdk/core/http/BlackholeHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
    .locals 0
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

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onPostProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public onPreProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onRetry(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(ILjava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation

    return-void
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
