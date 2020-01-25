.class public interface abstract Lorg/lasque/tusdk/core/http/HttpEntity;
.super Ljava/lang/Object;


# virtual methods
.method public abstract consumeContent()V
.end method

.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
.end method

.method public abstract isChunked()Z
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
