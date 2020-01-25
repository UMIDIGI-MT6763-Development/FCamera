.class Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;
.super Lorg/lasque/tusdk/core/http/HttpEntityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/http/ClearHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/io/PushbackInputStream;

.field c:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;-><init>(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->c:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-super {p0}, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->a:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->a:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->b:Ljava/io/PushbackInputStream;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->b:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->c:Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->c:Ljava/util/zip/GZIPInputStream;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->b:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;->mWrappedEntity:Lorg/lasque/tusdk/core/http/HttpEntity;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
