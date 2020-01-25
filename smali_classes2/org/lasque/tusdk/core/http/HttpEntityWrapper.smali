.class public Lorg/lasque/tusdk/core/http/HttpEntityWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpEntity;


# instance fields
.field protected mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/http/HttpEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrapped entity must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->consumeWrappedEntity()V

    return-void
.end method

.method public consumeWrappedEntity()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
