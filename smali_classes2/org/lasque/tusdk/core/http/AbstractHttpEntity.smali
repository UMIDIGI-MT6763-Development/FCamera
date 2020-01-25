.class public abstract Lorg/lasque/tusdk/core/http/AbstractHttpEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpEntity;


# static fields
.field protected static final OUTPUT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/lasque/tusdk/core/http/HttpHeader;

.field protected contentType:Lorg/lasque/tusdk/core/http/HttpHeader;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    return-void
.end method

.method public getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentEncoding:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-object v0
.end method

.method public getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentType:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->chunked:Z

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->setContentEncoding(Lorg/lasque/tusdk/core/http/HttpHeader;)V

    return-void
.end method

.method public setContentEncoding(Lorg/lasque/tusdk/core/http/HttpHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentEncoding:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->setContentType(Lorg/lasque/tusdk/core/http/HttpHeader;)V

    return-void
.end method

.method public setContentType(Lorg/lasque/tusdk/core/http/HttpHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentType:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentType:Lorg/lasque/tusdk/core/http/HttpHeader;

    const/16 v2, 0x2c

    if-eqz v1, :cond_0

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentType:Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentEncoding:Lorg/lasque/tusdk/core/http/HttpHeader;

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->contentEncoding:Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/http/AbstractHttpEntity;->chunked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
